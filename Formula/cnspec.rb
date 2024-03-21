
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.8.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "28a2857f6a506aa135feb98a34895a8753b4c924a0fea562a650137b8fa88119"
    url "https://releases.mondoo.com/cnspec/10.8.4/cnspec_10.8.4_darwin_amd64.tar.gz"
  else
    sha256 "fd3090485d631697ab0f95a8c87ca563fb52942aad28c7adc4c8698622a885d4"
    url "https://releases.mondoo.com/cnspec/10.8.4/cnspec_10.8.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

