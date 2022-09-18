
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "6.18.0-alpha2"

  if Hardware::CPU.intel?
    sha256 "95e188a683b79aa095042ce81a0b62286a097fd180b73abb15bdbca16dac9060"
    url "https://releases.mondoo.com/cnquery/6.18.0-alpha2/cnquery_6.18.0-alpha2_darwin_amd64.tar.gz"
  else
    sha256 "b2082598c9972ca21148b2a98e96e27b16ebffd692bf52ee391876658fa02967"
    url "https://releases.mondoo.com/cnquery/6.18.0-alpha2/cnquery_6.18.0-alpha2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

