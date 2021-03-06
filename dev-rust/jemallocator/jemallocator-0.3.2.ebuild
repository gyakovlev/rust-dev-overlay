# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate
DESCRIPTION="An allocator backed by jemalloc"
HOMEPAGE="https://github.com/gnzlbg/jemallocator"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE="test"
BDEPEND="
	( =dev-rust/jemalloc-sys-0.3*:= >=dev-rust/jemalloc-sys-0.3.2 )
	( =dev-rust/libc-0.2*:= >=dev-rust/libc-0.2.8 )
	test? (
		=dev-rust/jemalloc-ctl-0.3*:=
	)
"
PATCHES=(
	"${FILESDIR}/${P}-no-bench-deps.patch"
	"${FILESDIR}/${P}-jemalloc-ctl.patch"
)
src_prepare() {
	rm -vrf benches/ || die
	rm -vrf ci/ || die
	rm -vf .appveyor.yml .travis.yml || die
	default
}
