#
# moo-chop Makefile
#
# Copyright (C) 2021 Michael Davies <michael@the-davies.net>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.
#

.PHONY: all

all: run-locally

container: build-container run-container

build-container:
	podman pull registry.access.redhat.com/ubi8/python-36
	buildah bud -t moo-chop .

run-container:
	podman run --rm -it -p 5000:5000 localhost/moo-chop

run-locally:
	FLASK_APP=app.py FLASK_ENV=development flask run --host=0.0.0.0
