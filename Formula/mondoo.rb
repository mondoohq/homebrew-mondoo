
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.21.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "5252b3429a8874075212cfff25cfe3154c5605edf163668926ad3337e2574356"
    url "https://releases.mondoo.com/mondoo/8.21.0/mondoo_8.21.0_darwin_amd64.tar.gz"
  else
    sha256 "5252b3429a8874075212cfff25cfe3154c5605edf163668926ad3337e2574356"
    url "https://releases.mondoo.com/mondoo/8.21.0/mondoo_8.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

