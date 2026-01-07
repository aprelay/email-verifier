# Cloudflare Pages Deployment Instructions

## 📦 Your Package is Ready!

**File:** `email-verifier-cloudflare-deploy.zip` (36KB)
**Location:** `/home/user/email-verifier/email-verifier-cloudflare-deploy.zip`

---

## 🚀 Step-by-Step Deployment Guide

### Step 1: Extract the Files

Since you need to upload the **contents** of the `dist` folder (not the zip), here's what to do:

**You have two options:**

#### Option A: Upload the dist folder directly (RECOMMENDED)
1. Download the entire `dist` folder from `/home/user/email-verifier/dist/`
2. This folder contains:
   - `_worker.js` (138KB) - Your API logic
   - `_routes.json` - Routing configuration
   - `static/` folder - Static assets

#### Option B: Upload via Wrangler CLI (from your local machine)
If you have Node.js installed locally:
```bash
# Download the entire project
# Then run:
npm install
npm run build
npx wrangler pages deploy dist --project-name email-verifier
```

---

### Step 2: Create Cloudflare Pages Project

1. Go to: https://dash.cloudflare.com/
2. Click **"Workers & Pages"** in the left sidebar
3. Click **"Create Application"**
4. Select **"Pages"** tab
5. Click **"Upload assets"**

---

### Step 3: Upload Your Files

1. **Project name:** `email-verifier`
2. **Production branch:** `main`
3. Click **"Create project"**
4. **Upload the contents of the `dist` folder:**
   - Drag and drop: `_worker.js`, `_routes.json`, and `static/` folder
   - OR use the file picker to select all files

---

### Step 4: Configure Environment Variables

After deployment, you need to add your API keys:

1. Go to your project settings
2. Click **"Settings"** → **"Environment variables"**
3. Add these variables:

```
ZEROBOUNCE_API_KEY=<your-zerobounce-key>
ABSTRACTAPI_KEY=<your-abstractapi-key>
SENDGRID_API_KEY=<your-sendgrid-key>
```

---

### Step 5: Deploy!

1. Click **"Save and Deploy"**
2. Wait 30-60 seconds
3. You'll get a URL like: `https://email-verifier.pages.dev`

---

## 📋 Files You Need to Upload

From `/home/user/email-verifier/dist/`:
- ✅ `_worker.js` (138KB)
- ✅ `_routes.json` (54 bytes)
- ✅ `static/style.css` (in static folder)

---

## ⚡ Quick Test After Deployment

Once deployed, test these endpoints:

```bash
# Health check
curl https://email-verifier.pages.dev/api/health

# Verify an email
curl -X POST https://email-verifier.pages.dev/api/verify \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com"}'
```

---

## 🎯 What You Get

- ✅ Global CDN (300+ locations)
- ✅ HTTPS by default
- ✅ Zero maintenance
- ✅ Auto-scaling
- ✅ 99.99% uptime
- ✅ Custom domain support

---

## 🔧 Troubleshooting

**If deployment fails:**
- Make sure you uploaded all 3 files
- Check that `_worker.js` is at the root (not in a subfolder)
- Verify environment variables are set

**If APIs don't work:**
- Add environment variables in project settings
- Check CORS settings if calling from browser

---

## 📞 Need Help?

Let me know if you have any issues during deployment!
