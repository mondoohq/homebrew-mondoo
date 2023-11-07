
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.6.0"
  

  if Hardware::CPU.intel?
    sha256 "a62ebe5ac0cd16d6f1c00b04cf7fd961f748879706973dc6c13042ee20a15113"
    url "https://releases.mondoo.com/cnquery/9.6.0/cnquery_9.6.0_darwin_amd64.tar.gz"
  else
    sha256 "7faa02a2110a49deb7810ffbb48f0dadc61b5b5cdaee518315f33da994244c43"
    url "https://releases.mondoo.com/cnquery/9.6.0/cnquery_9.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

