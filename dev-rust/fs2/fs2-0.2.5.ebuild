# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Cross-platform file locks and file duplication"
HOMEPAGE="https://github.com/danburkert/fs2-rs"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE="test"
BDEPEND="
	( =dev-rust/libc-0.2*:= >=dev-rust/libc-0.2.2 )
	=dev-rust/winapi-0.2*:=
	=dev-rust/kernel32-sys-0.2*:=
	test? (
		=dev-rust/tempdir-0.3*:=
	)
"
PATCHES=(
	"${FILESDIR}/${P}-no-nightly.patch"
)
