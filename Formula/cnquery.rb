
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.7.1"
  

  if Hardware::CPU.intel?
    sha256 "12d988be8b24fab4eb70706cab593807987048e54a1a9fb423ed5242779b069a"
    url "https://releases.mondoo.com/cnquery/10.7.1/cnquery_10.7.1_darwin_amd64.tar.gz"
  else
    sha256 "55090a226c69acd48a036e84b5690bfa221e2801e3e2c197c13cb24a2844aa8f"
    url "https://releases.mondoo.com/cnquery/10.7.1/cnquery_10.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

