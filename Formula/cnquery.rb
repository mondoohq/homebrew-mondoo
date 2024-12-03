
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.33.0"
  

  if Hardware::CPU.intel?
    sha256 "e0f73f4f89224d309ec81a0489f85e12eef53967e45b6b91a97bb948e2a26df7"
    url "https://releases.mondoo.com/cnquery/11.33.0/cnquery_11.33.0_darwin_amd64.tar.gz"
  else
    sha256 "b894e174238e9e570ff3fb93a2834ffcfd44d274bad1b95a5393931411fc4016"
    url "https://releases.mondoo.com/cnquery/11.33.0/cnquery_11.33.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

