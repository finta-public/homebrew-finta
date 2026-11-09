# Written by cli/homebrew/formula.mjs in finta-eng/finta on each CLI release;
# changes made here are overwritten.
class FintaCli < Formula
  desc "Finta from your terminal: your company's books, reports and scripts"
  homepage "https://www.finta.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-arm64/-/cli-darwin-arm64-0.2.0.tgz"
      sha256 "ca59a87c6bdfa5e7698cdbaa19c1e2f06769ffadd02cd16c2cd0068d609027c6"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-x64/-/cli-darwin-x64-0.2.0.tgz"
      sha256 "0eedfc900a513488e834783d99655943d6bd17e6a86ac662a2509fbad19b5616"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-linux-arm64/-/cli-linux-arm64-0.2.0.tgz"
      sha256 "e2ca3dcaaeb33c43cb84c31a4ebe392984eb7380cc63fc186b6e9ce22c3297f6"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-linux-x64/-/cli-linux-x64-0.2.0.tgz"
      sha256 "c364aface2765135dd16bbd538fd038b6443248078d0e0ecfcca2b964ef1c32e"
    end
  end

  def install
    # npm's tarball unpacks to package/, which Homebrew enters.
    bin.install "bin/finta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/finta --version")
  end
end
