
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.16.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "aef28cc245bc999bccccd688e65e8a3e11b01b25c7d78c054ab4cf0a9a3edafb"
    url "https://releases.mondoo.com/cnspec/12.16.0/cnspec_12.16.0_darwin_amd64.tar.gz"
  else
    sha256 "89b1f00fa3b1638fd3c81af26f2bb4bd78ab1f6e886c458db805ec820593565a"
    url "https://releases.mondoo.com/cnspec/12.16.0/cnspec_12.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

