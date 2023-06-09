EAPI=8

inherit cmake

GIT_COMMIT=a93f49eb04f4086065fd6fd8e6f777743f2509ff
S=$WORKDIR/nextpnr-$GIT_COMMIT

DESCRIPTION="portable FPGA place and route tool"
HOMEPAGE="https://github.com/YosysHQ/nextpnr"
SRC_URI="https://github.com/YosysHQ/$PN/archive/$GIT_COMMIT.tar.gz -> $P.tar.gz"
LICENSE=ISC
SLOT=0
KEYWORDS="~amd64"
IUSE="ice40 ecp5 machxo2 nexus gowin gui"

DEPEND="ice40? ( dev-embedded/icestorm )
	ecp5? ( dev-embedded/prjtrellis )
	machxo2? ( dev-embedded/prjtrellis )
	nexus? ( dev-embedded/prjoxide )
	gowin? ( dev-embedded/apicula )
	>=dev-embedded/yosys-0.8
	gui? ( dev-qt/qtcore:5
			virtual/opengl )
	dev-libs/boost
	dev-cpp/eigen"

src_unpack() {
	unpack $P.tar.gz
	rmdir $S/3rdparty/fpga-interchange-schema # $S/3rdparty/abseil-cpp
}

src_configure() {
	local mycmakeargs=(
		-DARCH=generic$(usex ice40 ";ice40" "")$(usex ecp5 ";ecp5" "")$(usex machxo2 ";machxo2" "")$(usex nexus ";nexus" "")$(usex gowin ";gowin" "")
		$(usex ice40 "-DICESTORM_INSTALL_PREFIX=/usr" "")
		$(usex ecp5 "-DTRELLIS_INSTALL_PREFIX=/usr" "")
		$(usex machxo2 "-DTRELLIS_INSTALL_PREFIX=/usr" "")
		$(usex nexus "-DOXIDE_INSTALL_PREFIX=/usr" "")
		$(usex gui -DBUILD_GUI=ON "")
	)
	cmake_src_configure
}
