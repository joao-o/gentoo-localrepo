# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib autotools

DESCRIPTION="hyp2mat is a utility which converts HyperLynx and QucsStudio
			pcb files to matlab for electromagnetic simulation, or to PDF for printing."
HOMEPAGE="https://github.com/koendv/hyp2mat"
LICENSE="GPL-3"
EGIT_REPO_URI="https://github.com/koendv/hyp2mat"
EGIT_COMMIT="b15f749849610066e6c09da5b5e3f97e3317ba8a"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="media-libs/libharu
		dev-util/gengetopt"

src_prepare() {
	default
	eautoreconf
}
