
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.43.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4cffa53ed55700f1fe6e1cf63161bc9cfef6e3f62f77c66a2c764cc5980c124e"
    url "https://releases.mondoo.com/cnspec/11.43.0/cnspec_11.43.0_darwin_amd64.tar.gz"
  else
    sha256 "0c4ac2096401e1f316a157e625776119c040346c529b4998818c2c03efd41950"
    url "https://releases.mondoo.com/cnspec/11.43.0/cnspec_11.43.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

