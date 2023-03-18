# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils cmake

DESCRIPTION="AppCSXCAD is a minimal application using the QCSXCAD library."
HOMEPAGE="https://openEMS.de"
LICENSE="GPL-3"
EGIT_REPO_URI="https://github.com/thliebig/appcsxcad/"
EGIT_COMMIT="379ede4b8e00c11e8d0fb724c35547991b30c423"

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
		sci-libs/qcsxcad
"
PATCHES=(
	"${FILESDIR}/${PN}-fixqtdeps.patch"
)
