# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit  go-module

DESCRIPTION="Nomad is a workload orchestrator across on-prem and clouds at scale."
HOMEPAGE="https://github.com/hashicorp/nomad"
SRC_URI="https://github.com/hashicorp/nomad/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/slchris/gentoo-go-deps/releases/download/${P}/${P}-deps.tar.xz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake  pkg/linux_amd64/nomad
}

src_install() {
	dobin pkg/linux_*/nomad
}
