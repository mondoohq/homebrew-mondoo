
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.20.0"

  if Hardware::CPU.intel?
    sha256 "6c353392c868d1c28b1955f38731dff9ea6f98ec87707953dcc9f75b1362f95a"
    url "https://releases.mondoo.io/mondoo/5.20.0/mondoo_5.20.0_darwin_amd64.tar.gz"
  else
    sha256 "d6fba9b5634cc24e511a7e4a07237445180e26e8d6acd98b86e8cddc802f3fd5"
    url "https://releases.mondoo.io/mondoo/5.20.0/mondoo_5.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

