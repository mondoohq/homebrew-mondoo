
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.21.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b9dbe7a5b3c4f656bdd7b4f3b44d1c6af2e4f11b959176ac880daed7b3a4e3e6"
    url "https://releases.mondoo.com/cnspec/11.21.1/cnspec_11.21.1_darwin_amd64.tar.gz"
  else
    sha256 "9a6c2bfa5b32f6e251ef8a98b84cd619e01192b47f884ca3dbbbd2bbeff5dd61"
    url "https://releases.mondoo.com/cnspec/11.21.1/cnspec_11.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

