# Written by cli/homebrew/formula.mjs in finta-eng/finta on each CLI release;
# changes made here are overwritten.
class FintaCli < Formula
  desc "Finta from your terminal: your company's books, reports and scripts"
  homepage "https://www.finta.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-arm64/-/cli-darwin-arm64-0.1.2.tgz"
      sha256 "f058cdbbd294612b3c24a32ec0aa0bd4f77c3f252c1d438396173fe7468d4644"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-x64/-/cli-darwin-x64-0.1.2.tgz"
      sha256 "4f776e0d483319038a77a236c817d6f00a261099985f3e61b263baf06d343d1f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-linux-arm64/-/cli-linux-arm64-0.1.2.tgz"
      sha256 "93fd2b6d6d69cc0ba8593ff45d3165c98dc993af3e7318cd3a183e57e1fedec0"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-linux-x64/-/cli-linux-x64-0.1.2.tgz"
      sha256 "37e3830c543adefb108404a2accf3221f6b31a7eca832240925cc3303110ffa1"
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
