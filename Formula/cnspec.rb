
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.16.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7727ab8f027ccab80629c83ba6e0b2eb390cd92a885c0f8c670b40560443b16e"
    url "https://releases.mondoo.com/cnspec/11.16.1/cnspec_11.16.1_darwin_amd64.tar.gz"
  else
    sha256 "e242a707368f8a26dba6a0ffcd8fbc556ded20899fe5ff54733f8f7152967eb9"
    url "https://releases.mondoo.com/cnspec/11.16.1/cnspec_11.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

