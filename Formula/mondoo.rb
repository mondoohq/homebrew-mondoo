
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.4.0"

  if Hardware::CPU.intel?
    sha256 "f2c0c846a3de5aada553cde10a7c0ad18dcbef1511b78353a8d25662c7ab9ef5"
    url "https://releases.mondoo.io/mondoo/5.4.0/mondoo_5.4.0_darwin_amd64.tar.gz"
  else
    sha256 "b2b7afe18207218be72a4f3e0552948be6641062fddf54ae1962b6dca955891d"
    url "https://releases.mondoo.io/mondoo/5.4.0/mondoo_5.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

