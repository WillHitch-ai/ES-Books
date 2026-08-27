# ES Practice Books — hosted setup

Three steps, about twenty minutes, no coding. Do them in order.

## 1. Supabase (your private database and sign-in)
1. Go to supabase.com → Start your project → sign up with GitHub or email. Free plan.
2. New project. Name it `es-books`, choose a strong database password (you won't need it again), region London.
3. Left menu → **SQL Editor** → New query → paste the contents of `schema.sql` → Run.
4. Left menu → **Authentication → Providers** → make sure **Email** is on. Under Authentication → **URL Configuration**, set Site URL to your GitHub Pages address from step 2 (come back and do this after step 2).
5. Left menu → **Project Settings → API**. Copy **Project URL** and the **anon public** key.
6. Open `index.html` in a text editor. Near the top, replace `PASTE_PROJECT_URL_HERE` and `PASTE_ANON_KEY_HERE` with those two values. Save.

The anon key is safe to publish: it only allows what the row-level security policies in `schema.sql` permit, which is each user reading and writing their own row.

## 2. GitHub Pages (the web address)
1. github.com → New repository → name `es-books`, **Private**, Create.
2. Add file → Upload files → drag in every file from this folder (`index.html`, `manifest.json`, `sw.js`, `icon.png`, `schema.sql`, `README.md`). Commit.
3. Repository **Settings → Pages** → Source: Deploy from a branch → Branch `main`, folder `/ (root)` → Save.
4. After a minute the page shows your address: `https://<your-username>.github.io/es-books/`. Put that into Supabase step 4 above.

Private repos need GitHub Pro for Pages (about £3/month); a public repo works free, and the file contains no records, only the app.

## 3. Your phone and laptop
1. Open the address. Enter your email, tap "Send sign-in link", open the link from your inbox on that device. You're in.
2. iPhone: Share → **Add to Home Screen**. Android: menu → **Install app**. It opens full-screen like an app and works offline; changes sync when you're back online.
3. Do the same on your laptop browser. Same account, same records.

## Updating the app later
Replace `index.html` in the repository with the new version (keeping your two Supabase values at the top). Pages redeploys automatically. Your records live in Supabase, not in the file, so updates never touch them.

## Railway
Not needed for this. GitHub Pages hosts a static app for free. Railway earns its place when the Adviser Platform needs a server; this doesn't.
