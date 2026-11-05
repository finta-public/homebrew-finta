# Written by cli/homebrew/formula.mjs in finta-eng/finta on each CLI release;
# changes made here are overwritten.
class FintaCli < Formula
  desc "Finta from your terminal: your company's books, reports and scripts"
  homepage "https://www.finta.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-arm64/-/cli-darwin-arm64-0.1.1.tgz"
      sha256 "0d7267ed98e03a57098813e9fb8fcb1b74330c793b87656238c5e37cc0a8b5ec"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-x64/-/cli-darwin-x64-0.1.1.tgz"
      sha256 "f830fe65eac10dd42acd443eb81ae3c1adf7cc77eafb0653c5d8881e8b345bf1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-linux-arm64/-/cli-linux-arm64-0.1.1.tgz"
      sha256 "45d6dc7b0c62911b612d863389bec6a2a06fc994b8fd4143cdd4fad7a822f5b3"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-linux-x64/-/cli-linux-x64-0.1.1.tgz"
      sha256 "5f9c3ed644d4a200fecaca624ba5019ac43a76f84df1e005362087c377669240"
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
