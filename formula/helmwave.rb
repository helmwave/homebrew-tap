# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.2/helmwave_0.19.2_darwin_amd64.tar.gz"
      sha256 "40d2ed44d78998524b5fd8a4ef3ce2950ca7e534b5d888577e480f44ac822b2c"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.2/helmwave_0.19.2_darwin_arm64.tar.gz"
      sha256 "b6e160886dc4d00271a8ef78eae92a6ef417e3e033cedbadbfc5ebdbda767d8e"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.2/helmwave_0.19.2_linux_amd64.tar.gz"
      sha256 "9d1ee8ffbc24bb2d06da40d76d7c8aea540bc6838ff1f0aeff0f19df2d1a8a2b"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.2/helmwave_0.19.2_linux_arm64.tar.gz"
      sha256 "bfeebb78d6ef7df069ff965db8c5d27e2df3920ff24a00d27d0eb916d9166b07"

      def install
        bin.install "helmwave"
      end
    end
  end
end
