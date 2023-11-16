name="auto-cpufreq"
pkgdesc="Automatic CPU speed & power optimizer for Linux "
pkgver="2.0.0"
url="https://github.com/AdnanHodzic/auto-cpufreq/archive/refs/tags/v${pkgver}.tar.gz"
hash="0af5a41517beb19e5e2aa6e6966e7341549e5d31001c728045c73e4a31642e7f"

package() {
  yes 'i' | sudo ./auto-cpufreq-installer
}
