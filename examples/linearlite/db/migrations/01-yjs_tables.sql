CREATE TABLE IF NOT EXISTS "ydoc" (
    "id" UUID NOT NULL,
    CONSTRAINT "ydoc_pkey" PRIMARY KEY ("id")
);
ALTER TABLE ydoc ENABLE ELECTRIC;

CREATE TABLE IF NOT EXISTS "ydoc_update" (
    "id" UUID NOT NULL,
    "ydoc_id" UUID NOT NULL,
    "data" TEXT NOT NULL, -- TODO: change to BLOB
    CONSTRAINT "ydoc_update_pkey" PRIMARY KEY ("id"),
    FOREIGN KEY (ydoc_id) REFERENCES ydoc(id)
);
ALTER TABLE ydoc_update ENABLE ELECTRIC;
