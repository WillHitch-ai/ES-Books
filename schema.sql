-- Run once in Supabase → SQL Editor. One row per user holding the whole ledger.
create table if not exists public.books (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.books enable row level security;
create policy "own row read"   on public.books for select using (auth.uid() = user_id);
create policy "own row insert" on public.books for insert with check (auth.uid() = user_id);
create policy "own row update" on public.books for update using (auth.uid() = user_id);
