class Icu4cAT562 < Formula
  desc "C/C++ and Java libraries for Unicode and globalization"
  homepage "http://site.icu-project.org/home"
  url "https://github.com/unicode-org/icu/releases/download/release-56-2/icu4c-56_2-src.tgz"
  version "56.2"
  sha256 "187faf495133f4cffa22d626896e7288f43d342e6af5eb8b214a1bf37bad51a6"

  bottle do
    cellar :any
    sha256 "e9ae7bb5a76b48e82f56bc744eaaa1e9bdb5ca49ea6b5a2e4d52f57ad331f063" => :catalina
    sha256 "e858556120acc0c2d52b8fb572b677856724cc28d24a7e1b2762d458a2977c8e" => :mojave
    sha256 "02afdd6a472c31351e46a3b2a38c1c77354f0cc9199c3dbd7e06bc171b3638a2" => :high_sierra
    sha256 "4270a558e2709b7cee1be047a8e890ee15bdb379825fd6dc81fdba74cd438c01" => :sierra
  end

  keg_only :provided_by_macos, "macOS provides libicucore.dylib (but nothing else)"

  def install
    args = %W[
      --prefix=#{prefix}
      --disable-samples
      --disable-tests
      --enable-static
      --with-library-bits=64
    ]

    cd "source" do
      system "./configure", *args
      system "make"
      system "make", "install"
    end
  end

  def caveats; <<~EOS
   install success !!!!!!
  EOS
  end

end
