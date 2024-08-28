
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.19.1"
  

  if Hardware::CPU.intel?
    sha256 "699606e525cf6208e0b576a2a6f0dc8ca3eaf065b1e33b5ef1bd7caac9a2f4af"
    url "https://releases.mondoo.com/cnquery/11.19.1/cnquery_11.19.1_darwin_amd64.tar.gz"
  else
    sha256 "7c9fdbc584f8548d6eee0c5228ffa259543342721f7bf569a3bee1afd4e26dd7"
    url "https://releases.mondoo.com/cnquery/11.19.1/cnquery_11.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

