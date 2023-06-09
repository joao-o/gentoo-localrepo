# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python{2_7,3_7,3_8,3_9} pypy )

inherit distutils-r1

MY_PN="Yapps"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="An easy to use parser generator"
HOMEPAGE="https://github.com/smurfix/yapps"
SRC_URI="mirror://pypi/${MY_P:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

S="${WORKDIR}/${MY_PN}-${PV}"

src_prepare() {
	eapply_user
	epatch "${FILESDIR}/${PN}-Don-t-capture-sys.stderr-at-import-time.patch"
	epatch "${FILESDIR}/${PN}-Convert-print-statements-to-python3-style-print-func.patch"
}
