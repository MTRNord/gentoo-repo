# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..10} )
inherit distutils-r1

DESCRIPTION="An immutable dictionary"
HOMEPAGE="https://pypi.python.org/pypi/frozendict https://github.com/slezica/python-frozendict"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"