
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.21.0"

  if Hardware::CPU.intel?
    sha256 "e7a181bf85e6efc949e2414017b8366603020f784b1fab3540b92e98771f02f3"
    url "https://releases.mondoo.io/mondoo/5.21.0/mondoo_5.21.0_darwin_amd64.tar.gz"
  else
    sha256 "238712fda5bf2740721dec1d973fb29e9d5136e99b9bcad5afcd425b188b5498"
    url "https://releases.mondoo.io/mondoo/5.21.0/mondoo_5.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

