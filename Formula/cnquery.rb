
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.47.1"
  

  if Hardware::CPU.intel?
    sha256 "dfdaf2a73f1df29ca247dae9d0156747945fe205681a7939f0fed4eed1564214"
    url "https://releases.mondoo.com/cnquery/11.47.1/cnquery_11.47.1_darwin_amd64.tar.gz"
  else
    sha256 "6336cb9dc5f3761e0656fabc1c61c1334c04edb6f1d6276b2441360373494605"
    url "https://releases.mondoo.com/cnquery/11.47.1/cnquery_11.47.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

