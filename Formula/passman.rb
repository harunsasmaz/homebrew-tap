require 'rbconfig'
class Passman < Formula
  desc "A simple local password manager for daily use"
  homepage "https://github.com/harunsasmaz/passman"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.0/passman_1.0.0_darwin_x86_64.tar.gz"
      sha256 "328cbb430450a749f92c9f7460c463f5bd367daf4d46f2f63763d0b3258415e6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.0/passman_1.0.0_darwin_arm64.tar.gz"
      sha256 "9d5d9fa24ce32910e9b9e8bdd564240766bc532bc85e7d457fe948d8ccd35a6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.0/passman_1.0.0_linux_x86_64.tar.gz"
      sha256 "23e5f153813d9d2182eb7245622d09d372d4f61645325e7257f0f552ddb968ea"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.0/passman_1.0.0_linux_arm64.tar.gz"
      sha256 "9fbd77a7d319c274244977e9f898940c94388ed549bd2a77a00ce113153215bc"
    end
  end


  def install
    bin.install "passman"
  end

  test do
    system "passman"
  end

end