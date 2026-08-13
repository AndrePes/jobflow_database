create table jobs (
    id uuid primary key default gen_random_uuid(),

    title text not null,
    company text,
    location text,
    country text,

    remote boolean default false,

    employment_type text,
    seniority text,

    description text,

    salary_min numeric,
    salary_max numeric,
    salary_currency text,

    skills text[],

    match_score integer,

    source text,
    source_url text unique,

    published_at timestamptz,

    found_at timestamptz default now(),

    status text default 'new',

    raw_data jsonb
);