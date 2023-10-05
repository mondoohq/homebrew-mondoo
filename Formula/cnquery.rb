# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.0.0"
  

  if Hardware::CPU.intel?
    sha256 "c24bf0622ae8fb90a4686744c26303995cd946564a57d053572290bf430e4cc2"
    url "https://releases.mondoo.com/cnquery/9.0.0/cnquery_9.0.0_darwin_amd64.tar.gz"
  else
    sha256 "cb7352cc468efab446dca66fd19b0d2786eee43c1505164d126fc3fb770afc92"
    url "https://releases.mondoo.com/cnquery/9.0.0/cnquery_9.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

