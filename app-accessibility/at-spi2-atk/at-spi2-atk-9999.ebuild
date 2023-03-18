# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit git-r3

DESCRIPTION="NOP implementation of atk-bridge, so gtk+3 can be used without dbus dependencies"
HOMEPAGE="https://github.com/joao-o/atk-bridge-fake"
EGIT_REPO_URI="https://github.com/joao-o/atk-bridge-fake.git"
LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sparc ~x86 ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"


