
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.23.1"
  

  if Hardware::CPU.intel?
    sha256 "947bc53172e8257ca98e22a11627e20df2dc334f51129b765cd4c976c38931bd"
    url "https://releases.mondoo.com/cnquery/8.23.1/cnquery_8.23.1_darwin_amd64.tar.gz"
  else
    sha256 "ac81f94cd491833b34a3e117a00862b380c80171d36222b781570ea917a9d9b7"
    url "https://releases.mondoo.com/cnquery/8.23.1/cnquery_8.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

