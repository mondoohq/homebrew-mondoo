
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.18.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "30b7bf5754b1c7044ae6080b9957c19325fc529678237d39a45c4c9f79c9bb79"
    url "https://releases.mondoo.com/cnspec/8.18.0/cnspec_8.18.0_darwin_amd64.tar.gz"
  else
    sha256 "2076109572329b2291a78e77ceb85ad45db815cbf895415db073dfce5e937f47"
    url "https://releases.mondoo.com/cnspec/8.18.0/cnspec_8.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

