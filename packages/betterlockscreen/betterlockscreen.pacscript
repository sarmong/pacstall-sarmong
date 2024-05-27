pkgname="betterlockscreen"
pkgdesc="Sweet looking lockscreen for linux system"
pkgver="4.2.0"
source=("https://github.com/betterlockscreen/betterlockscreen/archive/refs/tags/v${pkgver}.tar.gz")
makedepends=("imagemagick")
pacdeps=("i3lock-color")
depends=("i3lock" "imagemagick" "bc")
sha256sum=("f55ae57c25da8d3e2a0d4ff0043c3876f257b98c1a393e94401330d888b7d22d")

package() {
   cd "${_archive}"
   # Remove check for /usr/local/bin access because without sudo
   sed -i '/if \[\[ ! -w \$BL_INSTALL_DIR \]\]; then/,/fi/d' install.sh
   sed -i '/if \[\[ ! -w \$SYSTEMD_SERVICE_DIR \]\]; then/,/fi/d' install.sh
  ./install.sh system v${pkgver} true
}
