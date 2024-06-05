
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.7.3"
  

  if Hardware::CPU.intel?
    sha256 "62dee7236f49b0299a8e0d327ca2010444742f352295b03080fce42f85f29726"
    url "https://releases.mondoo.com/cnquery/11.7.3/cnquery_11.7.3_darwin_amd64.tar.gz"
  else
    sha256 "43862cf2be79c22a23e179efdbbf243af5b2b7c4e6cbee05a1c89da63a0c25c6"
    url "https://releases.mondoo.com/cnquery/11.7.3/cnquery_11.7.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

