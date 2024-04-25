
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.1.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0c15f42ab982f749a741db190661f8a03450f79afb8bc86dd65aa7927b4b437d"
    url "https://releases.mondoo.com/cnspec/11.1.1/cnspec_11.1.1_darwin_amd64.tar.gz"
  else
    sha256 "a82ade7b27b694ba93cfcf4868cc472195cf406033d017ba81e3fba85038c271"
    url "https://releases.mondoo.com/cnspec/11.1.1/cnspec_11.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

