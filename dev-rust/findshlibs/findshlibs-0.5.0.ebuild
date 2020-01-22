# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="Find set of shared libraries loaded in the current process"
HOMEPAGE="https://github.com/gimli-rs/findshlibs"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	=dev-rust/lazy_static-1*:=
	( =dev-rust/libc-0.2*:= >=dev-rust/libc-0.2.55 )
"
