
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.20.0"
  

  if Hardware::CPU.intel?
    sha256 "73b25657eae77e261a97938069310994eb53afd4189e58fe26f095a76aeec861"
    url "https://releases.mondoo.com/cnquery/11.20.0/cnquery_11.20.0_darwin_amd64.tar.gz"
  else
    sha256 "ec9c834e84a80f78cad884e5dbcdde928b8919d514be9fdd3893aaa66a1fd328"
    url "https://releases.mondoo.com/cnquery/11.20.0/cnquery_11.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

