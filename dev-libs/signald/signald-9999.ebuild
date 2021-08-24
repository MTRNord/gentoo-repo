# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="An (unofficial) Signal Daemon"
HOMEPAGE="https://signald.org"
SRC_URI=""

inherit git-r3

EGIT_REPO_URI="https://gitlab.com/signald/signald.git"
if [[ ${PV} != "9999" ]]; then
EGIT_COMMIT="v${PV}"
KEYWORDS="~amd64 ~x86"
fi

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=virtual/jdk-1.8:*
"
RDEPEND="
	>=virtual/jre-1.8:*
	acct-user/signald
"

src_unpack() {
	default
	git-r3_src_unpack
	pushd "${WORKDIR}/${P}/"
	GRADLE_USER_HOME="${WORKDIR}/.gradle" ./gradlew --write-verification-metadata sha256 help
}

src_compile() {
	GRADLE_USER_HOME="${WORKDIR}/.gradle" make installDist
}

src_install() {
	dobin build/install/signald/bin/signald
	keepdir /var/run/signald
	fowners -R signald:signald /var/run/signald
}
