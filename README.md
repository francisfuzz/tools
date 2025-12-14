# tools
Helpful tools, mostly generated using LLMs

## Available Tools

### QR Inspector
A comprehensive single-file QR code scanner with URL safety analysis.

**Features:**
- Real-time camera QR scanning
- URL safety analysis (HTTPS, phishing indicators, URL shorteners, suspicious TLDs)
- Scan history with localStorage
- Manual URL input for analysis
- Statistics dashboard
- Dark mode support

**Location:** `/qr-inspector/index.html`

## Running Locally

### Option 1: Direct File Access
Simply open any `index.html` file directly in your browser:
```bash
open qr-inspector/index.html
```

### Option 2: GitHub Pages with Docker
Test your site exactly as it will appear on GitHub Pages using Docker:

1. **Build the Docker image:**
   ```bash
   docker build -t tools-site .
   ```

2. **Run the container:**
   ```bash
   docker run --rm -it -v $(pwd):/usr/src/app -p 4000:4000 tools-site
   ```

3. **Access the site:**
   Open your browser to `http://localhost:4000`

**Note:** The Docker setup uses the `github-pages` gem to ensure your local environment matches GitHub Pages exactly.

### Option 3: Simple HTTP Server
If you have Python installed:
```bash
# Python 3
python -m http.server 8000

# Then visit http://localhost:8000
```

Or with Node.js:
```bash
npx http-server -p 8000
```

## Project Structure

```
tools/
├── qr-inspector/
│   ├── index.html      # QR code scanner application
│   └── prompt.txt      # Original build prompt
├── Dockerfile          # GitHub Pages Docker setup
└── README.md           # This file
```

## Adding New Tools

Each tool should be in its own directory with:
- `index.html` - The main application file
- `prompt.txt` - The original prompt used to build the tool

Example:
```
your-tool-name/
├── index.html
└── prompt.txt
```

## Credits

- Inspired by Simon Willison's [Useful patterns for building HTML tools](https://simonwillison.net/2025/Dec/10/html-tools/).
