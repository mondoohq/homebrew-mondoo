
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.22.0"

  if Hardware::CPU.intel?
    sha256 "3cd877b358bb29edd669853566ef426181c1cafc1a7ace41a623d9d5816fb893"
    url "https://releases.mondoo.io/mondoo/5.22.0/mondoo_5.22.0_darwin_amd64.tar.gz"
  else
    sha256 "a7fa8a4364599d70f9a7d37f5cd6baf2763b42974f1e9e9c30bc516e83c54b98"
    url "https://releases.mondoo.io/mondoo/5.22.0/mondoo_5.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

