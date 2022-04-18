name="volctl"
description="Per-application volume control and OSD for Linux desktops"
version="0.9.2"
url="https://github.com/buzz/volctl/archive/refs/tags/v${version}.zip"
depends="python3 python-setuptools python-cairo python-gobject pulseaudio"
pacdeps=("python-pulsectl")
hash="63e0634054e52579d6aeaafe32292d91fa2d9f1cab2144cfb5b0d24538fbddec"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo python3 setup.py install --root="${STOWDIR}/${name}"
        sudo install -Dm644 data/apps.volctl.gschema.xml -t "${STOWDIR}/${name}/usr/share/glib-2.0/schemas/"
}

postinst() {
        sudo glib-compile-schemas "/usr/share/glib-2.0/schemas/"
}
