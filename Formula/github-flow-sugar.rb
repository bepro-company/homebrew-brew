class GithubFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/8percent/github-flow-sugar/archive/v0.0.5.tar.gz"
  version "0.0.5"
  sha256 "7af9345b151dccc671f015a3d51a0d2326a85488a150ad22ea283449eb28ab6d"

  COMMANDS = %w(git-feature git-pr git-release git-mr git-pub)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
