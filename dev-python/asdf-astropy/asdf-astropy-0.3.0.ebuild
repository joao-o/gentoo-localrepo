# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="asdf-astropy library"
HOMEPAGE="https://pypi.org/project/asdf-astropy/"

SRC_URI="https://files.pythonhosted.org/packages/6e/33/d85a42bb94b4721cf52aa8dec40dcfe9f8bf6d752f887c20dce75b777746/asdf_astropy-${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/astropy[${PYTHON_USEDEP}]"
S="${WORKDIR}/asdf_astropy-${PV}"
