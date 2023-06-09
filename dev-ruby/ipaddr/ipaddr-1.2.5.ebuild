# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30"
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="An IPv4/IPv6 address manipulation library for Ruby"
HOMEPAGE="https://github.com/ruby/ipaddr"
SRC_URI="https://github.com/ruby/ipaddr/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64"

