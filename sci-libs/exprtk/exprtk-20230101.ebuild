# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="7"

inherit eutils git-r3 multilib eutils

DESCRIPTION="C++ Mathematical Expression Toolkit Library"
HOMEPAGE="https://www.partow.net/programming/exprtk/index.html"
LICENSE="LGPL-3"
EGIT_REPO_URI="https://github.com/ArashPartow/exprtk"
EGIT_COMMIT="f46bffcd6966d38a09023fb37ba9335214c9b959"

SLOT="0"
KEYWORDS="~amd64"

DEPEND=""

src_compile()
{
echo true
}

src_install()
{
dodir /usr/include/
cp exprtk.hpp  ${D}/usr/include
}
