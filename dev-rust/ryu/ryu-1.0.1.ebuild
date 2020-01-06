# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Fast floating point to string conversion"
HOMEPAGE="https://github.com/dtolnay/ryu"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( Boost-1.0 Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE="no-panic test"

F_NO_PANIC="
	=dev-rust/no-panic-0.1*:=
"
BDEPEND="
	no-panic? ( ${F_NO_PANIC} )
	test? (
		( =dev-rust/num_cpus-1*:= >=dev-rust/num_cpus-1.8 )
		=dev-rust/rand-0.5*:=
		${F_NO_PANIC}
	)
"
src_prepare() {
	rm -vrf examples/ || die
	default
}
