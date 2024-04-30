
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.2.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ea254cbc1889285bc02bd5a6eb2e4d4e2cbc4ba582f9bdfa3922d04fa87c006f"
    url "https://releases.mondoo.com/cnspec/11.2.0/cnspec_11.2.0_darwin_amd64.tar.gz"
  else
    sha256 "11347084ba01f04d825ed7df64675c917e1ddb9f06067dde2ca49e47afb7b5b8"
    url "https://releases.mondoo.com/cnspec/11.2.0/cnspec_11.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

