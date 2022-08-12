# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.21.0/helmwave_0.21.0_darwin_arm64.tar.gz"
      sha256 "e0e9ddcbb8129521df33c899c0fe2dc1b1d120f2bf0c45bd0523fe1585459ed7"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.21.0/helmwave_0.21.0_darwin_amd64.tar.gz"
      sha256 "d761a8d2c93cb4b1dd8c3820733b53314a280e99902412946d4ce26ff3c8de28"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.21.0/helmwave_0.21.0_linux_amd64.tar.gz"
      sha256 "cdfc27173f6ab0651c7917fde8d80bd5c99a5a517451dd249b2031c9c2910083"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.21.0/helmwave_0.21.0_linux_arm64.tar.gz"
      sha256 "dd8cffbef8f71ca6fc336132dac36e2b06b53d6e2a4d1894551c74dfa26bd8c7"

      def install
        bin.install "helmwave"
      end
    end
  end

  head "https://github.com/helmwave/helmwave.git", branch: "main"

  test do
    system "#{bin}/program --version"
  end
end
