require 'rbconfig'
class Passman < Formula
  desc "A simple local password manager for daily use"
  homepage "https://github.com/harunsasmaz/passman"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.1/passman_1.0.1_darwin_x86_64.tar.gz"
      sha256 "0dea51eeca9df4cc1604d14bc01a7c90cf2087dbe0ae3e930bd73975955ab6bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.1/passman_1.0.1_darwin_arm64.tar.gz"
      sha256 "0013b0dd4d3542774f6660271779ee5c3835141accb5174ea56a3517f1d2a0e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.1/passman_1.0.1_linux_x86_64.tar.gz"
      sha256 "1b4bafa419b724816cdf0b45cfb592e28694162f19e1e33a3eca1bf436f788ff"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/harunsasmaz/passman/releases/download/v1.0.1/passman_1.0.1_linux_arm64.tar.gz"
      sha256 "601507ed41d6f6e0bb1757602a9486a6dac52da30cc5ebd7dcc6d8e72ea7dcc2"
    end
  end


  def install
    bin.install "passman"
  end

  test do
    system "passman"
  end

end