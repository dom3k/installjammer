## $Id$
##
## BEGIN LICENSE BLOCK
##
## Copyright (C) 2002  Damon Courtney
## 
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License
## version 2 as published by the Free Software Foundation.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License version 2 for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the
##     Free Software Foundation, Inc.
##     51 Franklin Street, Fifth Floor
##     Boston, MA  02110-1301, USA.
##
## END LICENSE BLOCK

proc ::ThemeInit {} {
    global conf
    global info

    ## Create the main wizard.
    Wizard $info(Wizard) -transient 0 \
        -raisecommand [list RaiseStep %W %S] \
        -width [::InstallJammer::SubstText "<%WizardWidth%>"] \
        -height [::InstallJammer::SubstText "<%WizardHeight%>"] \
        -title [::InstallJammer::SubstText "<%InstallTitleText%>"] \
        -separatortext [::InstallJammer::SubstText "<%SeparatorText%>"]

    if {$conf(unix) && !$conf(osx)} {
        $info(Wizard) configure -bg [style configure . -background]
    }
}
