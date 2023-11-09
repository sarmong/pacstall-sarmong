name="volctl"
pkgdesc="Per-application volume control and OSD for Linux desktops"
pkgver="0.9.4"
url="https://github.com/buzz/volctl/archive/refs/tags/v${pkgver}.zip"
depends="python3 python3-setuptools python3-cairo python3-gi pulseaudio python3-venv"
pacdeps=("python3-pulsectl")

hash="c5f2e5f9cc9ce15938683d65f76ce9eded3616c4f082dcae78e0adfbe6911c46"

package() {
        sudo python3 setup.py install --root="${STOWDIR}/${name}"
        sudo install -Dm644 data/apps.volctl.gschema.xml -t "${STOWDIR}/${name}/usr/share/glib-2.0/schemas/"
}

post_install() {
        sudo update-desktop-database
        sudo glib-compile-schemas "/usr/share/glib-2.0/schemas/"
}
