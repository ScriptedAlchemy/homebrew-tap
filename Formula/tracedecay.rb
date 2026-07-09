class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.44.tar.gz"
  sha256 "70545a5c0e294acbe68177fcb0f9fbc8b9266bec19226d37df8c91ee9e8bae7e"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.44"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2f77c726a8e856da0778328df6922854c97f3000f3ca84d231287da1be116944"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "645dcc77c1bbd2fabb066e065271da595ecf7903d3e6fa357406d393e859c188"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
