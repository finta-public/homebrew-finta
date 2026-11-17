# Written by cli/homebrew/formula.mjs in finta-eng/finta on each CLI release;
# changes made here are overwritten.
class FintaCli < Formula
  desc "Finta from your terminal: your company's books, reports and scripts"
  homepage "https://www.finta.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-arm64/-/cli-darwin-arm64-0.3.0.tgz"
      sha256 "e583d0cef323921400ef1734294ddfab7de1f79c383d2aeb0be2256ff3bd3daf"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-darwin-x64/-/cli-darwin-x64-0.3.0.tgz"
      sha256 "c2fab65c721c4d4bf1e986442aee7797a1350ef6ea9b46d7d719baf82e7a2fcd"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@fintahq/cli-linux-arm64/-/cli-linux-arm64-0.3.0.tgz"
      sha256 "5828c98d0523b1a24fb72b94224fb0edaf3940469b8b20145391a6d98aba51a6"
    end
    on_intel do
      url "https://registry.npmjs.org/@fintahq/cli-linux-x64/-/cli-linux-x64-0.3.0.tgz"
      sha256 "8376bee7a364fedbc3b30c8700cef0d8ac0aa5be52e01cedad9d000906d63340"
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
