class GitFlowSugar < Formula
  desc ""
  homepage ""
  url "https://github.com/bepro-company/git-flow-sugar/archive/v0.0.1.tar.gz"
  version "0.0.1"
  # wget -qO- <url> | sha256sum
  sha256 "335aa5f6a8aad9e973a774df06e99be333a23b09cc311034671e8958f7a3023a"

  COMMANDS = %w(git-feature git-pr git-hotfix)

  def install
    system *%W(install -d -m 755 #{bin})
    system *%W(install -m 755), *COMMANDS, bin.to_s
  end
end
