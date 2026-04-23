#!/bin/bash
# Double-click this file to deploy the portfolio to Vercel.
#   Team:    g-kondor's projects
#   Project: project-dpx9j  (pre-linked via .vercel/project.json)
#
# First run: you'll be asked to log in once (a browser window opens).
# Every run after that just re-deploys — ~15 seconds, no prompts.

set -e
cd "$(dirname "$0")"

echo ""
echo "─────────────────────────────────────────────────"
echo "  Deploying to Vercel"
echo "  Team:     g-kondor's projects"
echo "  Project:  project-dpx9j (already linked)"
echo "─────────────────────────────────────────────────"
echo ""

if ! command -v npx >/dev/null 2>&1; then
  echo "❌  'npx' not found. Install Node.js first:"
  echo "      https://nodejs.org    or    brew install node"
  read -p "Press any key to close…"
  exit 1
fi

# The .vercel/project.json in this folder tells the CLI exactly which
# project to deploy to, so no interactive setup prompts are shown.
npx --yes vercel@latest deploy --prod --yes

echo ""
echo "─────────────────────────────────────────────────"
echo "  ✓ Done. Production URL is printed above."
echo "─────────────────────────────────────────────────"
echo ""
read -p "Press any key to close…"
