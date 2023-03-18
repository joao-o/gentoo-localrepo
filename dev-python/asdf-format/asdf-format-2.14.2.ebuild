# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="asdf-format library"
HOMEPAGE="https://github.com/asdf-format/asdf/"

SRC_URI="https://files.pythonhosted.org/packages/7f/0e/dfdefa1458ad5e1016e5f8ff76bc779835dddc83bf133ebe4f4ed08a3125/asdf-2.14.2.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/jsonschema[${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/semantic_version[${PYTHON_USEDEP}]
		dev-python/asdf-standard[${PYTHON_USEDEP}]"
S="${WORKDIR}/asdf-${PV}"
