class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/bepro-company/github-flow-sugar/archive/v0.0.6.tar.gz"
  version "0.0.6"
  sha256 "d3300d9fe240763283da67e9d6eb2eaf523c6443afbf7dc5a2f6aa1d52a2520e"

  COMMANDS = %w(git-feature git-pr git-release git-mr git-pub)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
