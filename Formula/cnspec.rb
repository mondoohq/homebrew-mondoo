
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.51.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "48429aaf289da4daab1d400df179efc37c1dce17fcda0494e879ee3becc5d8a0"
    url "https://releases.mondoo.com/cnspec/11.51.2/cnspec_11.51.2_darwin_amd64.tar.gz"
  else
    sha256 "d9b8680e863d8c61f196cecd3ff7cf806ef3062d06ce2a20c599cbc29077806a"
    url "https://releases.mondoo.com/cnspec/11.51.2/cnspec_11.51.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

