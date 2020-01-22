# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate
DESCRIPTION="Demo of proc-macro-hack"
HOMEPAGE="https://github.com/dtolnay/proc-macro-hack"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	=dev-rust/proc-macro-hack-0.5*:=
	=dev-rust/demo-hack-impl-0.0.5*:=
"
