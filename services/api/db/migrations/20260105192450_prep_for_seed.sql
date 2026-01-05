-- +goose Up
ALTER TABLE locations
ADD COLUMN state char(2) NOT NULL;

ALTER TABLE locations
ADD CONSTRAINT locations_name_state_key UNIQUE (name, state);

-- +goose Down
ALTER TABLE locations
DROP CONSTRAINT IF EXISTS locations_name_state_key;

ALTER TABLE locations
DROP COLUMN IF EXISTS state;