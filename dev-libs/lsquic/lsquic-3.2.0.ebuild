# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

LSQUIC_COMMIT="3bbf683f25ab84826951350c57ae226c88c54422"
BORINGSSL_COMMIT="15655052e8701f908937204785eaa8cd4363099f"

DESCRIPTION="LiteSpeed QUIC (LSQUIC) Library"
HOMEPAGE="https://github.com/litespeedtech/lsquic/"
SRC_URI="
	https://github.com/litespeedtech/lsquic/archive/${LSQUIC_COMMIT}.tar.gz -> ${P}.tar.gz
	https://github.com/google/boringssl/archive/${BORINGSSL_COMMIT}.tar.gz -> boringssl-fips-20230428.tar.gz
"

S="${WORKDIR}/lsquic-${LSQUIC_COMMIT}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

IUSE="static-libs test"
RESTRICT="!test? ( test )"

DEPEND="
	dev-libs/ls-qpack:=[static-libs=]
	dev-libs/ls-hpack:=[static-libs=]
"

PATCHES=(
	"${FILESDIR}"/${PN}-disable-build-deps-libs.patch
	"${FILESDIR}"/${PN}-link-boringssl-static-libs.patch
)

src_unpack() {
	unpack ${P}.tar.gz
	unpack boringssl-fips-20230428.tar.gz
	mv boringssl-${BORINGSSL_COMMIT} "${S}"/src/liblsquic/boringssl || die
}

src_configure() {
	local mycmakeargs=(
		-DLSQUIC_SHARED_LIB=$(usex !static-libs)
		-DLSQUIC_TESTS=$(usex test)
	)
	cmake_src_configure
}
