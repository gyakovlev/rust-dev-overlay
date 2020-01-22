# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Advanced conversion traits with more specific semantics"
HOMEPAGE="https://github.com/DanielKeep/rust-conv"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="test"

BDEPEND="
	( =dev-rust/custom_derive-0.1*:= >=dev-rust/custom_derive-0.1.2 )
	test? (
		( >=dev-rust/quickcheck-0.2.21:= <dev-rust/quickcheck-0.2.25 )
	)
"
