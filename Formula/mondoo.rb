
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.26.0"

  if Hardware::CPU.intel?
    sha256 "da2861a2c1ec8d8b87e8ac1e3a43a9934bcbbb8e5871b78024eba81df634fb15"
    url "https://releases.mondoo.io/mondoo/5.26.0/mondoo_5.26.0_darwin_amd64.tar.gz"
  else
    sha256 "b56540181831edd7f9f311223c76a673b157e59bcc3ea629685759762544299a"
    url "https://releases.mondoo.io/mondoo/5.26.0/mondoo_5.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

