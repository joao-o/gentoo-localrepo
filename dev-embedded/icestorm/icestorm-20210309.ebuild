# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils

DESCRIPTION="IceStorm - tools for analyzing and creating bitstreams for Lattice iCE40 FPGAs"
HOMEPAGE="http://www.clifford.at/icestorm/"
LICENSE="ISC"
EGIT_REPO_URI="https://github.com/cliffordwolf/icestorm.git"
EGIT_COMMIT="c495861c19bd0976c88d4964f912abe76f3901c3"

SLOT="0"
KEYWORDS="~amd64"
IUSE="ftdi"

RDEPEND="dev-embedded/libftdi"

DEPEND=" >=dev-lang/python-3
		virtual/pkgconfig
		${RDEPEND}"

src_prepare() {
	eapply "${FILESDIR}"/${PN}-path-fix.patch
	eapply "${FILESDIR}"/${PN}-gcc.patch
	eapply_user
}

