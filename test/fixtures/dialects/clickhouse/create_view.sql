CREATE VIEW db.view_mv
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE VIEW db.view_mv
ON CLUSTER mycluster
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE OR REPLACE VIEW db.view_mv
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE OR REPLACE VIEW db.view_mv
ON CLUSTER mycluster
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE VIEW IF NOT EXISTS db.view_mv
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE VIEW IF NOT EXISTS db.view_mv
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE VIEW IF NOT EXISTS db.view_mv
ON CLUSTER mycluster
AS SELECT
    column1,
    column2
FROM db.table_kafka;

CREATE OR REPLACE VIEW default.test_view
DEFINER = CURRENT_USER
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = default
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
SQL SECURITY NONE
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
SQL SECURITY DEFINER
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
SQL SECURITY INVOKER
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = CURRENT_USER SQL SECURITY NONE
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = CURRENT_USER SQL SECURITY INVOKER
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = CURRENT_USER SQL SECURITY DEFINER
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = default SQL SECURITY NONE
AS SELECT
    uid,
    name,
    age
FROM default.users;

CREATE OR REPLACE VIEW default.test_view
DEFINER = default SQL SECURITY INVOKER
AS SELECT
    uid,
    name,
    age
FROM default.users;
