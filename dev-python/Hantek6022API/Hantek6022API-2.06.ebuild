# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{9,10,11} )

inherit distutils-r1

DESCRIPTION="Hantek 6022 Python API for Linux"
HOMEPAGE="
https://github.com/Ho-Ro/Hantek6022API
"
SRC_URI="https://github.com/Ho-Ro/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-embedded/sdcc
		dev-python/python-libusb1"
