
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.24.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "00d1e6ffbcd60bc61276d2f54054e8b08518cf1ddb42cda14da3170747b84599"
    url "https://releases.mondoo.com/mondoo/8.24.0/mondoo_8.24.0_darwin_amd64.tar.gz"
  else
    sha256 "00d1e6ffbcd60bc61276d2f54054e8b08518cf1ddb42cda14da3170747b84599"
    url "https://releases.mondoo.com/mondoo/8.24.0/mondoo_8.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

