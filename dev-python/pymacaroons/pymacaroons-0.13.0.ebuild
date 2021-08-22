# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{5..10} )
inherit distutils-r1

DESCRIPTION="PyMacaroons is a Python implementation of Macaroons"
HOMEPAGE="https://github.com/ecordell/pymacaroons https://pypi.python.org/pypi/pymacaroons-pynacl"
SRC_URI="https://github.com/ecordell/pymacaroons/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

#S="${WORKDIR}/${PN%-pynacl}-${PV}"

# TODO testing useflag and additional dependencies
# See: https://github.com/matrix-org/pymacaroons/blob/master/requirements.txt

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/six
	dev-python/pynacl
"
