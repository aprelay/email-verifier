## 🔑 Quick Copy-Paste Reference

Copy each value below when adding to Cloudflare:

---

### ZEROBOUNCE_API_KEY
```
bda6cfeade07477580588647fc74729d
```

---

### ABSTRACTAPI_KEY
```
da9134064f9c45cf8f49dd28634a8dcc
```

---

### SENDGRID_API_KEY
```
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
```

---

### SENDER_EMAIL
```
tracey.marion@rgbrnechanical.com
```

---

### BOUNCE_REPORT_EMAIL
```
tracey.marion@rgbrnechanical.com
```

---

## 📍 Where to Add These

**URL:** https://dash.cloudflare.com/

**Path:** Workers & Pages → email-verifier-81h → Settings → Environment variables

**Important:** Select BOTH "Production" AND "Preview" for each variable!

---

## ✅ After Adding All 5 Variables

1. Click **"Save"**
2. Go to **"Deployments"** tab
3. Click **"⋯"** on latest deployment → **"Retry deployment"**
4. Wait 30 seconds
5. Test: https://email-verifier-81h.pages.dev/api/health

---

**Expected Result:**
Your bulk verification should now show ~80-90% valid instead of 34%!
