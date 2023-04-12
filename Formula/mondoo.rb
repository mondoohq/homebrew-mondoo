
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.5.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "3acf73976250090c0896145c1a0cf04db6597e5c591850f1884f80a503a2f54e"
    url "https://releases.mondoo.com/mondoo/8.5.1/mondoo_8.5.1_darwin_amd64.tar.gz"
  else
    sha256 "3acf73976250090c0896145c1a0cf04db6597e5c591850f1884f80a503a2f54e"
    url "https://releases.mondoo.com/mondoo/8.5.1/mondoo_8.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

