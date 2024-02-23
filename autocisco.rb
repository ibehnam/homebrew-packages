# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Autocisco < Formula
  desc "Automatically connects to University VPN (currently CMU's Cisco VPN) using your credentials"
  homepage "https://aplaceofmind.notion.site/AutoCisco-My-First-Project-in-Rust-c40c831d5eb0447ea9246c0514558195?pvs=74"
  url "https://github.com/ibehnam/AutoCisco/releases/download/stable-0.1.5/autocisco-mac.tar.gz"
  sha256 "29527f463157a3734c88a0cb9371f23e004322f3fe299ab560dc84643af97389"
  version "0.1.5"

  def install
    bin.install "autocisco"
  end
end
