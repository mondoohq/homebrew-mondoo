
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.7.0"
  

  if Hardware::CPU.intel?
    sha256 "7afe2e26789e03bfcaf8068978406b73cd33e43d3e1f7d90a567d422b6e31883"
    url "https://releases.mondoo.com/cnquery/8.7.0/cnquery_8.7.0_darwin_amd64.tar.gz"
  else
    sha256 "3e4959c49ab85fcdefb12d3fffb6e62351cdf79b1a823cd5b9793be80acdae44"
    url "https://releases.mondoo.com/cnquery/8.7.0/cnquery_8.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

