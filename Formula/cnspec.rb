
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.9.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5d2a3b7fb82351a2ad568a9a2104379421d579ae5ef42bc2e286504e639046cd"
    url "https://releases.mondoo.com/cnspec/9.9.0/cnspec_9.9.0_darwin_amd64.tar.gz"
  else
    sha256 "92ddbac873697df94608d8e2b9da25971189e7b4301fe44f3490c54b743f4702"
    url "https://releases.mondoo.com/cnspec/9.9.0/cnspec_9.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

