class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/8percent/github-flow-sugar/archive/v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "b31e27bebdc0b9684e1d123fede06fd79e9000dcc6c4ba1808bb668fc64ef869"

  COMMANDS = %w(git-feature git-pr git-release git-mr git-pub)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
