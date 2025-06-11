if (!(Test-Path .\.materials)) {
    mkdir .\.materials
}

$CommonPaths = @(
    # Add additional shared paths for each module
    ".\LICENSE",
    ".\README.md"
)

Compress-Archive -DestinationPath .\.materials\exercise-files.zip -Update -Path ($CommonPaths + @(
    ".\M3",
    ".\M5",
    ".\policy-patrol",
    ".\demos-0fe1ef5.zip"
))