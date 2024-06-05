
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.7.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "97d1cb5347958a6631120581058b7074d9768f9bed079d4355622410ed73c0f0"
    url "https://releases.mondoo.com/cnspec/11.7.2/cnspec_11.7.2_darwin_amd64.tar.gz"
  else
    sha256 "342d6f2e7eccfeb093c5e89faee36514a3935b685b6f35c4a3b745fa6ecff2f1"
    url "https://releases.mondoo.com/cnspec/11.7.2/cnspec_11.7.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

