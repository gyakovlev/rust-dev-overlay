# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Integer traits and functions"
HOMEPAGE="https://github.com/rust-num/num-integer"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE=""

BDEPEND="
	( =dev-rust/num-traits-0.2*:= >=dev-rust/num-traits-0.2.4 )
	( =dev-rust/autocfg-0.1*:= >=dev-rust/autocfg-0.1.3 )
"
