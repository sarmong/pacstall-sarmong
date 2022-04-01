name="newsboat"
description="An RSS/Atom feed reader for text terminals"
version="2.27"
url="https://github.com/newsboat/newsboat/archive/refs/tags/r${version}.zip"
build_depends="gcc cargo libcurl4-openssl-dev pkg-config asciidoctor libstfl-dev"
depends="gettext libxml2 libjson-c-dev"
hash="4d3782870c99fcaead39192c3b147b54c9e90df1464ff036b7b62e947d6daa45"

prepare() {
        true
}

build() {
        make -j$(nproc)
}

install() {
        sudo make DESTDIR="${STOWDIR}/${name}" install
}
