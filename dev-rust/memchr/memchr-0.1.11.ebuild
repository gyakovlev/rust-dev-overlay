# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Safe interface to memchr"
HOMEPAGE="https://github.com/BurntSushi/rust-memchr"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Unlicense )"
KEYWORDS="~amd64 ~x86"
IUSE="test"
BDEPEND="
	( =dev-rust/libc-0.2*:= >=dev-rust/libc-0.2.4 )
	test? (
		=dev-rust/quickcheck-0.2*:=
	)
"
src_prepare() {
	rm -vrf benches/ || die
	rm -vf appveyor.yml session.vim || die
	default
}
