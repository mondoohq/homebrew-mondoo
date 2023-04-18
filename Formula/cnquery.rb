
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.6.0"
  

  if Hardware::CPU.intel?
    sha256 "5bd74cc37eea2635f92ce79bb0a89cb321431a6e404219f6bdc4a6dc4302ae15"
    url "https://releases.mondoo.com/cnquery/8.6.0/cnquery_8.6.0_darwin_amd64.tar.gz"
  else
    sha256 "04bf7663e473c6ef046670aaddee6c74027e7ab89b3928ec21a0dbc823ed403e"
    url "https://releases.mondoo.com/cnquery/8.6.0/cnquery_8.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

