
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.5.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7fc0bfe4d7855ce0e9dffd29c06c924e1309c559b388c024e062a6c5261d996d"
    url "https://releases.mondoo.com/mondoo/8.5.2/mondoo_8.5.2_darwin_amd64.tar.gz"
  else
    sha256 "7fc0bfe4d7855ce0e9dffd29c06c924e1309c559b388c024e062a6c5261d996d"
    url "https://releases.mondoo.com/mondoo/8.5.2/mondoo_8.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

