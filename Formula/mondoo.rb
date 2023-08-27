
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.24.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "694f273527cb749d8580a197b78e752406a5803fb402cf2abcbab0c977c6f6ce"
    url "https://releases.mondoo.com/mondoo/8.24.3/mondoo_8.24.3_darwin_amd64.tar.gz"
  else
    sha256 "694f273527cb749d8580a197b78e752406a5803fb402cf2abcbab0c977c6f6ce"
    url "https://releases.mondoo.com/mondoo/8.24.3/mondoo_8.24.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

