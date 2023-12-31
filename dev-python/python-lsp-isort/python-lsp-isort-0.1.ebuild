# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} pypy3 )
MY_PV="0.1"

inherit distutils-r1

DESCRIPTION="isort plugin for the Python LSP Server"
HOMEPAGE="
	https://github.com/chantera/python-lsp-isort
	https://pypi.org/project/python-lsp-isort/
"
SRC_URI="
	https://github.com/chantera/${PN}/archive/refs/tags/v${MY_PV}.tar.gz
		-> ${P}.gh.tar.gz
"
S="${WORKDIR}/${PN}-${MY_PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

BDEPEND="
	>=dev-python/isort-5.0[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-python/python-lsp-server[${PYTHON_USEDEP}]
	${BDEPEND}
"

distutils_enable_tests pytest