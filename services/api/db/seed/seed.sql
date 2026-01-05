-- Seed data generated from services/api/db/seed/locations.csv
-- Batched inserts for categories, locations, location_categories, and placeholder images
BEGIN;

INSERT INTO categories (slug, name, created_at, updated_at)
VALUES ('abandoned', 'Abandoned', now(), now())
ON CONFLICT (slug) DO UPDATE
SET name = EXCLUDED.name,
    updated_at = now();

INSERT INTO categories (slug, name, created_at, updated_at)
VALUES ('cryptids', 'Cryptids', now(), now())
ON CONFLICT (slug) DO UPDATE
SET name = EXCLUDED.name,
    updated_at = now();

INSERT INTO categories (slug, name, created_at, updated_at)
VALUES ('ghosts', 'Ghosts', now(), now())
ON CONFLICT (slug) DO UPDATE
SET name = EXCLUDED.name,
    updated_at = now();

INSERT INTO categories (slug, name, created_at, updated_at)
VALUES ('urban_legends', 'Urban Legends', now(), now())
ON CONFLICT (slug) DO UPDATE
SET name = EXCLUDED.name,
    updated_at = now();

INSERT INTO locations (id, name, description, state, coordinates, created_at, updated_at)
VALUES
  ('c069d4d0-f441-5439-9906-54810faf5949'::uuid, 'Al Capone''s Grave', '"Buried in a family plot at Mt. Caramel Cemetery in Hillside, Illinois, lies one of America''s most infamous gangsters, Al Capone."', 'IL', ST_SetSRID(ST_MakePoint(-87.90397, 41.851089), 4326), now(), now()),
  ('c893d6ac-341b-5f3c-b9d4-669450533c70'::uuid, 'Resurrection Mary Cemetery', 'A phantom hitchhiker said to vanish near Resurrection Cemetery, often spotted along Archer Avenue late at night.', 'IL', ST_SetSRID(ST_MakePoint(-87.768611, 41.763889), 4326), now(), now()),
  ('121e869e-89b7-5dd2-8b03-38f3ea645071'::uuid, 'Bachelor''s Grove Cemetery', 'An abandoned cemetery known for apparitions, floating lights, and ghostly figures captured in photographs.', 'IL', ST_SetSRID(ST_MakePoint(-87.881944, 41.651667), 4326), now(), now()),
  ('de774f7d-fd0a-561b-8fda-b7a387cdc01e'::uuid, 'St. James at Sag Bridge', 'A historic church rumored to be a portal to hell, with strange lights and unexplained sounds reported by visitors.', 'IL', ST_SetSRID(ST_MakePoint(-87.904444, 41.682222), 4326), now(), now()),
  ('0b6ee4ea-e4fa-54dc-8a3f-48e68fe29c1d'::uuid, 'The Bell Witch Cave', 'Home to one of America''s most famous hauntings, involving poltergeist activity and eerie voices.', 'TN', ST_SetSRID(ST_MakePoint(-87.536389, 36.393611), 4326), now(), now()),
  ('2594a974-3719-5ddc-b528-e959568cc170'::uuid, 'The Myrtles Plantation', 'A former plantation said to be haunted by the spirits of enslaved people and a woman named Chloe.', 'LA', ST_SetSRID(ST_MakePoint(-91.045278, 30.837778), 4326), now(), now()),
  ('3683f74e-7e19-5d50-972f-a6585bb8bd55'::uuid, 'Eastern State Penitentiary', 'A former prison known for violent history and reported shadow figures, echoes, and cell door sounds.', 'PA', ST_SetSRID(ST_MakePoint(-75.172222, 39.963611), 4326), now(), now()),
  ('ee5c215b-0e9f-5797-a069-60efa18ca3a4'::uuid, 'The Stanley Hotel', 'The inspiration for Stephen King''s The Shining, with reports of music, laughter, and apparitions.', 'CO', ST_SetSRID(ST_MakePoint(-105.521667, 40.361389), 4326), now(), now()),
  ('88706cf8-6bc3-5f49-89b1-2c8fec7e7c17'::uuid, 'Winchester Mystery House', 'A sprawling mansion built continuously to appease spirits, filled with staircases to nowhere.', 'CA', ST_SetSRID(ST_MakePoint(-121.950833, 37.318333), 4326), now(), now()),
  ('144ea402-7914-55bf-a071-fdb007b84d3b'::uuid, 'Jerome Grand Hotel', 'Once a hospital, now a hotel where guests report ghostly nurses and phantom footsteps.', 'AZ', ST_SetSRID(ST_MakePoint(-112.113611, 34.748333), 4326), now(), now()),
  ('7ca56265-4965-5fc6-8543-7a1b623f924e'::uuid, 'Trans-Allegheny Lunatic Asylum', 'A massive abandoned asylum known for reported screams, shadow people, and lingering energy.', 'WV', ST_SetSRID(ST_MakePoint(-80.344444, 39.281389), 4326), now(), now()),
  ('ea3ecf26-0de5-5667-b61a-1f5fd1e7d929'::uuid, 'The Goatman''s Bridge', 'A bridge said to be haunted by a half-man, half-goat entity that appears after dark.', 'TX', ST_SetSRID(ST_MakePoint(-97.010833, 33.285556), 4326), now(), now()),
  ('e93d3694-efba-5d8c-be28-d89f46c1ffd0'::uuid, 'Sloss Furnaces', 'An abandoned ironworks with reports of ghostly workers and unexplained accidents.', 'AL', ST_SetSRID(ST_MakePoint(-86.812222, 33.518611), 4326), now(), now()),
  ('03e99bd2-6343-5278-85c3-1b221190c851'::uuid, 'The Queen Mary', 'A retired ocean liner rumored to house spirits of former passengers and crew.', 'CA', ST_SetSRID(ST_MakePoint(-118.189167, 33.752778), 4326), now(), now()),
  ('479086ae-8a5a-524e-b358-4bb558dd9e4f'::uuid, 'Bellamy Bridge', 'An old bridge where a bride is said to search endlessly for her lost groom.', 'FL', ST_SetSRID(ST_MakePoint(-85.595278, 30.884444), 4326), now(), now()),
  ('85d6441a-24ce-5239-a71f-d9742c2e6b8e'::uuid, 'The Lizzie Borden House', 'The site of infamous axe murders, now a bed and breakfast with paranormal reports.', 'MA', ST_SetSRID(ST_MakePoint(-71.156389, 41.682778), 4326), now(), now()),
  ('0b22ca7e-f5cf-546f-b46d-052529c36503'::uuid, 'Hoia Baciu Forest', 'A forest known for UFO sightings, electronic malfunctions, and disappearances.', 'IL', ST_SetSRID(ST_MakePoint(-87.65, 41.85), 4326), now(), now()),
  ('ebfef2b8-ec9d-58b3-a0d5-f72dde44345f'::uuid, 'The Whaley House', 'A historic home with sightings of former residents and unexplained noises.', 'CA', ST_SetSRID(ST_MakePoint(-117.196944, 32.752222), 4326), now(), now()),
  ('e63b4e1a-3352-59d3-b01a-24b368708660'::uuid, 'Devil''s Tramping Ground', 'A barren circle where nothing grows, said to be where the devil walks at night.', 'NC', ST_SetSRID(ST_MakePoint(-79.420833, 35.650278), 4326), now(), now()),
  ('7f9a9ff2-d5ea-565f-8476-c70e43f43909'::uuid, 'The Sallie House', 'A house associated with violent paranormal activity believed to involve a spirit named Sallie.', 'KS', ST_SetSRID(ST_MakePoint(-95.121389, 39.563889), 4326), now(), now()),
  ('68430d9f-9949-5c40-a0b3-55568c0bda4d'::uuid, 'LaLaurie Mansion', 'A historic mansion infamous for cruelty and ghost sightings tied to its dark past.', 'LA', ST_SetSRID(ST_MakePoint(-90.064722, 29.958611), 4326), now(), now()),
  ('53079dc0-ddf3-5747-b563-2f6ddd9f8199'::uuid, 'Gettysburg Battlefield', 'The site of one of the bloodiest battles of the Civil War, known for apparitions of soldiers and phantom gunfire.', 'PA', ST_SetSRID(ST_MakePoint(-77.231095, 39.830929), 4326), now(), now()),
  ('8b0cbee1-652a-573d-a302-acbf23b854b9'::uuid, 'Waverly Hills Sanatorium', 'A former tuberculosis hospital infamous for shadow figures, voices, and unexplained phenomena.', 'KY', ST_SetSRID(ST_MakePoint(-85.897222, 38.147222), 4326), now(), now()),
  ('3c985ae5-2e1d-59fb-8d7d-3d6488fd6eb3'::uuid, 'The Villisca Axe Murder House', 'A small home where a brutal unsolved axe murder occurred, now associated with disturbing paranormal activity.', 'IA', ST_SetSRID(ST_MakePoint(-94.975833, 40.928333), 4326), now(), now()),
  ('c2c732c4-9828-581f-8cf0-674c91702a45'::uuid, 'Marfa Lights', 'Unexplained glowing orbs that appear in the desert, baffling observers for generations.', 'TX', ST_SetSRID(ST_MakePoint(-104.020833, 30.309444), 4326), now(), now()),
  ('e2ee48fe-96e5-5273-9ff8-13659afd00d4'::uuid, 'Point Pleasant TNT Area', 'An abandoned military site tied to sightings of the Mothman and other strange occurrences.', 'WV', ST_SetSRID(ST_MakePoint(-82.137778, 38.844444), 4326), now(), now()),
  ('3e6528a8-fb1a-5cea-88ac-35ec819fa650'::uuid, 'The Devil''s Tower', 'A massive rock formation surrounded by legends of supernatural forces and strange energies.', 'WY', ST_SetSRID(ST_MakePoint(-104.715278, 44.590278), 4326), now(), now()),
  ('33d0f7a0-1552-502f-8c15-842463f40d85'::uuid, 'The Amityville House', 'A suburban home linked to infamous murders and alleged demonic hauntings.', 'NY', ST_SetSRID(ST_MakePoint(-73.417222, 40.669444), 4326), now(), now()),
  ('60761709-06f0-58df-a6c7-0d760933fea0'::uuid, 'The Crescent Hotel', 'A historic hotel said to house spirits from its time as a hospital and resort.', 'AR', ST_SetSRID(ST_MakePoint(-93.7375, 36.401111), 4326), now(), now()),
  ('f08688ae-58d4-50b1-892f-741d74267ae2'::uuid, 'Salem Witch House', 'A surviving structure connected to the Salem witch trials and lingering supernatural lore.', 'MA', ST_SetSRID(ST_MakePoint(-70.896667, 42.521389), 4326), now(), now()),
  ('fcb6a51a-f3e5-5eff-b50e-07527b189f39'::uuid, 'The Old Charleston Jail', 'A former jail where inmates reportedly left behind restless spirits and eerie sounds.', 'SC', ST_SetSRID(ST_MakePoint(-79.932222, 32.783611), 4326), now(), now()),
  ('d4582a08-67aa-5b8f-bc2b-b1a4a59aa11d'::uuid, 'Pine Barrens', 'A vast forest known for legends of the Jersey Devil and unexplained disappearances.', 'NJ', ST_SetSRID(ST_MakePoint(-74.6, 39.8), 4326), now(), now()),
  ('be8ba301-035f-5b4a-9af2-24b551faa0c7'::uuid, 'The Stanley R. Mickelsen Safeguard Complex', 'An abandoned Cold War missile defense site with reports of strange noises and sightings.', 'ND', ST_SetSRID(ST_MakePoint(-97.187222, 48.568056), 4326), now(), now()),
  ('c7571d8d-e382-5241-b720-aaa6aae70151'::uuid, 'The Lemp Mansion', 'A historic mansion associated with tragic deaths and recurring ghost sightings.', 'MO', ST_SetSRID(ST_MakePoint(-90.238611, 38.594444), 4326), now(), now()),
  ('86f1cc0d-dbcb-5e9a-8280-a1a54e1255e6'::uuid, 'The Devil''s Kettle', 'A waterfall where objects disappear mysteriously, fueling local legends.', 'MN', ST_SetSRID(ST_MakePoint(-91.476389, 47.995833), 4326), now(), now()),
  ('5bc771b6-68b7-5a8b-abf8-89f84f549938'::uuid, 'The Sorrel-Weed House', 'A historic home rumored to be haunted by former residents and unexplained footsteps.', 'GA', ST_SetSRID(ST_MakePoint(-81.090833, 32.081667), 4326), now(), now()),
  ('9aa306b7-74c4-542e-9f83-0cd94e398327'::uuid, 'The Riddle House', 'A former funeral home associated with shadow figures and paranormal disturbances.', 'FL', ST_SetSRID(ST_MakePoint(-80.036667, 26.705278), 4326), now(), now()),
  ('4ca742f0-4137-5966-afdb-e0b2dbde90ed'::uuid, 'The Overtoun Bridge', 'A bridge infamous for unexplained animal behavior and tragic legends.', 'NY', ST_SetSRID(ST_MakePoint(-73.756389, 42.652778), 4326), now(), now()),
  ('bc8fe2a1-f492-5a1a-b03b-9d8d18b0552e'::uuid, 'The Enchanted Forest', 'A remote area known for strange lights, disorientation, and missing time reports.', 'CO', ST_SetSRID(ST_MakePoint(-105.782067, 39.550051), 4326), now(), now()),
  ('ccafa96a-b574-592b-8912-b0650b229f6d'::uuid, 'The Brown Lady of Raynham Hall', 'A ghostly figure said to roam a historic estate, often captured in photographs.', 'VA', ST_SetSRID(ST_MakePoint(-77.4025, 37.2275), 4326), now(), now()),
  ('d2d7f830-76cf-598d-88e2-d345a298dc6e'::uuid, 'The Devil''s Backbone', 'A stretch of land where travelers report disembodied voices and ghostly lights.', 'VA', ST_SetSRID(ST_MakePoint(-78.725833, 38.029167), 4326), now(), now()),
  ('c6bf5146-0d4c-53d9-8072-f61ac53fa2a7'::uuid, 'The Palmer House Hotel', 'A grand hotel with a long history of reported apparitions and unexplained sounds.', 'IL', ST_SetSRID(ST_MakePoint(-87.627778, 41.880556), 4326), now(), now()),
  ('150eed06-53cf-5d75-8609-cd8fdf3c3b0c'::uuid, 'The Bell Witch Farm', 'Land associated with the infamous Bell Witch haunting and lingering paranormal claims.', 'TN', ST_SetSRID(ST_MakePoint(-87.538611, 36.403889), 4326), now(), now()),
  ('e0463153-152e-587a-974f-b564c1506ae5'::uuid, 'The Old Alton Bridge', 'A bridge known locally as Goatman''s Bridge, tied to violent legends and sightings.', 'TX', ST_SetSRID(ST_MakePoint(-97.010278, 33.286111), 4326), now(), now()),
  ('c9f6b7a0-917a-58b4-88c8-fc2985709c47'::uuid, 'The Devil''s Chair', 'A stone chair said to be cursed, bringing misfortune to those who sit in it.', 'FL', ST_SetSRID(ST_MakePoint(-81.401667, 28.397222), 4326), now(), now()),
  ('70d566bf-9da5-5b48-995d-fa21d4738a2f'::uuid, 'The Moonville Tunnel', 'An abandoned railroad tunnel associated with ghostly lantern lights and apparitions.', 'OH', ST_SetSRID(ST_MakePoint(-82.179444, 39.444444), 4326), now(), now())
