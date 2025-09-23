
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.2.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7a3e5e7b6caab88b28bf0f1327de7d58e5bf72e2339f120de2cdea54b6cb2915"
    url "https://releases.mondoo.com/cnspec/12.2.0/cnspec_12.2.0_darwin_amd64.tar.gz"
  else
    sha256 "0cc5c0430d0fe118287748bd9ef9201327c61241eb8ff9cd541655da235a266b"
    url "https://releases.mondoo.com/cnspec/12.2.0/cnspec_12.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

