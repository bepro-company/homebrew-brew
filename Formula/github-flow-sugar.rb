class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/bepro-company/github-flow-sugar/archive/v0.0.8.tar.gz"
  version "0.0.8"
  # wget -qO- <url> | sha256sum
  sha256 "4c32e3126c50b0ba0dff1380534996d2c515553f3a181c5a89aa651ca1c19513"

  COMMANDS = %w(git-feature git-pr git-release git-mr git-pub)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
