# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="asdf-format library"
HOMEPAGE="https://pypi.org/project/abacusutils/"

SRC_URI="https://files.pythonhosted.org/packages/b6/8d/fe2961b88c5f115e9d3907132a4e045504eebcfa197f8d35083b7a1415cd/abacusutils-1.3.0.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/blosc[${PYTHON_USEDEP}]
		dev-python/asdf-astropy[${PYTHON_USEDEP}]"
