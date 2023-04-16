# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit  go-module

DESCRIPTION="Manage your kubeconfig more easily."
HOMEPAGE="https://github.com/sunny0826/kubecm"
SRC_URI="https://github.com/sunny0826/kubecm/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/slchris/gentoo-go-deps/releases/download/${P}/${P}-deps.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin target/kubecm-/kubecm
}
