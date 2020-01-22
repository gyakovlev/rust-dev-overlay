# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="A library for managing temporary files and directories"
HOMEPAGE="https://github.com/Stebalien/tempfile"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"
IUSE=""
BDEPEND="
	=dev-rust/cfg-if-0.1*:=
	=dev-rust/rand-0.7*:=[std]
	=dev-rust/remove_dir_all-0.5*:=
	( =dev-rust/libc-0.2*:= >=dev-rust/libc-0.2.27 )
"
PATCHES=(
	"${FILESDIR}/${P}-unix-cargo.patch"
)
