class Fission < Formula
  desc "Fission CLI for Kubernetes serverless functions"
  homepage "https://fission.io"
  version "1.27.0"
  
  on_linux do
    url "https://github.com/fission/fission/releases/download/v#{version}/fission-v#{version}-linux-amd64"
    sha256 "69eb82c53945ae8bdd5842933a88459b7004fe8eb2f0ab1c3de0a814e04ca9e9" # to be filled by automation
  end

  def install
    bin.install "fission-v#{version}-linux-amd64" => "fission"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fission version")
  end
end
