class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.36.tar.gz"
  sha256 "74d9856df308d6e5776abd19c8b556eb38cbcea0822f23fa11de511509c0a975"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.36"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "afeff24563e523f352021e286aaedcb1876ee8c7866b126ea37dec65a6b9ab57"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b8dde07598a4e8aad0768e31b3cdb2dc5068b998f83e64040818958d58734cb1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
