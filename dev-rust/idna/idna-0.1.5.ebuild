# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="IDNA (Internationalizing Domain Names in Applications) and Punycode"
HOMEPAGE="https://github.com/servo/rust-url"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE="test"
BDEPEND="
	=dev-rust/matches-0.1*:=
	=dev-rust/unicode-bidi-0.3*:=
	( =dev-rust/unicode-normalization-0.1*:= >=dev-rust/unicode-normalization-0.1.5 )
	test? (
		=dev-rust/rustc-serialize-0.3*:=
		=dev-rust/rustc-test-0.3*:=
	)
"
