{ python3Packages, fetchFromGitHub }:

python3Packages.buildPythonApplication rec {
    pname = "sipvicious";
    version = "0.3.4";

    src = fetchFromGitHub {
        owner = "EnableSecurity";
        repo = pname;
        rev = "v${version}";
        sha256 = "O8/9Vz/u8BoF1dfGceOJdzPPYLfkdBp2DkwA5WQ3dgo=";
    };

    propagatedBuildInputs = [
        python3Packages.scapy
    ];
}
