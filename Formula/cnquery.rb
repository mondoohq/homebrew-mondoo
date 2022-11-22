
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.5.0"

  if Hardware::CPU.intel?
    sha256 "5cf781eddfca0d8122822ca09da5d821c7f6f3a5aa3bbb15987b42f15ff5db26"
    url "https://releases.mondoo.com/cnquery/7.5.0/cnquery_7.5.0_darwin_amd64.tar.gz"
  else
    sha256 "b7f163eadc83001bd2fb74016045966912f4941fe729432c1e6d2d12d4878a43"
    url "https://releases.mondoo.com/cnquery/7.5.0/cnquery_7.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

