
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.2.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "7e8448d2e54afe2186d7d23ea2478d57874cf1fc55a37ec588250bc3e98d8b74"
    url "https://releases.mondoo.com/cnspec/14.2.0/cnspec_14.2.0_darwin_amd64.tar.gz"
  else
    sha256 "850221bba27d2b5e5a3374ff5ce92a7f496676a0a096a48d309ea85a4648fc45"
    url "https://releases.mondoo.com/cnspec/14.2.0/cnspec_14.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

