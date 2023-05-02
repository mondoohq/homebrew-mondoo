
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.8.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "013fa02fee6ddfe360230314d711819b61ddcd40a28bcaf5595b2dbf7b83c9d6"
    url "https://releases.mondoo.com/mondoo/8.8.0/mondoo_8.8.0_darwin_amd64.tar.gz"
  else
    sha256 "013fa02fee6ddfe360230314d711819b61ddcd40a28bcaf5595b2dbf7b83c9d6"
    url "https://releases.mondoo.com/mondoo/8.8.0/mondoo_8.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

