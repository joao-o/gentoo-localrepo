# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{9,10,11} )

inherit distutils-r1

DESCRIPTION="GrblHAL (formerly GRBL) CNC command sender, autoleveler, g-code editor..."
HOMEPAGE="
https://github.com/vlachoudis/bCNC
"

SRC_URI="https://files.pythonhosted.org/packages/4f/3f/21eca89c78550e30e8937b3e9c27bc8ddbce8cbcda848b4b6b0b3bca68e2/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/bCNC-install-test-fix.patch"
)

DEPEND="
dev-lang/python[tk]
dev-python/pyserial[${PYTHON_USEDEP}]
"
