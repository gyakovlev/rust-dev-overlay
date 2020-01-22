# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Multi-producer multi-consumer channels for message passing"
HOMEPAGE="https://github.com/crossbeam-rs/crossbeam"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 ) BSD-2"
KEYWORDS="~amd64 ~x86"
IUSE="test"

BDEPEND="
	=dev-rust/crossbeam-utils-0.7*:=[std]
	test? (
		( =dev-rust/num_cpus-1*:= >=dev-rust/num_cpus-1.10.0 )
		=dev-rust/rand-0.6*:=[std]
		( =dev-rust/signal-hook-0.1*:= >=dev-rust/signal-hook-0.1.5 )
	)
"
src_prepare() {
	rm -vrf benches/ || die
	rm -vrf examples/ || die
	default
}
