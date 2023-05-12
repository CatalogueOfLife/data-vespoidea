-- Postgres database schema

CREATE TABLE reference (
  id TEXT PRIMARY KEY,
  doi TEXT,
  type TEXT,
  author TEXT,
  editor TEXT,
  issued TEXT,
  title TEXT,
  container_author TEXT,
  container_title TEXT,
  volume TEXT,
  issue TEXT,
  edition TEXT,
  page TEXT,
  publisher TEXT,
  publisher_place TEXT,
  collection_title TEXT,
  collection_editor TEXT,
  link TEXT,
  accessed TEXT,  
  version TEXT,
  isbn TEXT,
  issn TEXT,
  remarks TEXT,
  citation TEXT
);

CREATE TABLE name_usage (
  id TEXT PRIMARY KEY,
  parent_id TEXT REFERENCES name_usage,
  basionym_id TEXT REFERENCES name_usage,
  status TEXT,
  rank TEXT,
  scientific_name TEXT NOT NULL,
  authorship TEXT,
  name_status TEXT,
  name_reference_id TEXT REFERENCES reference,
  name_published_id_year TEXT,
  name_published_id_page TEXT,
  name_published_id_page_link TEXT,
  reference_id TEXT,
  scrutinizer TEXT,
  scrutinizer_date TEXT,
  extinct BOOLEAN,
  temporal_range_start TEXT,
  temporal_range_end TEXT,
  remarks TEXT
);

CREATE TABLE name_relation (
  name_id TEXT NOT NULL REFERENCES name_usage,
  related_name_id TEXT REFERENCES name_usage,
  source_id TEXT,
  type TEXT NOT NULL,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE type_material (
  id TEXT PRIMARY KEY,
  source_id TEXT,
  name_id TEXT NOT NULL REFERENCES name_usage,
  citation TEXT,
  status TEXT,
  reference_id TEXT REFERENCES reference,
  locality TEXT,
  country CHARACTER(2),
  latitude DECIMAL,
  longitude DECIMAL,
  altitude INTEGER,
  host TEXT,
  date TEXT,
  collector TEXT,
  institution_code TEXT,
  catalog_number TEXT,
  associated_sequences TEXT,
  sex TEXT,
  link TEXT,
  remarks TEXT
);

CREATE TABLE distribution (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  area_id TEXT,
  area TEXT NOT NULL,
  gazetteer TEXT,
  status TEXT,
  reference_id TEXT REFERENCES reference,
  remarks TEXT
);

CREATE TABLE vernacular_name (
  taxon_id TEXT NOT NULL REFERENCES name_usage,
  source_id TEXT,
  name TEXT NOT NULL,
  transliteration TEXT,
  language CHARACTER(3),
  country CHARACTER(2),
  area TEXT,
  sex TEXT,
  reference_id TEXT REFERENCES reference
);
