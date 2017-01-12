class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/8percent/github-flow-sugar/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "ea3324e8ea8cec9b4959357beec0c0f44e3bdab788003b64163146b12ebd4c4b"

  COMMANDS = %w(git-feature git-pr git-release)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
