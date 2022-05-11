
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.2"

  if Hardware::CPU.intel?
    sha256 "f1f4715c0327ef14538017fda974b21f7890c4c2e26547bc42ac9ae9707caf2f"
    url "https://releases.mondoo.com/mondoo/5.38.2/mondoo_5.38.2_darwin_amd64.tar.gz"
  else
    sha256 "aeac362cac79a95d2a1815a30b75bb0f3d9afffa0874e36513956ed195659a4d"
    url "https://releases.mondoo.com/mondoo/5.38.2/mondoo_5.38.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

