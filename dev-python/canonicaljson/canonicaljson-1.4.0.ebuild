# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5..10} )
inherit distutils-r1

DESCRIPTION="Canonical JSON"
HOMEPAGE="https://github.com/matrix-org/python-canonicaljson https://pypi.python.org/pypi/canonicaljson"
SRC_URI="https://github.com/matrix-org/python-canonicaljson/archive/v${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/python-${P}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/simplejson"
RDEPEND="${DEPEND}"
