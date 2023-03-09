
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.0.0"

  if Hardware::CPU.intel?
    sha256 "93ecfb0f5c05422d0af4e91251b46181143aa17807783d97e3b44ac69b4198e5"
    url "https://releases.mondoo.com/cnquery/8.0.0/cnquery_8.0.0_darwin_amd64.tar.gz"
  else
    sha256 "a9eb27a204eff521f180593d7c323858938200b943143eefa3b6156ab5688cda"
    url "https://releases.mondoo.com/cnquery/8.0.0/cnquery_8.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

