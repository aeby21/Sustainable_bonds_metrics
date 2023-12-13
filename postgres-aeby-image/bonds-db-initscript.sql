CREATE TABLE bonds_table (

    id SERIAL PRIMARY KEY,
    emittent VARCHAR(128) NULL,
    parent_id VARCHAR(128) NULL,
    identifier VARCHAR(128) NULL,
    sust_linked SMALLINT NULL,
    ticker VARCHAR (10) NULL,
    social_bond SMALLINT NULL,
    green_instrument SMALLINT NULL,
    sitzland VARCHAR(3) NULL,
    ausg_menge REAL NULL,
    maturity REAL NULL,
    emissionsdatum Date NULL,
    bics_level_1 VARCHAR(128) NULL,
    kpn REAL NULL,
    faelligkeit DATE NULL,
    faell_typ VARCHAR(128) NULL,
    waehrung VARCHAR(10) NULL,
    total_assets BIGINT NULL,
    tobinsq REAL NULL,
    roa REAL NULL,
    roe REAL NULL,
    lt_leverage REAL NULL,
    trbc_es VARCHAR(128) NULL,
    cf_to_asset REAL NULL

);