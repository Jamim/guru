# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

case "${PV}" in
9999)
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/jayphelps/git-blame-someone-else.git"
	inherit git-r3
	;;
esac

DESCRIPTION="Blame someone else for your bad code."
HOMEPAGE="https://github.com/jayphelps/git-blame-someone-else"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-vcs/git"
DEPEND=""

src_install() {
	dobin "${PN}"
	dodoc README.md
}
