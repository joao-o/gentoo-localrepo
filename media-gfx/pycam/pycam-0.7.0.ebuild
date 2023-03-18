# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{9,10} )

inherit distutils-r1 git-r3

DESCRIPTION="PyCAM generates toolpaths (GCode) based on 2D or 3D models for 3-axis CNC machining"
HOMEPAGE="
https://github.com/SebKuzminsky/pycam
"
EGIT_REPO_URI="https://github.com/SebKuzminsky/pycam/"
EGIT_COMMIT="55e3129f518e470040e79bb00515b4bfcf36c172"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
#S="${WORKDIR}/v${PV}"

DEPEND="
dev-lang/python
dev-python/svg-path
dev-python/pyopengl
dev-python/pyyaml
dev-python/pygobject
"

MAKEOPTS="-j1"
