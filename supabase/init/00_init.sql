-- supabase/init/00_init.sql

create extension if not exists "uuid-ossp";

create table if not exists journal_entries (
  id uuid primary key default uuid_generate_v4(),
  title text not null,
  markdown text not null,
  owner_id uuid not null,
  shared_with uuid[],
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);
