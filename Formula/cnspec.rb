
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.6.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e3248e4d6566b02b56f8e0debd0de08c0f6f02799a3d8ccd8177a2ef817d5d25"
    url "https://releases.mondoo.com/cnspec/8.6.0/cnspec_8.6.0_darwin_amd64.tar.gz"
  else
    sha256 "439d8e453286c253dce5f0c225de3af0ebd3deedb9c438e4ff97015e009d1fd0"
    url "https://releases.mondoo.com/cnspec/8.6.0/cnspec_8.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

