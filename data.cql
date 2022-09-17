-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS block WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : '1' };

-- Create a table
CREATE TABLE IF NOT EXISTS block.metadata (
entry_id uuid PRIMARY KEY,
metadata text,
type text,
time timestamp
);

-- Insert some data
INSERT INTO block.metadata
(entry_id,metadata, type, time)
VALUES (uuid(), '98hq4f98q4mfoij9f84fh984hf', 'block', toTimeStamp(now()) );
INSERT INTO block.metadata
(entry_id, metadata, type, time)
VALUES (uuid(), '98hq4f98q4', 'transaction', toTimeStamp(now()));
INSERT INTO block.metadata
(entry_id, metadata, type, time)
VALUES (uuid(), 'mfoij9f84fh984hf', 'header', toTimeStamp(now()));
(entry_id, metadata, type, time)
VALUES (uuid(), 'test', 'test', toTimeStamp(now()));