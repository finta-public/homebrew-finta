# Written by cli/homebrew/formula.mjs in finta-eng/finta on each CLI release;
# changes made here are overwritten.
class FintaCli < Formula
  desc "Finta from your terminal: your company's books, reports and scripts"
  homepage "https://www.finta.com"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-arm64/-/cli-darwin-arm64-0.3.1.tgz"
      sha256 "654d293e16ec31cf991b351ced9af394694d4647f9f2f71c47665e59f5729091"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-x64/-/cli-darwin-x64-0.3.1.tgz"
      sha256 "61f5f29a16e978b0aeb9041d50c20eb760c120a9ee70ab31b3870ac2119b9728"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-linux-arm64/-/cli-linux-arm64-0.3.1.tgz"
      sha256 "e69464f6dad84740cd9d033cc66616aed278355540df252299124c7df59d3d88"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-linux-x64/-/cli-linux-x64-0.3.1.tgz"
      sha256 "889cfdf39bca397397af5856f621c7b8c3ec8b377bb336d1f7a9f3b1d98d8905"
    end
  end

  def install
    # npm's tarball unpacks to package/, which Homebrew enters.
    bin.install "bin/finta"
    # Tab completion for bash, zsh, fish and PowerShell, from `finta completion <shell>`.
    generate_completions_from_executable(bin/"finta", shell_parameter_format: :cobra)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/finta --version")
  end
end
