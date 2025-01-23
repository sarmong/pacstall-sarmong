pkgname="libinput-gestures"
pkgdesc="Actions gestures on your touchpad using libinput"
pkgver="2.76"
source="https://github.com/bulletmark/libinput-gestures/archive/refs/tags/${pkgver}.tar.gz"
arch=("amd64")
depends=("wmctrl" "xdotool" "libinput-tools")
replaces="${pkgname}"
sha256sum="493de1159c367433cb4a4fe2bb3dc4b53ea837b038a9ba00932080e857cda603"

package() {
   cd "${pkgname}-${pkgver}"
  ./libinput-gestures-setup install
}
