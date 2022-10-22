
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.0.2"

  if Hardware::CPU.intel?
    sha256 "298e284480d32dc96a751eb7b0d86bc541410598d55ac36c56709b81a18ae20c"
    url "https://releases.mondoo.com/mondoo/7.0.2/mondoo_7.0.2_darwin_amd64.tar.gz"
  else
    sha256 "39f7b2b26a46597cb3c0008e6dd13e765bc8cedfd678a7cacf721e56b6a70832"
    url "https://releases.mondoo.com/mondoo/7.0.2/mondoo_7.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

