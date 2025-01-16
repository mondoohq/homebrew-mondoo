
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.37.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5181078c8d421d2458782210e97f6f03939f0a4295be96c5b70aab05ae9af23a"
    url "https://releases.mondoo.com/cnspec/11.37.1/cnspec_11.37.1_darwin_amd64.tar.gz"
  else
    sha256 "356a1e52a0949e55743a7579e7128d699f5475a5b3037cf0128a81cb87291719"
    url "https://releases.mondoo.com/cnspec/11.37.1/cnspec_11.37.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

