
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.66.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "906322f5840d2aa98bb94b32d0a5ceba54cddc49528131106df32e94cf0bc00d"
    url "https://releases.mondoo.com/cnspec/11.66.0/cnspec_11.66.0_darwin_amd64.tar.gz"
  else
    sha256 "b58637b8d4debd413c43f2c26fa826a2aac7dccf1de42b32afee218713c1efc9"
    url "https://releases.mondoo.com/cnspec/11.66.0/cnspec_11.66.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

