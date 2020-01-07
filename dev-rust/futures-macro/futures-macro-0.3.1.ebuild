# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="'futures' procedural macro implementations"
HOMEPAGE="https://github.com/rust-lang-nursery/futures-rs"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	( =dev-rust/proc-macro-hack-0.5*:= >=dev-rust/proc-macro-hack-0.5.9 )
	=dev-rust/proc-macro2-1*:=
	=dev-rust/quote-1*:=
	=dev-rust/syn-1*:=[printing,proc-macro]
"
