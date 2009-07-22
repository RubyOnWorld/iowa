# $Id: extconf.rb 2358 2006-04-22 19:50:36Z francis $
#
#----------------------------------------------------------------------------
#
# Copyright (C) 2006 by Francis Cianfrocca. All Rights Reserved.
#
# Gmail: garbagecat10
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#
#---------------------------------------------------------------------------
#
# extconf.rb for Ruby/EventMachine
# We have to munge LDSHARED because this code needs a C++ link.
#

require 'mkmf'
CONFIG['LDSHARED'] = "$(CXX) -shared"
$LOCAL_LIBS << "-lpthread"
create_makefile "rubyhttpmachine"

