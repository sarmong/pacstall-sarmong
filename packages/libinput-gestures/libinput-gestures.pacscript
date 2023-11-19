name="libinput-gestures"
pkgdesc="Actions gestures on your touchpad using libinput"
pkgver="2.76"
url="https://github.com/bulletmark/libinput-gestures/archive/refs/tags/${pkgver}.tar.gz"
depends=("wmctrl" "xdotool", "libinput-tools")
hash="493de1159c367433cb4a4fe2bb3dc4b53ea837b038a9ba00932080e857cda603"

package() {
  sudo ./libinput-gestures-setup install
}

post_install() {
  sudo gpasswd -a $USER input
}