ON CONFLICT (id) DO UPDATE
SET name = EXCLUDED.name,
    description = EXCLUDED.description,
    state = EXCLUDED.state,
    coordinates = EXCLUDED.coordinates,
    updated_at = now();

INSERT INTO location_categories (location_id, category_id, created_at, updated_at)
SELECT v.location_id, c.id, now(), now()
FROM (
  VALUES
    ('03e99bd2-6343-5278-85c3-1b221190c851'::uuid, 'ghosts'),
    ('0b22ca7e-f5cf-546f-b46d-052529c36503'::uuid, 'urban_legends'),
    ('0b6ee4ea-e4fa-54dc-8a3f-48e68fe29c1d'::uuid, 'ghosts'),
    ('0b6ee4ea-e4fa-54dc-8a3f-48e68fe29c1d'::uuid, 'urban_legends'),
    ('121e869e-89b7-5dd2-8b03-38f3ea645071'::uuid, 'abandoned'),
    ('121e869e-89b7-5dd2-8b03-38f3ea645071'::uuid, 'ghosts'),
    ('144ea402-7914-55bf-a071-fdb007b84d3b'::uuid, 'abandoned'),
    ('144ea402-7914-55bf-a071-fdb007b84d3b'::uuid, 'ghosts'),
    ('150eed06-53cf-5d75-8609-cd8fdf3c3b0c'::uuid, 'ghosts'),
    ('150eed06-53cf-5d75-8609-cd8fdf3c3b0c'::uuid, 'urban_legends'),
    ('2594a974-3719-5ddc-b528-e959568cc170'::uuid, 'ghosts'),
    ('33d0f7a0-1552-502f-8c15-842463f40d85'::uuid, 'urban_legends'),
    ('3683f74e-7e19-5d50-972f-a6585bb8bd55'::uuid, 'abandoned'),
    ('3c985ae5-2e1d-59fb-8d7d-3d6488fd6eb3'::uuid, 'urban_legends'),
    ('3e6528a8-fb1a-5cea-88ac-35ec819fa650'::uuid, 'urban_legends'),
    ('479086ae-8a5a-524e-b358-4bb558dd9e4f'::uuid, 'ghosts'),
    ('4ca742f0-4137-5966-afdb-e0b2dbde90ed'::uuid, 'urban_legends'),
    ('53079dc0-ddf3-5747-b563-2f6ddd9f8199'::uuid, 'ghosts'),
    ('5bc771b6-68b7-5a8b-abf8-89f84f549938'::uuid, 'ghosts'),
    ('60761709-06f0-58df-a6c7-0d760933fea0'::uuid, 'ghosts'),
    ('68430d9f-9949-5c40-a0b3-55568c0bda4d'::uuid, 'ghosts'),
    ('70d566bf-9da5-5b48-995d-fa21d4738a2f'::uuid, 'abandoned'),
    ('7ca56265-4965-5fc6-8543-7a1b623f924e'::uuid, 'abandoned'),
    ('7f9a9ff2-d5ea-565f-8476-c70e43f43909'::uuid, 'ghosts'),
    ('85d6441a-24ce-5239-a71f-d9742c2e6b8e'::uuid, 'urban_legends'),
    ('86f1cc0d-dbcb-5e9a-8280-a1a54e1255e6'::uuid, 'urban_legends'),
    ('88706cf8-6bc3-5f49-89b1-2c8fec7e7c17'::uuid, 'urban_legends'),
    ('8b0cbee1-652a-573d-a302-acbf23b854b9'::uuid, 'abandoned'),
    ('9aa306b7-74c4-542e-9f83-0cd94e398327'::uuid, 'ghosts'),
    ('bc8fe2a1-f492-5a1a-b03b-9d8d18b0552e'::uuid, 'urban_legends'),
    ('be8ba301-035f-5b4a-9af2-24b551faa0c7'::uuid, 'abandoned'),
    ('c069d4d0-f441-5439-9906-54810faf5949'::uuid, 'ghosts'),
    ('c2c732c4-9828-581f-8cf0-674c91702a45'::uuid, 'urban_legends'),
    ('c6bf5146-0d4c-53d9-8072-f61ac53fa2a7'::uuid, 'ghosts'),
    ('c7571d8d-e382-5241-b720-aaa6aae70151'::uuid, 'ghosts'),
    ('c893d6ac-341b-5f3c-b9d4-669450533c70'::uuid, 'ghosts'),
    ('c9f6b7a0-917a-58b4-88c8-fc2985709c47'::uuid, 'urban_legends'),
    ('ccafa96a-b574-592b-8912-b0650b229f6d'::uuid, 'ghosts'),
    ('d2d7f830-76cf-598d-88e2-d345a298dc6e'::uuid, 'urban_legends'),
    ('d4582a08-67aa-5b8f-bc2b-b1a4a59aa11d'::uuid, 'cryptids'),
    ('de774f7d-fd0a-561b-8fda-b7a387cdc01e'::uuid, 'urban_legends'),
    ('e0463153-152e-587a-974f-b564c1506ae5'::uuid, 'cryptids'),
    ('e2ee48fe-96e5-5273-9ff8-13659afd00d4'::uuid, 'abandoned'),
    ('e2ee48fe-96e5-5273-9ff8-13659afd00d4'::uuid, 'cryptids'),
    ('e63b4e1a-3352-59d3-b01a-24b368708660'::uuid, 'urban_legends'),
    ('e93d3694-efba-5d8c-be28-d89f46c1ffd0'::uuid, 'abandoned'),
    ('ea3ecf26-0de5-5667-b61a-1f5fd1e7d929'::uuid, 'cryptids'),
    ('ea3ecf26-0de5-5667-b61a-1f5fd1e7d929'::uuid, 'ghosts'),
    ('ebfef2b8-ec9d-58b3-a0d5-f72dde44345f'::uuid, 'ghosts'),
    ('ee5c215b-0e9f-5797-a069-60efa18ca3a4'::uuid, 'ghosts'),
    ('f08688ae-58d4-50b1-892f-741d74267ae2'::uuid, 'urban_legends'),
    ('fcb6a51a-f3e5-5eff-b50e-07527b189f39'::uuid, 'ghosts')
) AS v(location_id, slug)
JOIN categories c ON c.slug = v.slug
ON CONFLICT (location_id, category_id) DO NOTHING;

