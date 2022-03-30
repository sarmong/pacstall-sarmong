name="picom"
description="A lightweight compositor for X11"
version="9.1"
url="https://github.com/yshui/picom/archive/refs/tags/v${version}.zip"
build_depends="meson"
depends="libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev"
hash="b65a66e5abe32eda8f67048a9ab3178097a8652560102c33426b3cc5129b361f"

prepare() {
        true
}

build() {
        meson --buildtype=release . build
        ninja -C build
}

install() {
        sudo DESTDIR="${STOWDIR}/${name}" ninja -C build install

        # copy example conf
        sudo install -D -m644 "picom.sample.conf" "${STOWDIR}/${name}"/etc/xdg/picom.conf.example
}
