# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="pyerfa library"
HOMEPAGE="https://pypi.org/project/pyerfa/"

SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		sci-astronomy/erfa"
#S="${WORKDIR}/asdf-${PV}"
