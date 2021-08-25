# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
EGO_PN="github.com/go-acme/lego"

DESCRIPTION="Let's Encrypt client and ACME library written in Go."
HOMEPAGE="https://go-acme.github.io/lego"
SRC_URI=""

inherit git-r3
inherit go-module

#go-module_set_globals

EGIT_REPO_URI="https://github.com/go-acme/lego.git"
if [[ ${PV} != "9999" ]]; then
EGIT_COMMIT="v${PV}"
KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go"
RDEPEND=""
BDEPEND=""

if [[ ${PV} == 9999 ]]; then
src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}
fi

src_compile() {
	make build
}

src_install() {
	dobin dist/lego
}
