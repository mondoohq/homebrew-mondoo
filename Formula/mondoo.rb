
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.14.1"

  if Hardware::CPU.intel?
    sha256 "90eb48a45e80679a741373b65fe953693e78f2afa599a8363d47a245676e8568"
    url "https://releases.mondoo.io/mondoo/5.14.1/mondoo_5.14.1_darwin_amd64.tar.gz"
  else
    sha256 "8be7fb5535bf4781c41d59cdf3badee1b1570e2c9e5c1f2e4821dbfaaa1702b6"
    url "https://releases.mondoo.io/mondoo/5.14.1/mondoo_5.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

