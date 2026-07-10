class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.53.tar.gz"
  sha256 "1a68e7b69661e575a683e2dffc7e6633391390bcad7d39daace616688b30a90b"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.53"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e6130fedb7e5b04dfce379ed2818929a11184d1822f7da4b7818053899628301"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5403f09f550868975eb8985618438e62cbe363e78332f40b669970c430d15413"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
