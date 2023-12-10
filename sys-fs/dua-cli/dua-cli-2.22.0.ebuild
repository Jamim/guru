# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.12.1

EAPI=8

CRATES="
	anstream@0.6.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anstyle@1.0.4
	anyhow@1.0.75
	atty@0.2.14
	autocfg@1.1.0
	bitflags@1.3.2
	byte-unit@4.0.19
	cassowary@0.3.0
	cfg-if@1.0.0
	chrono@0.4.31
	clap@4.4.8
	clap_builder@4.4.8
	clap_derive@4.4.7
	clap_lex@0.6.0
	colorchoice@1.0.0
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-queue@0.3.8
	crossbeam-utils@0.8.16
	crossbeam@0.8.2
	crossterm@0.25.0
	crossterm_winapi@0.9.1
	crosstermion@0.10.1
	diff@0.1.13
	either@1.9.0
	equivalent@1.0.1
	filesize@0.2.0
	fixedbitset@0.4.2
	form_urlencoded@1.2.0
	glob@0.3.1
	hashbrown@0.14.2
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.3
	human_format@1.0.3
	idna@0.4.0
	indexmap@2.1.0
	is-docker@0.2.0
	is-wsl@0.4.0
	itertools@0.12.0
	jwalk@0.8.1
	libc@0.2.150
	lock_api@0.4.11
	log@0.4.20
	malloc_buf@0.0.6
	memoffset@0.9.0
	mio@0.8.9
	num-traits@0.2.17
	num_cpus@1.16.0
	numtoa@0.1.0
	objc@0.2.7
	once_cell@1.18.0
	open@5.0.0
	owo-colors@3.5.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	pathdiff@0.2.1
	percent-encoding@2.3.0
	petgraph@0.6.4
	pretty_assertions@1.4.0
	proc-macro2@1.0.69
	quote@1.0.33
	rayon-core@1.12.0
	rayon@1.8.0
	redox_syscall@0.2.16
	redox_syscall@0.4.1
	redox_termios@0.1.3
	scopeguard@1.2.0
	serde@1.0.192
	serde_derive@1.0.192
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	smallvec@1.11.2
	strsim@0.10.0
	syn@2.0.39
	termion@1.5.6
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	trash@3.1.2
	tui-react@0.19.0
	tui@0.19.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	url@2.4.1
	utf8-width@0.1.6
	utf8parse@0.2.1
	wasi@0.11.0+wasi-snapshot-preview1
	wild@2.2.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows@0.44.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	yansi@0.5.1
"

inherit cargo

DESCRIPTION="A tool to conveniently learn about the disk usage of directories, fast!"
HOMEPAGE="https://github.com/Byron/dua-cli"
SRC_URI="
	https://github.com/Byron/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/dua"

DOCS=(
	README.md
	CHANGELOG.md
)

src_install() {
	cargo_src_install
	dodoc -r "${DOCS[@]}"
}
