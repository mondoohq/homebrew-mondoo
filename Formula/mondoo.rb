
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.36.2"

  if Hardware::CPU.intel?
    sha256 "9535c06ac35476da064737466d16cb573cf74e3db99bc358be9cb18931729544"
    url "https://releases.mondoo.com/mondoo/5.36.2/mondoo_5.36.2_darwin_amd64.tar.gz"
  else
    sha256 "c0aa655473651528eb9a871e62ca12ae65608d4eb274c34c9642d08680d4ead9"
    url "https://releases.mondoo.com/mondoo/5.36.2/mondoo_5.36.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

