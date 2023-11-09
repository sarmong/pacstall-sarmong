name="ly-bin"
pkgname="ly"
pkgdesc="display manager with console UI"
pkgver="0.5.0"
url="https://github.com/fairyglade/ly/releases/download/v${pkgver}/ly_${pkgver}.zip"
hash="f789b2923a01ca8114665180920c0bcf003ed1fa768c5d480ac01c0ea2fd94c7"

package() {
        sudo DESTDIR="${STOWDIR}/${name}" ./install.sh
}
