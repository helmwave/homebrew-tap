# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.17.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.17.3/helmwave_0.17.3_darwin_amd64.tar.gz"
      sha256 "65c1931074ad5654a2d9b1ead6b0b81669a765fdfe23ead84138d0e9321c7ed0"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.17.3/helmwave_0.17.3_darwin_arm64.tar.gz"
      sha256 "9c5a2a0204e02e7745bca72029ee20482e9b68c68f687cc52ee31a0c69e5aa4d"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.17.3/helmwave_0.17.3_linux_arm64.tar.gz"
      sha256 "a59b374a757357aabd0ad9afbd3612dd564d3ebb181c6db0a95d2e1d245fdda5"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.17.3/helmwave_0.17.3_linux_amd64.tar.gz"
      sha256 "4450c4a4e3f37d6eeed1f94ea0632c6e9487afc9269919c88bda2263755bbfff"

      def install
        bin.install "helmwave"
      end
    end
  end
end
