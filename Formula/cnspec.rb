
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.1.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ea234e7e53a8e0b3761ad75dff2e8f6d3fb09cd2854667a0eae59ab78e092e64"
    url "https://releases.mondoo.com/cnspec/10.1.3/cnspec_10.1.3_darwin_amd64.tar.gz"
  else
    sha256 "ae4cec13d52687210c4b0bcacf715a0a9db5814f7a90f0cba0595db7c49f42d2"
    url "https://releases.mondoo.com/cnspec/10.1.3/cnspec_10.1.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

