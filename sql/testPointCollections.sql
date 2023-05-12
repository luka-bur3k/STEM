-- Table: public.TestPointCollections

-- DROP TABLE IF EXISTS public."TestPointCollections";

CREATE TABLE IF NOT EXISTS public."TestPointCollections"
(
    "ID" integer NOT NULL,
    "InputConditionID" integer,
    "SampleID" integer,
    "TestPoints" integer[],
    CONSTRAINT "TestPointCollections_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "InputConditionID_fk" FOREIGN KEY ("InputConditionID")
        REFERENCES public."InputConditions" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "SampleID_fk" FOREIGN KEY ("SampleID")
        REFERENCES public."Samples" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."TestPointCollections"
    OWNER to postgres;