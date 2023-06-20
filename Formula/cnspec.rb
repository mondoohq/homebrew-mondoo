
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.15.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "8e43ce692f83e64d13edbf9882781b33e97ff2af875f240092a5f35372583bb1"
    url "https://releases.mondoo.com/cnspec/8.15.0/cnspec_8.15.0_darwin_amd64.tar.gz"
  else
    sha256 "d5f2a1f9c8d9df5308fcb337203f32c227014e9dbc46d420bea7ac514dba2de0"
    url "https://releases.mondoo.com/cnspec/8.15.0/cnspec_8.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

