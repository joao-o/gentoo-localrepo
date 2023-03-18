# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils cmake

DESCRIPTION="OpenEMS is a free and open electromagnetic field solver using the FDTD method"
HOMEPAGE="https://openEMS.de"
LICENSE="GPL-3"
EGIT_REPO_URI="https://github.com/thliebig/openEMS/"
EGIT_COMMIT="cb63ab01c4d46cc2ae84814f39467e8aadc0b9b1"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="sci-libs/vtk
sci-libs/hdf5
sci-mathematics/cgal
dev-libs/tinyxml
sci-libs/csxcad
dev-libs/fparser
"
