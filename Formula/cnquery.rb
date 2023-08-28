
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.25.0"
  

  if Hardware::CPU.intel?
    sha256 "37c94da8adcfa08929030d93fd99da373d80f8e47b33354b1719a666ec76d34e"
    url "https://releases.mondoo.com/cnquery/8.25.0/cnquery_8.25.0_darwin_amd64.tar.gz"
  else
    sha256 "ebc81e8fb642f0ea52faa9265812ed7c4868c1b0fefa8505e5aceea32cae95b1"
    url "https://releases.mondoo.com/cnquery/8.25.0/cnquery_8.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

