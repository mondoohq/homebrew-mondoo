
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.28.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "dd0391eaf7a1c6e3dd1d86f9f3fef58f17a4cd876bf6667a6a45e4f406ba5390"
    url "https://releases.mondoo.com/cnspec/11.28.0/cnspec_11.28.0_darwin_amd64.tar.gz"
  else
    sha256 "eecdff21b2c14b53aec390de2c86d42e678ef2b6974a85b6538287aebd56f424"
    url "https://releases.mondoo.com/cnspec/11.28.0/cnspec_11.28.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

