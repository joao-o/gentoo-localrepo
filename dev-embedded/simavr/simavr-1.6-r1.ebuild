# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7


DESCRIPTION="avr simulator"
HOMEPAGE="
https://github.com/buserror/simavr
"
COMMIT="ba721226ba869e7a1a168686cf53d4efefa4e439"
SRC_URI="https://github.com/buserror/${PN}/archive/${COMMIT}.zip"

S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}/${P}-fix-rpath.patch"
)


src_install() {
	mkdir -p "${D}/usr"
	if [[ -f Makefile ]] || [[ -f GNUmakefile ]] || [[ -f makefile ]] ; then
		emake -j1 DESTDIR="${D}/usr" install
	fi
	einstalldocs
}

