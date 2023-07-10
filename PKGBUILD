# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Matheus Bach <35426162+matheusbach@users.noreply.github.com>
pkgname='legen'
pkgver=1
pkgrel=1
pkgdesc="Legen uses Whisper to generate subtitles and translates it to multiple languages"
arch=( 'x86_64' )
url="https://github.com/matheusbach/legen"
license=('GPLv3')
depends=( 'ffmpeg' 'python>=3.7' 'python-pip' 'git' )
install="install.sh"
source=("$pkgname-$pkgver.tar.gz"
        "$pkgname-$pkgver.patch")
noextract=()
md5sums=()
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"
	patch -p1 -i "$srcdir/$pkgname-$pkgver.patch"
}

build() {
	cd "$pkgname-$pkgver"
	./configure --prefix=/usr
	make
}

check() {
	cd "$pkgname-$pkgver"
	make -k check
}

package() {
	cd "$pkgname-$pkgver"
	make DESTDIR="$pkgdir/" install
}
