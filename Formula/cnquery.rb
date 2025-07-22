
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.64.0"
  

  if Hardware::CPU.intel?
    sha256 "8ef49f7538d5bb3eb0254cb6558403561e5c27a605278c175207ec8f34c58a9b"
    url "https://releases.mondoo.com/cnquery/11.64.0/cnquery_11.64.0_darwin_amd64.tar.gz"
  else
    sha256 "31aa09b41ad70ad275d5985664458893751c8899c81febae1892bd01be1f3e1d"
    url "https://releases.mondoo.com/cnquery/11.64.0/cnquery_11.64.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

