
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.5.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "64996640f234af8de5e3cdeacdae5585906016d7e29ade99fbd7ab6f4d311aaa"
    url "https://releases.mondoo.com/mondoo/8.5.2/mondoo_8.5.2_darwin_amd64.tar.gz"
  else
    sha256 "64996640f234af8de5e3cdeacdae5585906016d7e29ade99fbd7ab6f4d311aaa"
    url "https://releases.mondoo.com/mondoo/8.5.2/mondoo_8.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

