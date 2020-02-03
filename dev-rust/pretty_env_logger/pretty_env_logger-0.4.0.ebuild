# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rust-crate

DESCRIPTION="A visually pretty env_logger"
HOMEPAGE="https://github.com/seanmonstar/pretty-env-logger"
SRC_URI="https://crates.io/api/v1/crates/${PN}/${PV}/download -> ${P}.crate"

LICENSE="|| ( MIT Apache-2.0 )"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	=dev-rust/env_logger-0.7*:=[atty,humantime,regex,termcolor]
	=dev-rust/log-0.4*:=
"
