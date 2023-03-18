# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="astropy library"
HOMEPAGE="https://pypi.org/project/astropy/"

SRC_URI="https://files.pythonhosted.org/packages/14/9a/6f1376020f08fbfc40d3e06590636909a7658f5ed6764d8b583c22c0278b/astropy-${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/extension-helpers[${PYTHON_USEDEP}]"
#S="${WORKDIR}/asdf_astropy-${PV}"
