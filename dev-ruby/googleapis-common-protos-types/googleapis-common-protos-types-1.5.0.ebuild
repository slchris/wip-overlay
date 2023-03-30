# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

USE_RUBY="ruby26 ruby27 ruby30 ruby31"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_RECIPE_TEST="rspec3"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

inherit ruby-fakegem

DESCRIPTION="Common protocol buffer types used by Google APIs"
HOMEPAGE="https://github.com/googleapis/common-protos-ruby"
SRC_URI="https://github.com/googleapis/common-protos-ruby/archive/refs/tags/googleapis-common-protos-types/v${PV}.tar.gz -> ${P}.tar.gz"
RUBY_S="common-protos-ruby-googleapis-common-protos-types-v${PV}/${PN}"


LICENSE="Apache-2.0"
SLOT="1"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~x86"
IUSE=""

ruby_add_rdepend "
		>=dev-ruby/google-protobuf-3.22.2"

