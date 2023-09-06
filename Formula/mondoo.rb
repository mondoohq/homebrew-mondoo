
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.26.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "58b8912979c2f001c067446736d9783c29b03ab93567a43215c57bece3894c9c"
    url "https://releases.mondoo.com/mondoo/8.26.0/mondoo_8.26.0_darwin_amd64.tar.gz"
  else
    sha256 "58b8912979c2f001c067446736d9783c29b03ab93567a43215c57bece3894c9c"
    url "https://releases.mondoo.com/mondoo/8.26.0/mondoo_8.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

