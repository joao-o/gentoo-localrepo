# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_COMPAT=( python{2_7,3_7,3_8,3_9} pypy )

inherit distutils-r1


DESCRIPTION="VisPy is a high-performance interactive 2D/3D data visualization library"
HOMEPAGE="https://github.com/vispy/vispy"
SRC_URI="https://github.com/vispy/vispy/archive/refs/tags/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]"
RDEPEND=""

