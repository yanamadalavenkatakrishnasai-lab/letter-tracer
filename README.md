# ✏️ Letter Tracer — Handwriting Practice App

A tablet handwriting practice app for English (A–Z) and Telugu (అ–హ) scripts.
Supports stylus input, palm rejection, pinch-to-zoom, and 4 notebook sizes.

---

## 📲 Get the APK (No coding required!)

### Step 1 — Create a GitHub account
Go to [github.com](https://github.com) and sign up (free).

### Step 2 — Create a new repository
1. Click the **+** button → **New repository**
2. Name it: `letter-tracer`
3. Set to **Public**
4. Click **Create repository**

### Step 3 — Upload these files
Click **uploading an existing file** and drag the entire folder contents:
```
letter-tracer/
├── .github/
│   └── workflows/
│       └── build-apk.yml       ← GitHub Actions (builds APK automatically)
├── app/
│   ├── build.gradle
│   ├── proguard-rules.pro
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── assets/
│       │   └── index.html      ← The actual app
│       ├── java/com/lettertracer/
│       │   └── MainActivity.java
│       └── res/
│           ├── layout/activity_main.xml
│           ├── values/strings.xml
│           ├── values/themes.xml
│           └── drawable/ + mipmap-*/
├── gradle/wrapper/
│   └── gradle-wrapper.properties
├── build.gradle
├── settings.gradle
├── gradle.properties
├── gradlew
└── gradlew.bat
```

### Step 4 — Enable GitHub Actions
1. Go to your repo → **Actions** tab
2. Click **"I understand my workflows, go ahead and enable them"**

### Step 5 — Watch the build
1. Go to **Actions** tab → you'll see **"Build APK"** running (takes ~3–5 minutes)
2. When it shows a ✅ green checkmark → done!

### Step 6 — Download your APK
**Option A — From Actions artifacts:**
1. Click the workflow run → scroll down to **Artifacts**
2. Download **LetterTracer-debug**
3. Extract the zip → get `app-debug.apk`

**Option B — From Releases (automatic after push to main):**
1. Go to repo → **Releases** (right sidebar)
2. Download `app-debug.apk` directly

### Step 7 — Install on tablet
1. Transfer the APK to your Android tablet (USB, email, Google Drive, etc.)
2. On tablet: **Settings → Security → Install Unknown Apps**
3. Allow your file manager or browser to install APKs
4. Open the APK file → tap **Install**
5. Open **Letter Tracer** 🎉

---

## 🔄 Updating the app
1. Edit `app/src/main/assets/index.html`
2. Commit and push to GitHub
3. GitHub Actions automatically builds a new APK
4. Download and reinstall

---

## 🛠️ Features
| Feature | Description |
|---|---|
| 🔤 English | A–Z uppercase, lowercase, or both |
| తె Telugu | Vowels అచ్చులు, Consonants హల్లులు, Numbers సంఖ్యలు |
| ✏️ Stylus | Pressure sensitivity (Apple Pencil, Wacom, S-Pen) |
| 🤚 Palm rejection | Rest hand on screen freely |
| 👌 Pinch zoom | Two-finger zoom from 25% to 1000% |
| 📓 4 sizes | Jumbo (Pre-K) · Large (Gr 1–2) · Medium (Gr 3–4) · Standard (Gr 5+) |
| 🎨 Colors | 8 ink colors + 4 pen sizes |
| ↩ Undo | Removes last stroke |
| 📴 Offline | Works without internet after first install |
| 🖥️ Fullscreen | Immersive mode — no status bar distraction |

---

## 📋 Requirements
- Android tablet running **Android 7.0+** (API 24+)
- Screen width ≥ 600dp (7" tablet or larger)
- Stylus optional but recommended

---

## 📁 Project Structure
```
This is a native Android WebView app.
The entire UI lives in: app/src/main/assets/index.html
MainActivity.java just hosts the WebView in fullscreen.
```
