# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Generic endian-aware read/write traits for byte buffers"
HOMEPAGE="https://github.com/m4b/scroll"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="derive test"
F_DERIVE="
	=dev-rust/scroll_derive-0.10*:=
"
BDEPEND="
	derive? ( ${F_DERIVE} )
	test? ( ${F_DERIVE} )
"
PATCHES=(
	"${FILESDIR}/${P}-no-bench-deps.patch"
)
src_prepare() {
	rm -vrf examples/ benches/ || die
	# https://github.com/m4b/scroll/issues/65
	rm -vf tests/readme.rs || die
	default
}
