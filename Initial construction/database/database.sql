PGDMP
                         v            doan    10.3    10.3 w    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            P           1262    16467    doan    DATABASE     �   CREATE DATABASE doan WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE doan;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Q           0    0 
   SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            R           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16468    column_stats    TABLE     �  CREATE TABLE public.column_stats (
    db_name character varying(64) NOT NULL,
    table_name character varying(64) NOT NULL,
    column_name character varying(64) NOT NULL,
    min_value character varying(255),
    max_value character varying(255),
    nulls_ratio numeric(12,4),
    avg_length numeric(12,4),
    avg_frequency numeric(12,4),
    hist_size smallint,
    hist_type character(255),
    histogram bytea
);
     DROP TABLE public.column_stats;
       public         postgres    false    3            �            1259    16476    columns_priv    TABLE     N  CREATE TABLE public.columns_priv (
    "Host" character(60) NOT NULL,
    "Db" character(64) NOT NULL,
    "User" character(80) NOT NULL,
    "Table_name" character(64) NOT NULL,
    "Column_name" character(64) NOT NULL,
    "Timestamp" timestamp without time zone DEFAULT now() NOT NULL,
    "Column_priv" character(255) NOT NULL
);
     DROP TABLE public.columns_priv;
       public         postgres    false    3            �            1259    16485    db    TABLE     U  CREATE TABLE public.db (
    "Host" character(60) NOT NULL,
    "Db" character(64) NOT NULL,
    "User" character(80) NOT NULL,
    "Select_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Insert_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Update_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Delete_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Drop_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Grant_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "References_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Index_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_tmp_table_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Lock_tables_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Show_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Execute_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Event_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Trigger_priv" character(255) DEFAULT 'N'::bpchar NOT NULL
);
    DROP TABLE public.db;
       public         postgres    false    3            �            1259    16513    event    TABLE     �  CREATE TABLE public.event (
    db character(64) NOT NULL,
    name character(64) NOT NULL,
    body bytea NOT NULL,
    definer character(141) NOT NULL,
    execute_at timestamp without time zone,
    interval_value integer,
    interval_field character(255),
    created timestamp without time zone DEFAULT now() NOT NULL,
    modified timestamp without time zone NOT NULL,
    last_executed timestamp without time zone,
    starts timestamp without time zone,
    ends timestamp without time zone,
    status character(255) DEFAULT 'ENABLED'::bpchar NOT NULL,
    on_completion character(255) DEFAULT 'DROP'::bpchar NOT NULL,
    sql_mode character(255) NOT NULL,
    comment character(64) NOT NULL,
    originator bigint NOT NULL,
    time_zone character(64) DEFAULT 'SYSTEM'::bpchar NOT NULL,
    character_set_client character(32),
    collation_connection character(32),
    db_collation character(32),
    body_utf8 bytea
);
    DROP TABLE public.event;
       public         postgres    false    3            �            1259    16525    func    TABLE     �   CREATE TABLE public.func (
    name character(64) NOT NULL,
    ret boolean DEFAULT false NOT NULL,
    dl character(128) NOT NULL,
    type character(255) NOT NULL
);
    DROP TABLE public.func;
       public         postgres    false    3            �            1259    16531    general_log    TABLE       CREATE TABLE public.general_log (
    event_time timestamp without time zone DEFAULT now() NOT NULL,
    user_host text NOT NULL,
    thread_id numeric(16,0) NOT NULL,
    server_id bigint NOT NULL,
    command_type character varying(64) NOT NULL,
    argument text NOT NULL
);
    DROP TABLE public.general_log;
       public         postgres    false    3            �            1259    16538    gtid_slave_pos    TABLE     �   CREATE TABLE public.gtid_slave_pos (
    domain_id bigint NOT NULL,
    sub_id numeric(16,0) NOT NULL,
    server_id bigint NOT NULL,
    seq_no numeric(16,0) NOT NULL
);
 "   DROP TABLE public.gtid_slave_pos;
       public         postgres    false    3            �            1259    16543 
   help_category    TABLE     �   CREATE TABLE public.help_category (
    help_category_id integer NOT NULL,
    name character(64) NOT NULL,
    parent_category_id integer,
    url text NOT NULL
);
 !   DROP TABLE public.help_category;
       public         postgres    false    3            �            1259    16553    help_keyword    TABLE     k   CREATE TABLE public.help_keyword (
    help_keyword_id bigint NOT NULL,
    name character(64) NOT NULL
);
     DROP TABLE public.help_keyword;
       public         postgres    false    3            �            1259    16560 
   help_relation    TABLE     n   CREATE TABLE public.help_relation (
    help_topic_id bigint NOT NULL,
    help_keyword_id bigint NOT NULL
);
 !   DROP TABLE public.help_relation;
       public         postgres    false    3            �            1259    16565 
   help_topic    TABLE     �   CREATE TABLE public.help_topic (
    help_topic_id bigint NOT NULL,
    name character(64) NOT NULL,
    help_category_id integer NOT NULL,
    description text NOT NULL,
    example text NOT NULL,
    url text NOT NULL
);
    DROP TABLE public.help_topic;
       public         postgres    false    3            �            1259    16575    host    TABLE     �  CREATE TABLE public.host (
    "Host" character(60) NOT NULL,
    "Db" character(64) NOT NULL,
    "Select_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Insert_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Update_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Delete_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Drop_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Grant_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "References_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Index_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_tmp_table_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Lock_tables_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Show_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Execute_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Trigger_priv" character(255) DEFAULT 'N'::bpchar NOT NULL
);
    DROP TABLE public.host;
       public         postgres    false    3            �            1259    16601    index_stats    TABLE     �   CREATE TABLE public.index_stats (
    db_name character varying(64) NOT NULL,
    table_name character varying(64) NOT NULL,
    index_name character varying(64) NOT NULL,
    prefix_arity bigint NOT NULL,
    avg_frequency numeric(12,4)
);
    DROP TABLE public.index_stats;
       public         postgres    false    3            �            1259    16606    innodb_index_stats    TABLE     �  CREATE TABLE public.innodb_index_stats (
    database_name character varying(64) NOT NULL,
    table_name character varying(64) NOT NULL,
    index_name character varying(64) NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL,
    stat_name character varying(64) NOT NULL,
    stat_value numeric(16,0) NOT NULL,
    sample_size numeric(16,0),
    stat_description character varying(1024) NOT NULL
);
 &   DROP TABLE public.innodb_index_stats;
       public         postgres    false    3            �            1259    16615    innodb_table_stats    TABLE     Y  CREATE TABLE public.innodb_table_stats (
    database_name character varying(64) NOT NULL,
    table_name character varying(64) NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL,
    n_rows numeric(16,0) NOT NULL,
    clustered_index_size numeric(16,0) NOT NULL,
    sum_of_other_index_sizes numeric(16,0) NOT NULL
);
 &   DROP TABLE public.innodb_table_stats;
       public         postgres    false    3            �            1259    16621    ndb_binlog_index    TABLE     x  CREATE TABLE public.ndb_binlog_index (
    "Position" numeric(16,0) NOT NULL,
    "File" character varying(255) NOT NULL,
    epoch numeric(16,0) NOT NULL,
    inserts bigint NOT NULL,
    updates bigint NOT NULL,
    deletes bigint NOT NULL,
    schemaops bigint NOT NULL,
    orig_server_id bigint NOT NULL,
    orig_epoch numeric(16,0) NOT NULL,
    gci bigint NOT NULL
);
 $   DROP TABLE public.ndb_binlog_index;
       public         postgres    false    3            �            1259    16626    plugin    TABLE     p   CREATE TABLE public.plugin (
    name character varying(64) NOT NULL,
    dl character varying(128) NOT NULL
);
    DROP TABLE public.plugin;
       public         postgres    false    3            �            1259    16631    proc    TABLE     k  CREATE TABLE public.proc (
    db character(64) NOT NULL,
    name character(64) NOT NULL,
    type character(255) NOT NULL,
    specific_name character(64) NOT NULL,
    language character(255) DEFAULT 'SQL'::bpchar NOT NULL,
    sql_data_access character(255) DEFAULT 'CONTAINS_SQL'::bpchar NOT NULL,
    is_deterministic character(255) DEFAULT 'NO'::bpchar NOT NULL,
    security_type character(255) DEFAULT 'DEFINER'::bpchar NOT NULL,
    param_list bytea NOT NULL,
    returns bytea NOT NULL,
    body bytea NOT NULL,
    definer character(141) NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    modified timestamp without time zone NOT NULL,
    sql_mode character(255) NOT NULL,
    comment text NOT NULL,
    character_set_client character(32),
    collation_connection character(32),
    db_collation character(32),
    body_utf8 bytea
);
    DROP TABLE public.proc;
       public         postgres    false    3            �            1259    16644 
   procs_priv    TABLE     u  CREATE TABLE public.procs_priv (
    "Host" character(60) NOT NULL,
    "Db" character(64) NOT NULL,
    "User" character(80) NOT NULL,
    "Routine_name" character(64) NOT NULL,
    "Routine_type" character(255) NOT NULL,
    "Grantor" character(141) NOT NULL,
    "Proc_priv" character(255) NOT NULL,
    "Timestamp" timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.procs_priv;
       public         postgres    false    3            �            1259    16654    proxies_priv    TABLE     ]  CREATE TABLE public.proxies_priv (
    "Host" character(60) NOT NULL,
    "User" character(80) NOT NULL,
    "Proxied_host" character(60) NOT NULL,
    "Proxied_user" character(80) NOT NULL,
    "With_grant" boolean DEFAULT false NOT NULL,
    "Grantor" character(141) NOT NULL,
    "Timestamp" timestamp without time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.proxies_priv;
       public         postgres    false    3            �            1259    16662 
   roles_mapping    TABLE     �   CREATE TABLE public.roles_mapping (
    "Host" character(60) NOT NULL,
    "User" character(80) NOT NULL,
    "Role" character(80) NOT NULL,
    "Admin_option" character(255) DEFAULT 'N'::bpchar NOT NULL
);
 !   DROP TABLE public.roles_mapping;
       public         postgres    false    3            �            1259    16668    servers    TABLE     r  CREATE TABLE public.servers (
    "Server_name" character(64) NOT NULL,
    "Host" character(64) NOT NULL,
    "Db" character(64) NOT NULL,
    "Username" character(80) NOT NULL,
    "Password" character(64) NOT NULL,
    "Port" integer DEFAULT 0 NOT NULL,
    "Socket" character(64) NOT NULL,
    "Wrapper" character(64) NOT NULL,
    "Owner" character(64) NOT NULL
);
    DROP TABLE public.servers;
       public         postgres    false    3            �            1259    16677    slave_master_info    TABLE     �  CREATE TABLE public.slave_master_info (
    "Number_of_lines" bigint NOT NULL,
    "Master_log_name" text NOT NULL,
    "Master_log_pos" numeric(16,0) NOT NULL,
    "Host" character(64) NOT NULL,
    "User_name" text,
    "User_password" text,
    "Port" bigint NOT NULL,
    "Connect_retry" bigint NOT NULL,
    "Enabled_ssl" boolean NOT NULL,
    "Ssl_ca" text,
    "Ssl_capath" text,
    "Ssl_cert" text,
    "Ssl_cipher" text,
    "Ssl_key" text,
    "Ssl_verify_server_cert" boolean NOT NULL,
    "Heartbeat" double precision NOT NULL,
    "Bind" text,
    "Ignored_server_ids" text,
    "Uuid" text,
    "Retry_count" numeric(16,0) NOT NULL,
    "Ssl_crl" text,
    "Ssl_crlpath" text,
    "Enabled_auto_position" boolean NOT NULL
);
 %   DROP TABLE public.slave_master_info;
       public         postgres    false    3            �            1259    16685    slave_relay_log_info    TABLE     [  CREATE TABLE public.slave_relay_log_info (
    "Number_of_lines" bigint NOT NULL,
    "Relay_log_name" text NOT NULL,
    "Relay_log_pos" numeric(16,0) NOT NULL,
    "Master_log_name" text NOT NULL,
    "Master_log_pos" numeric(16,0) NOT NULL,
    "Sql_delay" integer NOT NULL,
    "Number_of_workers" bigint NOT NULL,
    "Id" bigint NOT NULL
);
 (   DROP TABLE public.slave_relay_log_info;
       public         postgres    false    3            �            1259    16693    slave_worker_info    TABLE     7  CREATE TABLE public.slave_worker_info (
    "Id" bigint NOT NULL,
    "Relay_log_name" text NOT NULL,
    "Relay_log_pos" numeric(16,0) NOT NULL,
    "Master_log_name" text NOT NULL,
    "Master_log_pos" numeric(16,0) NOT NULL,
    "Checkpoint_relay_log_name" text NOT NULL,
    "Checkpoint_relay_log_pos" numeric(16,0) NOT NULL,
    "Checkpoint_master_log_name" text NOT NULL,
    "Checkpoint_master_log_pos" numeric(16,0) NOT NULL,
    "Checkpoint_seqno" bigint NOT NULL,
    "Checkpoint_group_size" bigint NOT NULL,
    "Checkpoint_group_bitmap" bytea NOT NULL
);
 %   DROP TABLE public.slave_worker_info;
       public         postgres    false    3            �            1259    16701    slow_log    TABLE       CREATE TABLE public.slow_log (
    start_time timestamp without time zone NOT NULL,
    user_host text NOT NULL,
    query_time time without time zone NOT NULL,
    lock_time time without time zone NOT NULL,
    rows_sent integer NOT NULL,
    rows_examined integer NOT NULL,
    db character varying(512) NOT NULL,
    last_insert_id integer NOT NULL,
    insert_id integer NOT NULL,
    server_id bigint NOT NULL,
    sql_text text NOT NULL,
    thread_id numeric(16,0) NOT NULL,
    rows_affected integer NOT NULL
);
    DROP TABLE public.slow_log;
       public         postgres    false    3            �            1259    16707    table_stats    TABLE     �   CREATE TABLE public.table_stats (
    db_name character varying(64) NOT NULL,
    table_name character varying(64) NOT NULL,
    cardinality numeric(16,0)
);
    DROP TABLE public.table_stats;
       public         postgres    false    3            �            1259    16712    tables_priv    TABLE     t  CREATE TABLE public.tables_priv (
    "Host" character(60) NOT NULL,
    "Db" character(64) NOT NULL,
    "User" character(80) NOT NULL,
    "Table_name" character(64) NOT NULL,
    "Grantor" character(141) NOT NULL,
    "Timestamp" timestamp without time zone DEFAULT now() NOT NULL,
    "Table_priv" character(255) NOT NULL,
    "Column_priv" character(255) NOT NULL
);
    DROP TABLE public.tables_priv;
       public         postgres    false    3            �            1259    16724 	   time_zone    TABLE     �   CREATE TABLE public.time_zone (
    "Time_zone_id" bigint NOT NULL,
    "Use_leap_seconds" character(255) DEFAULT 'N'::bpchar NOT NULL
);
    DROP TABLE public.time_zone;
       public         postgres    false    3            �            1259    16722    time_zone_Time_zone_id_seq    SEQUENCE     �   CREATE SEQUENCE public."time_zone_Time_zone_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."time_zone_Time_zone_id_seq";
       public       postgres    false    225    3            S           0    0    time_zone_Time_zone_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."time_zone_Time_zone_id_seq" OWNED BY public.time_zone."Time_zone_id";
            public       postgres    false    224            �            1259    16731    time_zone_leap_second    TABLE     x   CREATE TABLE public.time_zone_leap_second (
    "Transition_time" bigint NOT NULL,
    "Correction" integer NOT NULL
);
 )   DROP TABLE public.time_zone_leap_second;
       public         postgres    false    3            �            1259    16736    time_zone_name    TABLE     n   CREATE TABLE public.time_zone_name (
    "Name" character(64) NOT NULL,
    "Time_zone_id" bigint NOT NULL
);
 "   DROP TABLE public.time_zone_name;
       public         postgres    false    3            �            1259    16741    time_zone_transition    TABLE     �   CREATE TABLE public.time_zone_transition (
    "Time_zone_id" bigint NOT NULL,
    "Transition_time" bigint NOT NULL,
    "Transition_type_id" bigint NOT NULL
);
 (   DROP TABLE public.time_zone_transition;
       public         postgres    false    3            �            1259    16746    time_zone_transition_type    TABLE     	  CREATE TABLE public.time_zone_transition_type (
    "Time_zone_id" bigint NOT NULL,
    "Transition_type_id" bigint NOT NULL,
    "Offset" integer DEFAULT 0 NOT NULL,
    "Is_DST" smallint DEFAULT '0'::smallint NOT NULL,
    "Abbreviation" character(8) NOT NULL
);
 -   DROP TABLE public.time_zone_transition_type;
       public         postgres    false    3            �            1259    16753    user    TABLE     �
  CREATE TABLE public."user" (
    "Host" character(60) NOT NULL,
    "User" character(80) NOT NULL,
    "Password" character(41) NOT NULL,
    "Select_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Insert_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Update_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Delete_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Drop_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Reload_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Shutdown_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Process_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "File_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Grant_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "References_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Index_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Show_db_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Super_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_tmp_table_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Lock_tables_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Execute_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Repl_slave_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Repl_client_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Show_view_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Alter_routine_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_user_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Event_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Trigger_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    "Create_tablespace_priv" character(255) DEFAULT 'N'::bpchar NOT NULL,
    ssl_type character(255) NOT NULL,
    ssl_cipher bytea NOT NULL,
    x509_issuer bytea NOT NULL,
    x509_subject bytea NOT NULL,
    max_questions bigint DEFAULT '0'::bigint NOT NULL,
    max_updates bigint DEFAULT '0'::bigint NOT NULL,
    max_connections bigint DEFAULT '0'::bigint NOT NULL,
    max_user_connections integer DEFAULT 0 NOT NULL,
    plugin character(64) NOT NULL,
    authentication_string text NOT NULL,
    password_expired character(255) DEFAULT 'N'::bpchar NOT NULL,
    is_role character(255) DEFAULT 'N'::bpchar NOT NULL,
    default_role character(80) NOT NULL,
    max_statement_time numeric(12,6) DEFAULT '0'::numeric NOT NULL
);
