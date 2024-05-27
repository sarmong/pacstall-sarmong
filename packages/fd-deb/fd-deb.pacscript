pkgname="fd-deb"
gives="fd"
pkgdesc="A simple, fast and user-friendly alternative to 'find'"
pkgver="8.7.1"
breaks=(${pkgname} ${pkgname}-git ${pkgname}-bin ${pkgname}-app)
source="https://github.com/sharkdp/fd/releases/download/v${pkgver}/fd_${pkgver}_amd64.deb"
sha256sum="eb8d4ba36e3c479aa09298a7a8bd7cff1f9c61a5d054bcc5654ee35de64cfdd5"
