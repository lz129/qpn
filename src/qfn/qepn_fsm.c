/**
* @file
* @brief QEP-nano implementation.
* @ingroup qep
* @cond
******************************************************************************
* Last updated for version 6.8.0
* Last updated on  2020-03-08
*
*                    Q u a n t u m  L e a P s
*                    ------------------------
*                    Modern Embedded Software
*
* Copyright (C) 2005-2020 Quantum Leaps, LLC. All rights reserved.
*
* This program is open source software: you can redistribute it and/or
* modify it under the terms of the GNU General Public License as published
* by the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Alternatively, this program may be distributed and modified under the
* terms of Quantum Leaps commercial licenses, which expressly supersede
* the GNU General Public License and are specifically designed for
* licensees interested in retaining the proprietary status of their code.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <www.gnu.org/licenses>.
*
* Contact information:
* <www.state-machine.com/licensing>
* <info@state-machine.com>
******************************************************************************
* @endcond
*/
#include "qpn_conf.h" /* QP-nano configuration file (from the application) */
#include "qfn_port.h" /* QF-nano port from the port directory */
#include "qassert.h"  /* embedded systems-friendly assertions */

Q_DEFINE_THIS_MODULE("qepn_fsm")

/****************************************************************************/
char_t const Q_ROM QP_versionStr[7] = QP_VERSION_STR;

void QFsm_ctor(QFsm * const me, QStateHandler initial) {
    static QFsmVtable const vtable = { /* QFsm virtual table */
        &QFsm_init_,
        &QFsm_dispatch_
    };
    me->vptr  = &vtable;
    me->state = Q_STATE_CAST(0);
    me->temp  = initial;
}

void QFsm_init_(QFsm * const me) {
    /** @pre the virtual pointer must be initialized, the top-most initial
    * transition must be initialized, and the initial transition must not
    * be taken yet.
    */
    Q_REQUIRE_ID(200, (me->vptr != (QFsmVtable const *)0)
                      && (me->temp != Q_STATE_CAST(0))
                      && (me->state == Q_STATE_CAST(0)));

                                 /* execute the top-most initial transition */
    Q_ALLEGE((*me->temp)(me) == Q_RET_TRAN);    /* transition must be taken */

    Q_SIG(me) = (QSignal)Q_ENTRY_SIG;
    (void)(*me->temp)(me);                              /* enter the target */
    me->state = me->temp;                    /* change the new active state */
}

void QFsm_dispatch_(QFsm * const me) {
    /** @pre the current state must be initialized and
    * the state configuration must be stable
    */
    Q_REQUIRE_ID(400, (me->state != Q_STATE_CAST(0)) && (me->state == me->temp));

    if ((*me->state)(me) == Q_RET_TRAN) {              /* transition taken? */
        Q_SIG(me) = (QSignal)Q_EXIT_SIG;
        (void)(*me->state)(me);                          /* exit the source */

        Q_SIG(me) = (QSignal)Q_ENTRY_SIG;
        (void)(*me->temp)(me);                          /* enter the target */
        me->state = me->temp;                /* record the new active state */
    }
}