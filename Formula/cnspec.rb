
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.7.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0d2c338cca1fb5f7ed326bd26a1bb58038b9257a4f22ed65cf4beb9a840bd666"
    url "https://releases.mondoo.com/cnspec/11.7.3/cnspec_11.7.3_darwin_amd64.tar.gz"
  else
    sha256 "78fa0538b9a270d100784ef65b730e6a89430ec8f1879f2854ba72fb9cd4eec7"
    url "https://releases.mondoo.com/cnspec/11.7.3/cnspec_11.7.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

