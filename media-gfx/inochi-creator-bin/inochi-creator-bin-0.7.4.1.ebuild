# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit desktop

DESCRIPTION="Open source editor for rigging Inochi2D puppets."
HOMEPAGE="https://inochi2d.com"
SRC_URI="https://github.com/Inochi2D/inochi-creator/releases/download/v0.7.4.1/inochi-creator-linux-x86_64.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}"

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin inochi-creator
}
