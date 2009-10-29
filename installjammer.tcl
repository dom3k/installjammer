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

if {[info exists ::installkit::wrapped] && $::installkit::wrapped} {
    set conf(pwd) [file dirname [info nameofexecutable]]
    if {[file tail $conf(pwd)] eq "MacOS"} {
        set conf(pwd) [file join [file dirname $conf(pwd)] Resources]
    }
} else {
    set conf(pwd) [file dirname [info script]]
}

set conf(pwd) [file normalize $conf(pwd)]

source [file join $conf(pwd) lib main.tcl]
