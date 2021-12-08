
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.17.1"

  if Hardware::CPU.intel?
    sha256 "d5071071cf5ef387d6e1d898abcabf983ce246ec5b4cd7d8f1f97c2956b8b9f7"
    url "https://releases.mondoo.io/mondoo/5.17.1/mondoo_5.17.1_darwin_amd64.tar.gz"
  else
    sha256 "a0e032d42924ae59e56d45e5498fdea2af328be633e29578fc2dc6b86402fbdd"
    url "https://releases.mondoo.io/mondoo/5.17.1/mondoo_5.17.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

