#!/bin/bash

# Deployment script for French-Danish Dictionary
# This script builds and deploys the Hugo static site

set -e  # Exit on any error

echo "🚀 Starting deployment process..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if Hugo is available
if [ ! -f "./hugo" ]; then
    print_error "Hugo not found! Please run the installation first:"
    echo "wget https://github.com/gohugoio/hugo/releases/download/v0.139.0/hugo_0.139.0_linux-amd64.tar.gz"
    echo "tar -xzf hugo_0.139.0_linux-amd64.tar.gz"
    echo "chmod +x hugo"
    exit 1
fi

print_status "Hugo found, proceeding with build..."

# Clean previous build
if [ -d "public" ]; then
    print_status "Cleaning previous build..."
    rm -rf public/*
fi

# Build the site
print_status "Building the site..."
./hugo build --minify --gc

if [ $? -eq 0 ]; then
    print_success "Site built successfully!"
else
    print_error "Build failed!"
    exit 1
fi

# Check if public directory exists and has content
if [ ! -d "public" ] || [ -z "$(ls -A public)" ]; then
    print_error "No output generated in public/ directory"
    exit 1
fi

print_success "Site is ready for deployment!"
echo ""
print_status "Your static website is now available in the 'public/' directory"
echo ""
echo "📁 Next steps:"
echo "   1. Upload the contents of 'public/' directory to your web server"
echo "   2. Or use a static hosting service like:"
echo "      • Netlify: https://netlify.com"
echo "      • Vercel: https://vercel.com"
echo "      • GitHub Pages: https://pages.github.com"
echo "      • Surge.sh: https://surge.sh"
echo ""

# Optional: Start local server for testing
read -p "🌐 Would you like to start a local server to test the site? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    print_status "Starting local server..."
    echo "🔗 Your site will be available at: http://localhost:1313"
    echo "📝 Press Ctrl+C to stop the server"
    echo ""
    ./hugo server --bind 0.0.0.0 --port 1313
fi

print_success "Deployment script completed!"
