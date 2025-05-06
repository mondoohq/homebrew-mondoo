
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.53.1"
  

  if Hardware::CPU.intel?
    sha256 "638470d6473b1a9ea3bc8e7b16d5b417046c05d48f38fe15191ebd3fcf4bff78"
    url "https://releases.mondoo.com/cnquery/11.53.1/cnquery_11.53.1_darwin_amd64.tar.gz"
  else
    sha256 "bdd24b1d67e9f83e64169ca9994c75a2d8d2dac9b1e08fe5232f82a1a24c93d9"
    url "https://releases.mondoo.com/cnquery/11.53.1/cnquery_11.53.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

