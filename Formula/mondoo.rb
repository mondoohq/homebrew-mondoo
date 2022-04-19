
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.35.0"

  if Hardware::CPU.intel?
    sha256 "ef28d81ac9f2de8eba7040d66a3bf49b7e5b1fc34290944de6609007d57563ca"
    url "https://releases.mondoo.com/mondoo/5.35.0/mondoo_5.35.0_darwin_amd64.tar.gz"
  else
    sha256 "40e1c75a651370f0b773fcbd62624c258a1c4423726b8a705f4e6a919d940e2e"
    url "https://releases.mondoo.com/mondoo/5.35.0/mondoo_5.35.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

