# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Concurrent queues"
HOMEPAGE="https://github.com/crossbeam-rs/crossbeam"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 ) BSD-2"
KEYWORDS="~amd64 ~x86"
IUSE="+std test"
BDEPEND="
	( =dev-rust/cfg-if-0.1*:= >=dev-rust/cfg-if-0.1.2 )
	=dev-rust/crossbeam-utils-0.7*:=[std?]
	test? (
		=dev-rust/crossbeam-utils-0.7*:=[std]
		=dev-rust/rand-0.6*:=[std]
	)
"
