CREATE TABLE public."User"
(
    id integer NOT NULL DEFAULT nextval('"User_id_seq"'::regclass),
    username character varying(255) COLLATE pg_catalog."default" NOT NULL,
    token character varying(255) COLLATE pg_catalog."default" NOT NULL,
    provider character varying(255) COLLATE pg_catalog."default" NOT NULL,
    createdat timestamp without time zone NOT NULL DEFAULT now(),
    modifiedat timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT "User_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."User"
    OWNER to postgres;

CREATE TABLE public."Post"
(
    id integer NOT NULL DEFAULT nextval('"Post_id_seq"'::regclass),
    title character varying(255) COLLATE pg_catalog."default" NOT NULL,
    userid integer NOT NULL,
    deleted boolean NOT NULL,
    createdat timestamp without time zone NOT NULL DEFAULT now(),
    modifiedat timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT "Post_pkey" PRIMARY KEY (id),
    CONSTRAINT "Userid_fkey" FOREIGN KEY (userid)
        REFERENCES public."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Post"
    OWNER to postgres;
