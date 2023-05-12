-- Table: public.Samples

-- DROP TABLE IF EXISTS public."Samples";

CREATE TABLE IF NOT EXISTS public."Samples"
(
    "ID" integer NOT NULL,
    "FamilyName" "char"[],
    "ProductName" "char"[],
    "Name" "char"[],
    CONSTRAINT "Samples_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Samples"
    OWNER to postgres;