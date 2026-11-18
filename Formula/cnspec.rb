
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.12.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "e396e34eeeb97b48f981d8601500c349dbb0236f67ec77c1fc4562cf9a4b0043"
    url "https://releases.mondoo.com/cnspec/14.12.1/cnspec_14.12.1_darwin_amd64.tar.gz"
  else
    sha256 "955c9dfe9ac68f6af158fe091d1a60d6b2cf3783ce97d3e712d68a0face44262"
    url "https://releases.mondoo.com/cnspec/14.12.1/cnspec_14.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

