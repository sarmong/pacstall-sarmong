pkgname="auto-cpufreq"
pkgdesc="Automatic CPU speed & power optimizer for Linux "
pkgver="2.0.0"
source="https://github.com/AdnanHodzic/auto-cpufreq/archive/refs/tags/v${pkgver}.tar.gz"
replaces="${pkgname}"
sha256sum="0af5a41517beb19e5e2aa6e6966e7341549e5d31001c728045c73e4a31642e7f"

package() {
  cd "${_archive}"
  yes 'i' | ./auto-cpufreq-installer
}
