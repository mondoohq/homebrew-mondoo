
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.23.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "69efb7d074a2d2fc4abd46d97e64a8c20e9a12f545ce87c45ae66b404c5ac97b"
    url "https://releases.mondoo.com/mondoo/8.23.1/mondoo_8.23.1_darwin_amd64.tar.gz"
  else
    sha256 "69efb7d074a2d2fc4abd46d97e64a8c20e9a12f545ce87c45ae66b404c5ac97b"
    url "https://releases.mondoo.com/mondoo/8.23.1/mondoo_8.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

