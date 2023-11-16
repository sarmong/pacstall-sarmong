name="betterlockscreen"
pkgdesc="Sweet looking lockscreen for linux system"
pkgver="4.2.0"
url="https://github.com/betterlockscreen/betterlockscreen/archive/refs/tags/v${pkgver}.tar.gz"
makedepends=("imagemagick")
pacdeps=("i3lock-color")
depends=("i3lock" "imagemagick")
hash="f55ae57c25da8d3e2a0d4ff0043c3876f257b98c1a393e94401330d888b7d22d"

package() {
  sudo ./install.sh system v${pkgver} true
}
