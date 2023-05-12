-- Table: public.InputConditions

-- DROP TABLE IF EXISTS public."InputConditions";

CREATE TABLE IF NOT EXISTS public."InputConditions"
(
    "ID" integer NOT NULL,
    "Parameter" "char"[],
    "Minimum" integer,
    "Maximum" integer,
    "TimeBetweenPoints" integer,
    CONSTRAINT "InputConditions_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."InputConditions"
    OWNER to postgres;