# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils cmake

DESCRIPTION="QCSXCAD the Qt-GUI for CSXCAD A C++ library to describe geometrical objects
			and their physical or non-physical properties."
HOMEPAGE="https://openEMS.de"
LICENSE="LGPL-3"
EGIT_REPO_URI="https://github.com/thliebig/qcsxcad/"
EGIT_COMMIT="1cde9d560a5000f4c24c249d2dd5ccda12de38b6"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="sci-libs/vtk
		sci-libs/hdf5
		sci-mathematics/cgal
		dev-libs/tinyxml
		dev-libs/fparser
		dev-qt/qtxml
		dev-qt/qtwidgets
		sci-libs/csxcad
"
PATCHES=(
	"${FILESDIR}/${PN}-fixqtdeps.patch"
)
