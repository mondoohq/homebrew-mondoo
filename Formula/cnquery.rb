
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.12.1"
  

  if Hardware::CPU.intel?
    sha256 "b0701e5044eb92be86286327ac2fbf3c70a18fe113819aff8093c87ffa97343d"
    url "https://releases.mondoo.com/cnquery/9.12.1/cnquery_9.12.1_darwin_amd64.tar.gz"
  else
    sha256 "ee3b805107434b45a06f9e6af2682dcee1729ebbbea644f7be0ff63f27bd6e2a"
    url "https://releases.mondoo.com/cnquery/9.12.1/cnquery_9.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

