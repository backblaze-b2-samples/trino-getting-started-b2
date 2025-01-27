CREATE SCHEMA IF NOT EXISTS iceberg.drivestats
    WITH (location = 's3://drivestats-iceberg/');

USE iceberg.drivestats;

CALL iceberg.system.register_table(
    schema_name => 'drivestats',
    table_name => 'drivestats',
    table_location => 's3://drivestats-iceberg/drivestats'
);
