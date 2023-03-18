# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils cmake

DESCRIPTION="A C++ library to describe geometrical objects
			and their physical or non-physical properties."
HOMEPAGE="https://openEMS.de"
LICENSE="LGPL-3"
EGIT_REPO_URI="https://github.com/thliebig/csxcad/"
EGIT_COMMIT="c29742ba2cdec54de149c3deea268be1437aba8d"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="sci-libs/vtk
		sci-libs/hdf5
		sci-mathematics/cgal
		dev-libs/tinyxml
		dev-libs/fparser
"
