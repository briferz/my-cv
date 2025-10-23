#!/bin/bash
# Script to build CV PDFs using Docker

set -e

echo "Building CV PDFs using Docker..."

# Build Docker image
docker build -t cv-builder .

# Run container and generate PDFs
docker run --rm -v "$(pwd)/output:/cv/output" cv-builder

echo ""
echo "✅ CVs generated successfully!"
echo "   📄 output/cv.pdf (Stylish version)"
echo "   📄 output/cv-ats.pdf (ATS-friendly version)"
