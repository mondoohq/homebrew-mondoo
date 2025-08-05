
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.66.0"
  

  if Hardware::CPU.intel?
    sha256 "df6db758a0a83941024ff028820c4da8d60cbab81dcd98192b67d03adabe0969"
    url "https://releases.mondoo.com/cnquery/11.66.0/cnquery_11.66.0_darwin_amd64.tar.gz"
  else
    sha256 "ab1ebe31813bcdf82ef748591e214d016cc6b1c1a673067fca7568bff3f9d861"
    url "https://releases.mondoo.com/cnquery/11.66.0/cnquery_11.66.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

