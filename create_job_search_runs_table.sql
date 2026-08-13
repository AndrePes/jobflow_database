create table job_search_runs (
    id uuid primary key default gen_random_uuid(),

    started_at timestamptz default now(),
    finished_at timestamptz,

    search_parameters jsonb,

    jobs_found integer default 0,
    jobs_saved integer default 0
);