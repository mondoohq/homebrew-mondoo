
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.3.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7436f48959f49e07573a3ad8f4a15d85558a00993d093c22b06c2f7327ff7762"
    url "https://releases.mondoo.com/mondoo/8.3.0/mondoo_8.3.0_darwin_amd64.tar.gz"
  else
    sha256 "db164649c1b705de33b7957e94bf883ebdb9eaff8641fe0088750acf87249013"
    url "https://releases.mondoo.com/mondoo/8.3.0/mondoo_8.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

