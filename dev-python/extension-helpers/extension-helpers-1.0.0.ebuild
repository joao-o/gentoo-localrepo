# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python{2_7,3_{9,10}} )

inherit distutils-r1

DESCRIPTION="extension helpers library"
HOMEPAGE="https://pypi.org/project/extension-helpers/"

SRC_URI="https://files.pythonhosted.org/packages/15/44/fc7754aa170b1f3b4318b009d00f1045a7f4616e2b77bcc3b3d4f5601be5/extension-helpers-1.0.0.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
#S="${WORKDIR}/asdf-${PV}"
