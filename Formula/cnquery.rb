
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.10.0"
  

  if Hardware::CPU.intel?
    sha256 "e96a1586e9dbc688b0df8826d9db8578abd3e8753e660c90f59e8bffb64f46bb"
    url "https://releases.mondoo.com/cnquery/8.10.0/cnquery_8.10.0_darwin_amd64.tar.gz"
  else
    sha256 "e266b283b33a8524f7b9ad2196e6af070f168037d60b0f2664950159a5aa719c"
    url "https://releases.mondoo.com/cnquery/8.10.0/cnquery_8.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

