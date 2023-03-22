
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.2.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "981ff04aded0a4e6ec55bb32687152c23cfecefd7d0787e54ed0cb6570c3f84a"
    url "https://releases.mondoo.com/mondoo/8.2.0/mondoo_8.2.0_darwin_amd64.tar.gz"
  else
    sha256 "981ff04aded0a4e6ec55bb32687152c23cfecefd7d0787e54ed0cb6570c3f84a"
    url "https://releases.mondoo.com/mondoo/8.2.0/mondoo_8.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

