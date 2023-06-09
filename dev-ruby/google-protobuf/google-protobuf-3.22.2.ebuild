# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

RUBY_FAKEGEM_EXTENSIONS=(ext/google/protobuf_c/extconf.rb)
RUBY_FAKEGEM_EXTENSION_LIBDIR=lib/google

inherit ruby-fakegem

DESCRIPTION="Protocol Buffers are Google's data interchange format"
HOMEPAGE="https://developers.google.com/protocol-buffers"
SRC_URI="https://github.com/protocolbuffers/protobuf/archive/v${PV}.tar.gz -> ${P}-ruby.tar.gz"

RUBY_S="protobuf-${PV}/ruby"


LICENSE="BSD"
SLOT="3"
KEYWORDS="~amd64"

DEPEND+=" test? ( >=dev-libs/protobuf-19.0 )"

all_ruby_prepare() {
	mkdir -p 'ext/google/protobuf_c/third_party/utf8_range'
	cp '../third_party/utf8_range/utf8_range.h' 'ext/google/protobuf_c/third_party/utf8_range'
	cp '../third_party/utf8_range/naive.c' 'ext/google/protobuf_c/third_party/utf8_range'
	cp '../third_party/utf8_range/range2-neon.c' 'ext/google/protobuf_c/third_party/utf8_range'
	cp '../third_party/utf8_range/range2-sse.c' 'ext/google/protobuf_c/third_party/utf8_range'
	cp '../third_party/utf8_range/LICENSE' 'ext/google/protobuf_c/third_party/utf8_range'
	sed -e '/extensiontask/ s:^:#:' \
		-e '/ExtensionTask/,/^  end/ s:^:#:' \
		-e 's:../src/protoc:protoc:' \
		-e 's/:compile,//' \
		-e '/:test/ s/:build,//' \
		-i Rakefile || die
}

