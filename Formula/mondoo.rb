
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.19.1"

  if Hardware::CPU.intel?
    sha256 "afdbbe936e5b706302124a1925e7cfc19e1bb80b8c9041225ca4586c1f8facf2"
    url "https://releases.mondoo.io/mondoo/5.19.1/mondoo_5.19.1_darwin_amd64.tar.gz"
  else
    sha256 "76225b37deb22d1cc2615fb1c7da7f7085da46ad4a26df96a5d2de2eeee4e3c0"
    url "https://releases.mondoo.io/mondoo/5.19.1/mondoo_5.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

