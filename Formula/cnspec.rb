
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.1.0"

  if Hardware::CPU.intel?
    sha256 "20f8245c4b68b3d7e1da11ff1e4de32f35f1a28d9f286793b6b7147236a09109"
    url "https://releases.mondoo.com/cnspec/7.1.0/cnspec_7.1.0_darwin_amd64.tar.gz"
  else
    sha256 "63805191d2e70ad3c2a06942b36298ec1f7a880e777f0fabaa7f7870b71d0403"
    url "https://releases.mondoo.com/cnspec/7.1.0/cnspec_7.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

