
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.17.0"

  if Hardware::CPU.intel?
    sha256 "07caf3a9dbc2d9f073ae0df8f8e8c3a212fbf617cff7f8e5e60ab3197bc34d89"
    url "https://releases.mondoo.com/mondoo/7.17.0/mondoo_7.17.0_darwin_amd64.tar.gz"
  else
    sha256 "3d44d6831a42c33c42741b5078529e7f386d6db1a5ccc76e8c0bb843b12f9577"
    url "https://releases.mondoo.com/mondoo/7.17.0/mondoo_7.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

