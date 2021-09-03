# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit acct-user

DESCRIPTION="A matrix whatsapp bridge"

KEYWORDS="~amd64 ~x86"
ACCT_USER_ID=-1
ACCT_USER_GROUPS=( mautrix-whatsapp )
ACCT_USER_HOME="/var/lib/synapse"

acct-user_add_deps