INSERT INTO location_images (id, location_id, key, sort_order, alt_text, created_at, updated_at)
VALUES
  ('46258217-175d-556d-a47a-28dfc8de38d6'::uuid, 'c069d4d0-f441-5439-9906-54810faf5949'::uuid, 'locations/loc001/cover.jpg', 0, 'Cover image (placeholder)', now(), now()),
  ('8fa1bb33-26dd-53ac-bcc4-4779a220931d'::uuid, 'c893d6ac-341b-5f3c-b9d4-669450533c70'::uuid, 'locations/loc002/cover.jpg', 0, 'Cover image (placeholder)', now(), now()),
  ('ab87958a-3a36-5df8-8e13-644c5cb1da1a'::uuid, '121e869e-89b7-5dd2-8b03-38f3ea645071'::uuid, 'locations/loc003/cover.jpg', 0, 'Cover image (placeholder)', now(), now()),
  ('bbddcbf9-3788-5477-96f6-2c3cae4b8112'::uuid, 'de774f7d-fd0a-561b-8fda-b7a387cdc01e'::uuid, 'locations/loc004/cover.jpg', 0, 'Cover image (placeholder)', now(), now()),
  ('bf77e3a4-0bf2-5615-b997-4dbecf91bd4a'::uuid, '0b6ee4ea-e4fa-54dc-8a3f-48e68fe29c1d'::uuid, 'locations/loc005/cover.jpg', 0, 'Cover image (placeholder)', now(), now())
ON CONFLICT (location_id, key) DO UPDATE
SET sort_order = EXCLUDED.sort_order,
    alt_text = EXCLUDED.alt_text,
    updated_at = now();

COMMIT;
