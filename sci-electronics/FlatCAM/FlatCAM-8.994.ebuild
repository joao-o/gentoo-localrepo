# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{2_7,3_{5,6,7,8}} )

inherit python-r1

DESCRIPTION="FlatCAM is a program for preparing CNC jobs for making PCBs on a CNC router"
HOMEPAGE="
https://bitbucket.org/jpcgt/flatcam/src/master/
"

SRC_URI="http://bitbucket.org/jpcgt/flatcam/downloads/${PN}_beta_${PV}_sources.zip"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}/${PN}_beta_${PV}_sources"

DEPEND="
sci-libs/shapely
sci-libs/rtree
dev-python/scipy
dev-python/numpy
dev-python/matplotlib
dev-python/pysvg
dev-python/simplejson
dev-lang/python[tk]
"
