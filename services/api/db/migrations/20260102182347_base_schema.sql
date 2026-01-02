-- +goose Up
CREATE TABLE locations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text NOT NULL,
  coordinates geometry(Point, 4326) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz
);

CREATE TABLE location_images (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  location_id uuid NOT NULL REFERENCES locations(id) ON DELETE CASCADE,
  key text NOT NULL,
  sort_order int NOT NULL DEFAULT 0,
  alt_text text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  UNIQUE (location_id, key)
);

CREATE TABLE categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  name text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz
);

CREATE TABLE location_categories (
  location_id uuid NOT NULL REFERENCES locations(id) ON DELETE CASCADE,
  category_id uuid NOT NULL REFERENCES categories(id) ON DELETE CASCADE,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  deleted_at timestamptz,
  PRIMARY KEY (location_id, category_id)
);

CREATE INDEX location_images_location_id_idx
ON location_images(location_id);

CREATE INDEX location_images_not_deleted_idx
ON location_images(location_id)
WHERE deleted_at IS NULL;

CREATE INDEX location_categories_category_id_not_deleted_idx
ON location_categories(category_id)
WHERE deleted_at IS NULL;

CREATE INDEX location_categories_location_id_not_deleted_idx
ON location_categories(location_id)
WHERE deleted_at IS NULL;

CREATE INDEX locations_coords_gist_not_deleted
ON locations
USING GIST (coordinates)
WHERE deleted_at IS NULL;

-- +goose Down
DROP TABLE IF EXISTS location_categories;
DROP TABLE IF EXISTS location_images;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS locations;
