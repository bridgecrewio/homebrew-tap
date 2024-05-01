# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.194"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.194/yor_0.1.194_darwin_amd64.tar.gz"
      sha256 "f05e36aaf4112e572ec58a34e89c8f6bb1d4a5960f6d7b80cd53fc583da37f66"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.194/yor_0.1.194_darwin_arm64.tar.gz"
      sha256 "563ffa6f6c372d037d259dbee96756d715c51ca9b9bdf168eb81ca33b3ecb89c"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.194/yor_0.1.194_linux_amd64.tar.gz"
      sha256 "2df26c78827af7ba75dd11f8aadfc280c0dc4fb6b95886c4679072f7a2218d04"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.194/yor_0.1.194_linux_arm64.tar.gz"
      sha256 "5bbf5d35f385d64e735ece765e4337ec7028db2fb04d6de27606835889ccd1b5"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
