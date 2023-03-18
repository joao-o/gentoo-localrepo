# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
SLOT="0"

PYTHON_COMPAT=( python2_7 python3_7 )
PYTHON_REQ_USE="tk(+)"

inherit git-r3 eutils python-r1 autotools

DESCRIPTION="LinuxCNC controls CNC machines."
HOMEPAGE="http://linuxcnc.org/"
EGIT_REPO_URI="https://github.com/LinuxCNC/linuxcnc"
EGIT_COMMIT="v2.8.1"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+uspace sb python_targets_python2_7"
REQUIRED_USE="python_targets_python2_7"

RDEPEND="
	dev-lang/python:2.7
$(python_gen_cond_dep '
	dev-libs/boost[python,${PYTHON_USEDEP}]
	x11-libs/gtk+:2
	dev-python/yapps[${PYTHON_USEDEP}]
	dev-python/pygtk[${PYTHON_USEDEP}]
						        ' -3)
"

DEPEND="${RDEPEND}"

S=$S/src

AUTOTOOLS_IN_SOURCE_BUILD=1

src_prepare() {
	#epatch "${FILESDIR}/fixups.patch"
	eapply_user
	eautoreconf
}

src_configure() {
	local myeconfargs=(
		'--enable-non-distributable=yes' ''
		'--with-realtime=uspace' ''
	)
	econf
}

