
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.6.0"

  if Hardware::CPU.intel?
    sha256 "21962f731480d6ffe21c676dc2834f89e49b4c71ad81710a8df2ce131a783b46"
    url "https://releases.mondoo.com/mondoo/6.6.0/mondoo_6.6.0_darwin_amd64.tar.gz"
  else
    sha256 "ad83ca0d2abd12f88419cb26719bce123468f5500e0c4cc3cf4d008868e93941"
    url "https://releases.mondoo.com/mondoo/6.6.0/mondoo_6.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

