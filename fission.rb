class Fission < Formula
  desc "Fission CLI for Kubernetes serverless functions"
  homepage "https://fission.io"
  version "0.0.0"
  
  on_linux do
    url "https://github.com/fission/fission/releases/download/v#{version}/fission-#{version}-linux-amd64"
    sha256 "" # to be filled by automation
  end

  def install
    bin.install "fission-#{version}-linux-amd64" => "fission"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fission version")
  end
end
