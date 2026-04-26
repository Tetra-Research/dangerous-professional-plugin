#!/bin/bash
set -e

echo "Deploying dangerous-professional site to Cloudflare Pages..."
npx wrangler pages deploy . --project-name dangerous-professional --branch main
echo "Done. Live at https://dangerous.tetraresearch.io"
