#
# %CopyrightBegin%
#
# Copyright Ericsson AB 1996-2010. All Rights Reserved.
#
# The contents of this file are subject to the Erlang Public License,
# Version 1.1, (the "License"); you may not use this file except in
# compliance with the License. You should have received a copy of the
# Erlang Public License along with this software. If not, it can be
# retrieved online at http://www.erlang.org/.
#
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
#
# %CopyrightEnd%
#
#
include $(ERL_TOP)/make/target.mk
include $(ERL_TOP)/make/$(TARGET)/otp.mk

# ----------------------------------------------------
# Macros
# ----------------------------------------------------

SUB_DIRECTORIES = src examples priv doc/src 

include vsn.mk
VSN = $(INETS_VSN)

SPECIAL_TARGETS = 

# ----------------------------------------------------
# Default Subdir Targets
# ----------------------------------------------------
include $(ERL_TOP)/make/otp_subdir.mk

.PHONY: info gclean

info:
	@echo "OS:        $(OS)"
	@echo "DOCB:      $(DOCB)"
	@echo ""
	@echo "INETS_VSN: $(INETS_VSN)"
	@echo "APP_VSN:   $(APP_VSN)"
	@echo ""

gclean: 
	git clean -fXd
