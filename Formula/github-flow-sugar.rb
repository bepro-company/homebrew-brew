class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/bepro-company/github-flow-sugar/archive/v0.0.7.tar.gz"
  version "0.0.7"
  # wget -qO- <url> | sha256sum
  sha256 "218c0e6b94b8c9b32e3ca0ea0aeec2d8bfb28526764e2650cb8e99e10654ea09"

  COMMANDS = %w(git-feature git-pr git-release git-mr git-pub)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
