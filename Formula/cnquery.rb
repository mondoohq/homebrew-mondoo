
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.3.1"
  

  if Hardware::CPU.intel?
    sha256 "d9509a899dbe724290fea655e6fa7ff558dddeba98bfa1657a95743ae43294b5"
    url "https://releases.mondoo.com/cnquery/8.3.1/cnquery_8.3.1_darwin_amd64.tar.gz"
  else
    sha256 "c072eb8faf81175d6ea1c6bec3eb3c27c14a0d76afb53ce204cc4661a40272ca"
    url "https://releases.mondoo.com/cnquery/8.3.1/cnquery_8.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

