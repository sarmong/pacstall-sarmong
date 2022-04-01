name="urlscan"
description="Mutt and terminal url selector (similar to urlview"
version="0.9.9"
url="https://github.com/firecat53/urlscan/archive/refs/tags/${version}.zip"
depends="python3-dev python3-pip python3-setuptools"

prepare() {
        true
}

build() {
        ./setup.py build
}

install() {
        sudo ./setup.py install --root="${STOWDIR}/${name}" --optimize=1
}
