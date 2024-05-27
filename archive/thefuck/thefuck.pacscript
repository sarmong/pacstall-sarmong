name="thefuck"
pkgdesc="Magnificent app which corrects your previous console command."
pkgver="3.32"
source="https://github.com/nvbn/thefuck/archive/refs/tags/${pkgver}.zip"
depends="python3-dev python3-pip python3-setuptools"
sha256sum="5c494f9294f779d54064e44853bff83045f9704cc44fd227fe1fdacec2e8d768"


package() {
        sudo pip3 install thefuck --root="${STAGEDIR}/${name}"
}
