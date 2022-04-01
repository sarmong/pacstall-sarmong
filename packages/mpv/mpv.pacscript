name="mpv"
description="Command line video player"
version="0.34.1"
url="https://github.com/mpv-player/mpv/archive/refs/tags/v${version}.zip"
depends="libarchive-dev libasound2-dev libass-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libbluray-dev libc6-dev libcaca-dev libcdio-cdda-dev libcdio-paranoia-dev libdrm-dev libdvdnav-dev libegl-dev libgbm-dev libjack-jackd2-dev liblcms2-dev liblua5.2-dev libpulse-dev librubberband-dev libsdl2-dev libsixel-dev libswresample-dev libswscale-dev libuchardet-dev libva-drm2 libva-wayland2 libva-x11-2 libva-dev libvdpau-dev libvulkan-dev libwayland-client0 libwayland-cursor0 libwayland-egl-backend-dev libx11-dev libxext-dev libxinerama-dev libxkbcommon-dev libxrandr-dev libxss-dev libxv-dev zlib1g-dev libplacebo-dev"

libxext6-dev
libxinerama1-dev
libxkbcommon0-dev
libxrandr2-dev
libxss1-dev
libxv1-dev
prepare() {
        ./bootstrap.py
        ./waf configure
}

build() {
        ./waf
}

install() {
        sudo DESTDIR="${STOWDIR}/${name}" ./waf install
}

