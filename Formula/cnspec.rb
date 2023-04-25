
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.7.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b42aa4680bccb86f3be87e26a251c140e93ae5521fac670bc6b345421378ef10"
    url "https://releases.mondoo.com/cnspec/8.7.0/cnspec_8.7.0_darwin_amd64.tar.gz"
  else
    sha256 "f3fca850f34cb7f631405ca0be22037f847a32f7ccb7e473dde1ae52c6ca1f5d"
    url "https://releases.mondoo.com/cnspec/8.7.0/cnspec_8.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

