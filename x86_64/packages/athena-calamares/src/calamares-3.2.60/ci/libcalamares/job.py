#   SPDX-FileCopyrightText: no
#   SPDX-License-Identifier: CC0-1.0
#
# Stubs for part of the Python API from libcalamares
# (although the **actual** API is presented through
# Boost::Python, not as a bare C-extension) so that
# pylint doesn't complain about libcalamares internals.

configuration = dict()

def setprogress(_): pass

def pretty_name(): return ""

def working_path(): return ""
