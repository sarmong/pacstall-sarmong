name="thefuck"
description="Magnificent app which corrects your previous console command."
version="3.32"
url="https://github.com/nvbn/thefuck/archive/refs/tags/${version}.zip"
depends="python3-dev python3-pip python3-setuptools"
hash="5c494f9294f779d54064e44853bff83045f9704cc44fd227fe1fdacec2e8d768"


prepare() {
        true
}

build() {
        true
}

install() {
        sudo pip3 install thefuck --root="${STOWDIR}/${name}"
}
