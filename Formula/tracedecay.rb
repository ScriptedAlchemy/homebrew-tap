class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "29fa4a1de8f1e7a6014efc78189a24a4abc88025002f2bfbe7a3746d17199570"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f0993705efd2a930cca9ef5cdc2c1b3a30140dd61792a1b4cbff644e7e3a1aae"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "399635864d528a128818767343759e0a3672f4ede6e052ee802a000e37a8758d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
