# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Autocisco < Formula
  desc "Automatically connects to University VPN (currently CMU's Cisco VPN) using your credentials"
  homepage "https://aplaceofmind.notion.site/AutoCisco-My-First-Project-in-Rust-c40c831d5eb0447ea9246c0514558195?pvs=74"
  url "https://github.com/ibehnam/AutoCisco/releases/download/stable-0.1.5/autocisco-mac.tar.gz"
  sha256 "a91ee0e16890b0bffa9fdf25f287f9e352a69e68d00481921cf29f23c45aac63"
  version "0.1.5"

  def install
    bin.install "autocisco"
  end
end
