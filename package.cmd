REM Put your package scripts here.
"C:\Program Files (x86)\WiX Toolset v3.11\bin\heat.exe" dir ".\src" -cg appveyor-wix-sample -gg -sfrag -sreg -svb6 -template product -t wix.xslt -out appveyor-wix-sample.wxs
"C:\Program Files (x86)\WiX Toolset v3.11\bin\candle.exe" appveyor-wix-sample.wxs
"C:\Program Files (x86)\WiX Toolset v3.11\bin\light.exe" -b ".\src" .\appveyor-wix-sample.wixobj