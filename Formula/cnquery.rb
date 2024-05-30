
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.6.1"
  

  if Hardware::CPU.intel?
    sha256 "dc23b42fac9ae6ba36fad71c6960b9816c8d4dd329afc17cc8496241607f69de"
    url "https://releases.mondoo.com/cnquery/11.6.1/cnquery_11.6.1_darwin_amd64.tar.gz"
  else
    sha256 "463a18929abb9f0de53c0553408c8409cb8a0ab285bb96bb65e9c00c2362d13e"
    url "https://releases.mondoo.com/cnquery/11.6.1/cnquery_11.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

