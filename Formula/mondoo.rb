
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.14.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "666405535f873fb255f9c86dfe768573f7ed748b98afe43135f6bb45e06f2477"
    url "https://releases.mondoo.com/mondoo/8.14.0/mondoo_8.14.0_darwin_amd64.tar.gz"
  else
    sha256 "666405535f873fb255f9c86dfe768573f7ed748b98afe43135f6bb45e06f2477"
    url "https://releases.mondoo.com/mondoo/8.14.0/mondoo_8.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

