class Anthropenai < Formula
  desc "Anthropic-to-OpenAI Proxy"
  homepage "https://github.com/ibehnam/anthropenai"
  url "https://github.com/ibehnam/anthropenai.git", branch: "main"
  version "1.0.0"

  depends_on "node"

  def install
    system "npm", "install"
    system "npm", "run", "build"

    # Install all files to the cellar
    prefix.install Dir["*"]

    # Create the symlink for the CLI
    bin.install_symlink prefix/"dist/cli.js" => "anthropenai"
  end

  service do
    run [Formula["node"].opt_bin/"node", prefix/"dist/index.js"]
    working_dir prefix
    keep_alive true
    log_path var/"log/anthropenai.log"
    error_log_path var/"log/anthropenai.err.log"
  end

  def caveats
    <<~EOS
      The proxy uses a config.json file. You can find it in:
        #{prefix}/config.json

      To start the background service:
        brew services start anthropenai
    EOS
  end
end
