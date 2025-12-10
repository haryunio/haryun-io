#!/bin/bash
# Local build script for testing
# For production deployment, use GitHub Actions instead

cd haryun-io-blog

bundle exec jekyll build

echo ""
echo "✅ Build complete! Site generated in _site/"
echo "To preview locally: bundle exec jekyll serve"
echo ""
echo "Note: Production deployment uses GitHub Actions automatically."
