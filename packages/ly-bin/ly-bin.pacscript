name="ly-bin"
pkgname="ly"
description="display manager with console UI"
version="0.5.0"
url="https://github.com/fairyglade/ly/releases/download/v${version}/ly_${version}.zip"
hash="f789b2923a01ca8114665180920c0bcf003ed1fa768c5d480ac01c0ea2fd94c7"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo DESTDIR="${STOWDIR}/${name}" ./install.sh
}
