
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.25.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "520b65b295079ae4ee025de2049bfc476c497fb4c36cd7dde1391b6c6913f3e6"
    url "https://releases.mondoo.com/mondoo/8.25.0/mondoo_8.25.0_darwin_amd64.tar.gz"
  else
    sha256 "520b65b295079ae4ee025de2049bfc476c497fb4c36cd7dde1391b6c6913f3e6"
    url "https://releases.mondoo.com/mondoo/8.25.0/mondoo_8.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

