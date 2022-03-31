name="yt-dlp-bin"
pkgname="yt-dlp"
description="A youtube-dl fork with additional features and fixes"
version="2022.03.08.1"
url="https://github.com/yt-dlp/yt-dlp/releases/download/${version}/yt-dlp"

prepare() {
        true
}

build() {
        true
}

install() {
        sudo install -Dm755 yt-dlp "${STOWDIR}/${name}/usr/local/bin/${pkgname}"
}

