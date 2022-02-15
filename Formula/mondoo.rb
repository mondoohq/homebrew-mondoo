
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.27.0"

  if Hardware::CPU.intel?
    sha256 "2e7e3ead1c73f8154c56c1fa2e0dae04cac6fe62f3f1cfb5d886efe074b66dc5"
    url "https://releases.mondoo.io/mondoo/5.27.0/mondoo_5.27.0_darwin_amd64.tar.gz"
  else
    sha256 "a7b788f00fc63d5c1ce8927c66ec7192d5e4bb54610708885b787bef45bf70f9"
    url "https://releases.mondoo.io/mondoo/5.27.0/mondoo_5.27.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

