name="picom"
description="A lightweight compositor for X11"
version="9.1"
url="https://github.com/yshui/picom/archive/refs/tags/v${version}.zip"
depends="libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson"
hash="25868b68ff98338c5421211fa2f8286f9c5b6f900b4bfb7c99e0fe64eb4db67b"

prepare() {
        git submodule update --init --recursive
}

build() {
        meson --buildtype=release . build
        ninja -C build
}

install() {
        DESTDIR="${STOWDIR}/${name}" ninja -C build install

        # example conf
        install -D -m644 "picom.sample.conf" "${pkgdir}/etc/xdg/picom.conf.example"
}
