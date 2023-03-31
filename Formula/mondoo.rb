
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.3.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "94fcd2cd056ada1038ab3447b5b8efb6704c078e9d4b908b7fd78175142a0f14"
    url "https://releases.mondoo.com/mondoo/8.3.1/mondoo_8.3.1_darwin_amd64.tar.gz"
  else
    sha256 "94fcd2cd056ada1038ab3447b5b8efb6704c078e9d4b908b7fd78175142a0f14"
    url "https://releases.mondoo.com/mondoo/8.3.1/mondoo_8.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

