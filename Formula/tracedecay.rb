class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.63.tar.gz"
  sha256 "4dceca141a07fe399c56edc37ebb26824642c7f6df178f1200842d03cc7834b0"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.63"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "aaf4d1b822990ab31ea2beb2cda64da97363d9d91be62513dc6adacb9446a91f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "95ac835bf637a146aadd38cf922708773c4bb1537dc80325e70713df4822f968"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
