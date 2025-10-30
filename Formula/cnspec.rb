
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.7.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c9de7a4c939a941856d709c796db90211bb94b56e95b49a46885361cdd6266dd"
    url "https://releases.mondoo.com/cnspec/12.7.1/cnspec_12.7.1_darwin_amd64.tar.gz"
  else
    sha256 "6585ffb9c47e44ba799a8f95220f6e06159cc64059af0bf8b21c688280b2672b"
    url "https://releases.mondoo.com/cnspec/12.7.1/cnspec_12.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

