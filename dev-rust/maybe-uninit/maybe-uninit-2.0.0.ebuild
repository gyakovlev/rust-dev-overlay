# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="MaybeUninit for friends of backwards compatibility"
HOMEPAGE="https://github.com/est31/maybe-uninit"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 ) "
KEYWORDS="~amd64 ~x86"
