name="yt-dlp-bin"
pkgname="yt-dlp"
pkgdesc="A youtube-dl fork with additional features and fixes"
pkgver="2022.03.08.1"
source="https://github.com/yt-dlp/yt-dlp/releases/download/${pkgver}/yt-dlp"

package() {
        sudo install -Dm755 yt-dlp "${STAGEDIR}/${name}/usr/local/bin/${pkgname}"
}

