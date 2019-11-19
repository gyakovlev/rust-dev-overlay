# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate
DESCRIPTION="Procedural functionlike!() macros with Macros 1.1"
HOMEPAGE="https://github.com/dtolnay/proc-macro-hack"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test"
BDEPEND="
	=dev-rust/proc-macro-hack-impl-0.4*:=
"
