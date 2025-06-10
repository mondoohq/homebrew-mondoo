
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.58.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "62cca35e2d7c93b04d14386e9c75f208fdf94b25982f5b8ff93a45442f7dd1fa"
    url "https://releases.mondoo.com/cnspec/11.58.0/cnspec_11.58.0_darwin_amd64.tar.gz"
  else
    sha256 "8612a477b0492d47fabab51cb4b606be912751edcb955fddab7472aad9c0b4aa"
    url "https://releases.mondoo.com/cnspec/11.58.0/cnspec_11.58.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

