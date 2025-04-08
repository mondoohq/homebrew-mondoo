
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.49.0"
  

  if Hardware::CPU.intel?
    sha256 "a4a438d334bbc8f6671db92cf73e8869899220841f1fd83c6f1cadd54789af86"
    url "https://releases.mondoo.com/cnquery/11.49.0/cnquery_11.49.0_darwin_amd64.tar.gz"
  else
    sha256 "f2e41110d20d5374b1fc7797319c108d82512ac430d1105137be18cfa96d9a54"
    url "https://releases.mondoo.com/cnquery/11.49.0/cnquery_11.49.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

