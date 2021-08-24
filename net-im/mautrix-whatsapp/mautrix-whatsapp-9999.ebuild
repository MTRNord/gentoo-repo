# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
EGO_PN="github.com/tulir/mautrix-whatsapp"

DESCRIPTION="A Matrix-WhatsApp puppeting bridge"
HOMEPAGE="https://maunium.net/go/mautrix-whatsapp"
SRC_URI="${EGO_SUM_SRC_URI}"

inherit git-r3
inherit go-module

#go-module_set_globals

EGIT_REPO_URI="https://github.com/tulir/mautrix-whatsapp.git"
if [[ ${PV} != "9999" ]]; then
EGIT_COMMIT="v${PV}"
KEYWORDS="~amd64 ~x86"
fi

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go
dev-libs/olm"
RDEPEND="${DEPEND}"
BDEPEND=""

if [[ ${PV} == 9999 ]]; then
src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}
fi


src_compile() {
	go build
}

src_install() {
	newinitd "${FILESDIR}/matrix-whatsapp.initd" matrix-whatsapp
	dobin mautrix-whatsapp
	dodir /etc/mautrix-whatsapp
	insinto /etc/mautrix-whatsapp
	newins example-config.yaml config.yaml

	dodoc example-config.yaml
}
