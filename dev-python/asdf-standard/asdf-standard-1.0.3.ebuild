# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="asdf-standard library"
HOMEPAGE="https://pypi.org/project/asdf-standard/"

SRC_URI="https://files.pythonhosted.org/packages/ab/15/1e327a9a1f4e7bc4718c776303ff7af9e27941704da43490c80172754327/asdf_standard-${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
S="${WORKDIR}/asdf_standard-${PV}"
