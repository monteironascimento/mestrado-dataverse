PGDMP                         {         	   dataverse    10.13 (Debian 10.13-1.pgdg90+1)    15.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384 	   dataverse    DATABASE     q   CREATE DATABASE dataverse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE dataverse;
             	   dataverse    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
             	   dataverse    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                	   dataverse    false    6            v           1259    18150    EJB__TIMER__TBL    TABLE     �  CREATE TABLE public."EJB__TIMER__TBL" (
    "TIMERID" character varying(255) NOT NULL,
    "APPLICATIONID" bigint,
    "BLOB" bytea,
    "CONTAINERID" bigint,
    "CREATIONTIMERAW" bigint,
    "INITIALEXPIRATIONRAW" bigint,
    "INTERVALDURATION" bigint,
    "LASTEXPIRATIONRAW" bigint,
    "OWNERID" character varying(255),
    "PKHASHCODE" integer,
    "SCHEDULE" character varying(255),
    "STATE" integer
);
 %   DROP TABLE public."EJB__TIMER__TBL";
       public         	   dataverse    false    6                       1259    16819    actionlogrecord    TABLE     W  CREATE TABLE public.actionlogrecord (
    id character varying(36) NOT NULL,
    actionresult character varying(255),
    actionsubtype character varying(255),
    actiontype character varying(255),
    endtime timestamp without time zone,
    info text,
    starttime timestamp without time zone,
    useridentifier character varying(255)
);
 #   DROP TABLE public.actionlogrecord;
       public         	   dataverse    false    6            U           1259    17278    alternativepersistentidentifier    TABLE     a  CREATE TABLE public.alternativepersistentidentifier (
    id integer NOT NULL,
    authority character varying(255),
    globalidcreatetime timestamp without time zone,
    identifier character varying(255),
    identifierregistered boolean,
    protocol character varying(255),
    storagelocationdesignator boolean,
    dvobject_id bigint NOT NULL
);
 3   DROP TABLE public.alternativepersistentidentifier;
       public         	   dataverse    false    6            T           1259    17276 &   alternativepersistentidentifier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alternativepersistentidentifier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.alternativepersistentidentifier_id_seq;
       public       	   dataverse    false    6    341            �           0    0 &   alternativepersistentidentifier_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.alternativepersistentidentifier_id_seq OWNED BY public.alternativepersistentidentifier.id;
          public       	   dataverse    false    340            �            1259    16616    apitoken    TABLE       CREATE TABLE public.apitoken (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    disabled boolean NOT NULL,
    expiretime timestamp without time zone NOT NULL,
    tokenstring character varying(255) NOT NULL,
    authenticateduser_id bigint NOT NULL
);
    DROP TABLE public.apitoken;
       public         	   dataverse    false    6            �            1259    16614    apitoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.apitoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.apitoken_id_seq;
       public       	   dataverse    false    234    6            �           0    0    apitoken_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.apitoken_id_seq OWNED BY public.apitoken.id;
          public       	   dataverse    false    233                       1259    16928    authenticateduser    TABLE       CREATE TABLE public.authenticateduser (
    id integer NOT NULL,
    affiliation character varying(255),
    createdtime timestamp without time zone NOT NULL,
    email character varying(255) NOT NULL,
    emailconfirmed timestamp without time zone,
    firstname character varying(255),
    lastapiusetime timestamp without time zone,
    lastlogintime timestamp without time zone,
    lastname character varying(255),
    "position" character varying(255),
    superuser boolean,
    useridentifier character varying(255) NOT NULL
);
 %   DROP TABLE public.authenticateduser;
       public         	   dataverse    false    6                       1259    16926    authenticateduser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authenticateduser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.authenticateduser_id_seq;
       public       	   dataverse    false    6    285            �           0    0    authenticateduser_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.authenticateduser_id_seq OWNED BY public.authenticateduser.id;
          public       	   dataverse    false    284            ;           1259    17109    authenticateduserlookup    TABLE     �   CREATE TABLE public.authenticateduserlookup (
    id integer NOT NULL,
    authenticationproviderid character varying(255),
    persistentuserid character varying(255),
    authenticateduser_id bigint NOT NULL
);
 +   DROP TABLE public.authenticateduserlookup;
       public         	   dataverse    false    6            :           1259    17107    authenticateduserlookup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authenticateduserlookup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.authenticateduserlookup_id_seq;
       public       	   dataverse    false    315    6            �           0    0    authenticateduserlookup_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.authenticateduserlookup_id_seq OWNED BY public.authenticateduserlookup.id;
          public       	   dataverse    false    314            "           1259    16965    authenticationproviderrow    TABLE     �   CREATE TABLE public.authenticationproviderrow (
    id character varying(255) NOT NULL,
    enabled boolean,
    factoryalias character varying(255),
    factorydata text,
    subtitle character varying(255),
    title character varying(255)
);
 -   DROP TABLE public.authenticationproviderrow;
       public         	   dataverse    false    6            L           1259    17216    builtinuser    TABLE     �   CREATE TABLE public.builtinuser (
    id integer NOT NULL,
    encryptedpassword character varying(255),
    passwordencryptionversion integer,
    username character varying(255) NOT NULL
);
    DROP TABLE public.builtinuser;
       public         	   dataverse    false    6            K           1259    17214    builtinuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.builtinuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.builtinuser_id_seq;
       public       	   dataverse    false    6    332            �           0    0    builtinuser_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.builtinuser_id_seq OWNED BY public.builtinuser.id;
          public       	   dataverse    false    331            _           1259    17334    categorymetadata    TABLE     �   CREATE TABLE public.categorymetadata (
    id integer NOT NULL,
    wfreq double precision,
    category_id bigint NOT NULL,
    variablemetadata_id bigint NOT NULL
);
 $   DROP TABLE public.categorymetadata;
       public         	   dataverse    false    6            ^           1259    17332    categorymetadata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorymetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.categorymetadata_id_seq;
       public       	   dataverse    false    6    351            �           0    0    categorymetadata_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.categorymetadata_id_seq OWNED BY public.categorymetadata.id;
          public       	   dataverse    false    350            5           1259    17078    clientharvestrun    TABLE     >  CREATE TABLE public.clientharvestrun (
    id integer NOT NULL,
    deleteddatasetcount bigint,
    faileddatasetcount bigint,
    finishtime timestamp without time zone,
    harvestresult integer,
    harvesteddatasetcount bigint,
    starttime timestamp without time zone,
    harvestingclient_id bigint NOT NULL
);
 $   DROP TABLE public.clientharvestrun;
       public         	   dataverse    false    6            4           1259    17076    clientharvestrun_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientharvestrun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientharvestrun_id_seq;
       public       	   dataverse    false    6    309            �           0    0    clientharvestrun_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientharvestrun_id_seq OWNED BY public.clientharvestrun.id;
          public       	   dataverse    false    308            �            1259    16478    confirmemaildata    TABLE     �   CREATE TABLE public.confirmemaildata (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    expires timestamp without time zone NOT NULL,
    token character varying(255),
    authenticateduser_id bigint NOT NULL
);
 $   DROP TABLE public.confirmemaildata;
       public         	   dataverse    false    6            �            1259    16476    confirmemaildata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.confirmemaildata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.confirmemaildata_id_seq;
       public       	   dataverse    false    214    6            �           0    0    confirmemaildata_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.confirmemaildata_id_seq OWNED BY public.confirmemaildata.id;
          public       	   dataverse    false    213            G           1259    17180    controlledvocabalternate    TABLE     �   CREATE TABLE public.controlledvocabalternate (
    id integer NOT NULL,
    strvalue text,
    controlledvocabularyvalue_id bigint NOT NULL,
    datasetfieldtype_id bigint NOT NULL
);
 ,   DROP TABLE public.controlledvocabalternate;
       public         	   dataverse    false    6            F           1259    17178    controlledvocabalternate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controlledvocabalternate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.controlledvocabalternate_id_seq;
       public       	   dataverse    false    6    327            �           0    0    controlledvocabalternate_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.controlledvocabalternate_id_seq OWNED BY public.controlledvocabalternate.id;
          public       	   dataverse    false    326            0           1259    17045    controlledvocabularyvalue    TABLE     �   CREATE TABLE public.controlledvocabularyvalue (
    id integer NOT NULL,
    displayorder integer,
    identifier character varying(255),
    strvalue text,
    datasetfieldtype_id bigint
);
 -   DROP TABLE public.controlledvocabularyvalue;
       public         	   dataverse    false    6            /           1259    17043     controlledvocabularyvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controlledvocabularyvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.controlledvocabularyvalue_id_seq;
       public       	   dataverse    false    6    304            �           0    0     controlledvocabularyvalue_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.controlledvocabularyvalue_id_seq OWNED BY public.controlledvocabularyvalue.id;
          public       	   dataverse    false    303            	           1259    16800    customfieldmap    TABLE     �   CREATE TABLE public.customfieldmap (
    id integer NOT NULL,
    sourcedatasetfield character varying(255),
    sourcetemplate character varying(255),
    targetdatasetfield character varying(255)
);
 "   DROP TABLE public.customfieldmap;
       public         	   dataverse    false    6                       1259    16798    customfieldmap_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customfieldmap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customfieldmap_id_seq;
       public       	   dataverse    false    6    265            �           0    0    customfieldmap_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customfieldmap_id_seq OWNED BY public.customfieldmap.id;
          public       	   dataverse    false    264            �            1259    16664    customquestion    TABLE       CREATE TABLE public.customquestion (
    id integer NOT NULL,
    displayorder integer,
    hidden boolean,
    questionstring character varying(255) NOT NULL,
    questiontype character varying(255) NOT NULL,
    required boolean,
    guestbook_id bigint NOT NULL
);
 "   DROP TABLE public.customquestion;
       public         	   dataverse    false    6            �            1259    16662    customquestion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customquestion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customquestion_id_seq;
       public       	   dataverse    false    6    241            �           0    0    customquestion_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customquestion_id_seq OWNED BY public.customquestion.id;
          public       	   dataverse    false    240            ]           1259    17322    customquestionresponse    TABLE     �   CREATE TABLE public.customquestionresponse (
    id integer NOT NULL,
    response text,
    customquestion_id bigint NOT NULL,
    guestbookresponse_id bigint NOT NULL
);
 *   DROP TABLE public.customquestionresponse;
       public         	   dataverse    false    6            \           1259    17320    customquestionresponse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customquestionresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.customquestionresponse_id_seq;
       public       	   dataverse    false    6    349            �           0    0    customquestionresponse_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.customquestionresponse_id_seq OWNED BY public.customquestionresponse.id;
          public       	   dataverse    false    348            (           1259    17003    customquestionvalue    TABLE     �   CREATE TABLE public.customquestionvalue (
    id integer NOT NULL,
    displayorder integer,
    valuestring character varying(255) NOT NULL,
    customquestion_id bigint NOT NULL
);
 '   DROP TABLE public.customquestionvalue;
       public         	   dataverse    false    6            '           1259    17001    customquestionvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customquestionvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.customquestionvalue_id_seq;
       public       	   dataverse    false    6    296            �           0    0    customquestionvalue_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.customquestionvalue_id_seq OWNED BY public.customquestionvalue.id;
          public       	   dataverse    false    295            y           1259    18175    customzipservicerequest    TABLE     �   CREATE TABLE public.customzipservicerequest (
    key character varying(63),
    storagelocation character varying(255),
    filename character varying(255),
    issuetime timestamp without time zone
);
 +   DROP TABLE public.customzipservicerequest;
       public         	   dataverse    false    6            H           1259    17191    datafile    TABLE     x  CREATE TABLE public.datafile (
    id bigint NOT NULL,
    checksumtype character varying(255) NOT NULL,
    checksumvalue character varying(255) NOT NULL,
    contenttype character varying(255) NOT NULL,
    filesize bigint,
    ingeststatus character(1),
    previousdatafileid bigint,
    prov_entityname text,
    restricted boolean,
    rootdatafileid bigint NOT NULL
);
    DROP TABLE public.datafile;
       public         	   dataverse    false    6            �            1259    16408    datafilecategory    TABLE     �   CREATE TABLE public.datafilecategory (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    dataset_id bigint NOT NULL
);
 $   DROP TABLE public.datafilecategory;
       public         	   dataverse    false    6            �            1259    16406    datafilecategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datafilecategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.datafilecategory_id_seq;
       public       	   dataverse    false    6    201            �           0    0    datafilecategory_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.datafilecategory_id_seq OWNED BY public.datafilecategory.id;
          public       	   dataverse    false    200            9           1259    17100    datafiletag    TABLE     y   CREATE TABLE public.datafiletag (
    id integer NOT NULL,
    type integer NOT NULL,
    datafile_id bigint NOT NULL
);
    DROP TABLE public.datafiletag;
       public         	   dataverse    false    6            8           1259    17098    datafiletag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datafiletag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.datafiletag_id_seq;
       public       	   dataverse    false    313    6            �           0    0    datafiletag_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.datafiletag_id_seq OWNED BY public.datafiletag.id;
          public       	   dataverse    false    312            3           1259    17066    dataset    TABLE     �  CREATE TABLE public.dataset (
    id bigint NOT NULL,
    fileaccessrequest boolean,
    harvestidentifier character varying(255),
    lastexporttime timestamp without time zone,
    storagedriver character varying(255),
    usegenericthumbnail boolean,
    citationdatedatasetfieldtype_id bigint,
    harvestingclient_id bigint,
    guestbook_id bigint,
    thumbnailfile_id bigint
);
    DROP TABLE public.dataset;
       public         	   dataverse    false    6            �            1259    16429    datasetexternalcitations    TABLE     �   CREATE TABLE public.datasetexternalcitations (
    id bigint NOT NULL,
    citedbyurl character varying(255) NOT NULL,
    dataset_id bigint NOT NULL
);
 ,   DROP TABLE public.datasetexternalcitations;
       public         	   dataverse    false    6            �            1259    16719    datasetfield    TABLE     �   CREATE TABLE public.datasetfield (
    id integer NOT NULL,
    datasetfieldtype_id bigint NOT NULL,
    datasetversion_id bigint,
    parentdatasetfieldcompoundvalue_id bigint,
    template_id bigint
);
     DROP TABLE public.datasetfield;
       public         	   dataverse    false    6            l           1259    17415 &   datasetfield_controlledvocabularyvalue    TABLE     �   CREATE TABLE public.datasetfield_controlledvocabularyvalue (
    datasetfield_id bigint NOT NULL,
    controlledvocabularyvalues_id bigint NOT NULL
);
 :   DROP TABLE public.datasetfield_controlledvocabularyvalue;
       public         	   dataverse    false    6            �            1259    16717    datasetfield_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetfield_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.datasetfield_id_seq;
       public       	   dataverse    false    251    6            �           0    0    datasetfield_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.datasetfield_id_seq OWNED BY public.datasetfield.id;
          public       	   dataverse    false    250            W           1259    17289    datasetfieldcompoundvalue    TABLE     �   CREATE TABLE public.datasetfieldcompoundvalue (
    id integer NOT NULL,
    displayorder integer,
    parentdatasetfield_id bigint
);
 -   DROP TABLE public.datasetfieldcompoundvalue;
       public         	   dataverse    false    6            V           1259    17287     datasetfieldcompoundvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetfieldcompoundvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.datasetfieldcompoundvalue_id_seq;
       public       	   dataverse    false    343    6            �           0    0     datasetfieldcompoundvalue_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.datasetfieldcompoundvalue_id_seq OWNED BY public.datasetfieldcompoundvalue.id;
          public       	   dataverse    false    342                       1259    16897    datasetfielddefaultvalue    TABLE     �   CREATE TABLE public.datasetfielddefaultvalue (
    id integer NOT NULL,
    displayorder integer,
    strvalue text,
    datasetfield_id bigint NOT NULL,
    defaultvalueset_id bigint NOT NULL,
    parentdatasetfielddefaultvalue_id bigint
);
 ,   DROP TABLE public.datasetfielddefaultvalue;
       public         	   dataverse    false    6                       1259    16895    datasetfielddefaultvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetfielddefaultvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.datasetfielddefaultvalue_id_seq;
       public       	   dataverse    false    280    6            �           0    0    datasetfielddefaultvalue_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.datasetfielddefaultvalue_id_seq OWNED BY public.datasetfielddefaultvalue.id;
          public       	   dataverse    false    279            g           1259    17382    datasetfieldtype    TABLE     @  CREATE TABLE public.datasetfieldtype (
    id integer NOT NULL,
    advancedsearchfieldtype boolean,
    allowcontrolledvocabulary boolean,
    allowmultiples boolean,
    description text,
    displayformat character varying(255),
    displayoncreate boolean,
    displayorder integer,
    facetable boolean,
    fieldtype character varying(255) NOT NULL,
    name text,
    required boolean,
    title text,
    uri text,
    validationformat character varying(255),
    watermark character varying(255),
    metadatablock_id bigint,
    parentdatasetfieldtype_id bigint
);
 $   DROP TABLE public.datasetfieldtype;
       public         	   dataverse    false    6            f           1259    17380    datasetfieldtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetfieldtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.datasetfieldtype_id_seq;
       public       	   dataverse    false    359    6            �           0    0    datasetfieldtype_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.datasetfieldtype_id_seq OWNED BY public.datasetfieldtype.id;
          public       	   dataverse    false    358            �            1259    16638    datasetfieldvalue    TABLE     �   CREATE TABLE public.datasetfieldvalue (
    id integer NOT NULL,
    displayorder integer,
    value text,
    datasetfield_id bigint NOT NULL
);
 %   DROP TABLE public.datasetfieldvalue;
       public         	   dataverse    false    6            �            1259    16636    datasetfieldvalue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetfieldvalue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.datasetfieldvalue_id_seq;
       public       	   dataverse    false    237    6            �           0    0    datasetfieldvalue_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.datasetfieldvalue_id_seq OWNED BY public.datasetfieldvalue.id;
          public       	   dataverse    false    236            2           1259    17058    datasetlinkingdataverse    TABLE     �   CREATE TABLE public.datasetlinkingdataverse (
    id integer NOT NULL,
    linkcreatetime timestamp without time zone NOT NULL,
    dataset_id bigint NOT NULL,
    linkingdataverse_id bigint NOT NULL
);
 +   DROP TABLE public.datasetlinkingdataverse;
       public         	   dataverse    false    6            1           1259    17056    datasetlinkingdataverse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetlinkingdataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.datasetlinkingdataverse_id_seq;
       public       	   dataverse    false    306    6            �           0    0    datasetlinkingdataverse_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.datasetlinkingdataverse_id_seq OWNED BY public.datasetlinkingdataverse.id;
          public       	   dataverse    false    305            c           1259    17353    datasetlock    TABLE     �   CREATE TABLE public.datasetlock (
    id integer NOT NULL,
    info character varying(255),
    reason character varying(255) NOT NULL,
    starttime timestamp without time zone,
    dataset_id bigint NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.datasetlock;
       public         	   dataverse    false    6            b           1259    17351    datasetlock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetlock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.datasetlock_id_seq;
       public       	   dataverse    false    355    6            �           0    0    datasetlock_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.datasetlock_id_seq OWNED BY public.datasetlock.id;
          public       	   dataverse    false    354                       1259    16761    datasetmetrics    TABLE     �  CREATE TABLE public.datasetmetrics (
    id integer NOT NULL,
    countrycode character varying(255),
    downloadstotalmachine bigint,
    downloadstotalregular bigint,
    downloadsuniquemachine bigint,
    downloadsuniqueregular bigint,
    monthyear character varying(255),
    viewstotalmachine bigint,
    viewstotalregular bigint,
    viewsuniquemachine bigint,
    viewsuniqueregular bigint,
    dataset_id bigint NOT NULL
);
 "   DROP TABLE public.datasetmetrics;
       public         	   dataverse    false    6                       1259    16759    datasetmetrics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetmetrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.datasetmetrics_id_seq;
       public       	   dataverse    false    6    258            �           0    0    datasetmetrics_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.datasetmetrics_id_seq OWNED BY public.datasetmetrics.id;
          public       	   dataverse    false    257            �            1259    16737    datasetversion    TABLE     u  CREATE TABLE public.datasetversion (
    id integer NOT NULL,
    unf character varying(255),
    archivalcopylocation text,
    archivenote character varying(1000),
    archivetime timestamp without time zone,
    createtime timestamp without time zone NOT NULL,
    deaccessionlink character varying(255),
    lastupdatetime timestamp without time zone NOT NULL,
    minorversionnumber bigint,
    releasetime timestamp without time zone,
    version bigint,
    versionnote character varying(1000),
    versionnumber bigint,
    versionstate character varying(255),
    dataset_id bigint,
    termsofuseandaccess_id bigint
);
 "   DROP TABLE public.datasetversion;
       public         	   dataverse    false    6            �            1259    16735    datasetversion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetversion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.datasetversion_id_seq;
       public       	   dataverse    false    6    254            �           0    0    datasetversion_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.datasetversion_id_seq OWNED BY public.datasetversion.id;
          public       	   dataverse    false    253            Y           1259    17298    datasetversionuser    TABLE     �   CREATE TABLE public.datasetversionuser (
    id integer NOT NULL,
    lastupdatedate timestamp without time zone NOT NULL,
    authenticateduser_id bigint,
    datasetversion_id bigint
);
 &   DROP TABLE public.datasetversionuser;
       public         	   dataverse    false    6            X           1259    17296    datasetversionuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datasetversionuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.datasetversionuser_id_seq;
       public       	   dataverse    false    345    6            �           0    0    datasetversionuser_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.datasetversionuser_id_seq OWNED BY public.datasetversionuser.id;
          public       	   dataverse    false    344                       1259    16943 	   datatable    TABLE     |  CREATE TABLE public.datatable (
    id integer NOT NULL,
    casequantity bigint,
    originalfileformat character varying(255),
    originalfilename character varying(255),
    originalfilesize bigint,
    originalformatversion character varying(255),
    recordspercase bigint,
    unf character varying(255) NOT NULL,
    varquantity bigint,
    datafile_id bigint NOT NULL
);
    DROP TABLE public.datatable;
       public         	   dataverse    false    6                       1259    16941    datatable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datatable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.datatable_id_seq;
       public       	   dataverse    false    6    287            �           0    0    datatable_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.datatable_id_seq OWNED BY public.datatable.id;
          public       	   dataverse    false    286            E           1259    17168    datavariable    TABLE       CREATE TABLE public.datavariable (
    id integer NOT NULL,
    factor boolean,
    fileendposition bigint,
    fileorder integer,
    filestartposition bigint,
    format character varying(255),
    formatcategory character varying(255),
    "interval" integer,
    label text,
    name character varying(255),
    numberofdecimalpoints bigint,
    orderedfactor boolean,
    recordsegmentnumber bigint,
    type integer,
    unf character varying(255),
    weighted boolean,
    datatable_id bigint NOT NULL
);
     DROP TABLE public.datavariable;
       public         	   dataverse    false    6            D           1259    17166    datavariable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datavariable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.datavariable_id_seq;
       public       	   dataverse    false    325    6            �           0    0    datavariable_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.datavariable_id_seq OWNED BY public.datavariable.id;
          public       	   dataverse    false    324            �            1259    16514 	   dataverse    TABLE       CREATE TABLE public.dataverse (
    id bigint NOT NULL,
    affiliation character varying(255),
    alias character varying(255) NOT NULL,
    dataversetype character varying(255) NOT NULL,
    description text,
    facetroot boolean,
    guestbookroot boolean,
    metadatablockroot boolean,
    name character varying(255) NOT NULL,
    permissionroot boolean,
    storagedriver character varying(255),
    templateroot boolean,
    themeroot boolean,
    defaultcontributorrole_id bigint,
    defaulttemplate_id bigint
);
    DROP TABLE public.dataverse;
       public         	   dataverse    false    6            i           1259    17400 #   dataverse_citationdatasetfieldtypes    TABLE     �   CREATE TABLE public.dataverse_citationdatasetfieldtypes (
    dataverse_id bigint NOT NULL,
    citationdatasetfieldtype_id bigint NOT NULL
);
 7   DROP TABLE public.dataverse_citationdatasetfieldtypes;
       public         	   dataverse    false    6            k           1259    17410    dataverse_metadatablock    TABLE     y   CREATE TABLE public.dataverse_metadatablock (
    dataverse_id bigint NOT NULL,
    metadatablocks_id bigint NOT NULL
);
 +   DROP TABLE public.dataverse_metadatablock;
       public         	   dataverse    false    6            A           1259    17145    dataversecontact    TABLE     �   CREATE TABLE public.dataversecontact (
    id integer NOT NULL,
    contactemail character varying(255) NOT NULL,
    displayorder integer,
    dataverse_id bigint
);
 $   DROP TABLE public.dataversecontact;
       public         	   dataverse    false    6            @           1259    17143    dataversecontact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataversecontact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.dataversecontact_id_seq;
       public       	   dataverse    false    6    321            �           0    0    dataversecontact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.dataversecontact_id_seq OWNED BY public.dataversecontact.id;
          public       	   dataverse    false    320            �            1259    16566    dataversefacet    TABLE     �   CREATE TABLE public.dataversefacet (
    id integer NOT NULL,
    displayorder integer,
    datasetfieldtype_id bigint,
    dataverse_id bigint
);
 "   DROP TABLE public.dataversefacet;
       public         	   dataverse    false    6            �            1259    16564    dataversefacet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataversefacet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dataversefacet_id_seq;
       public       	   dataverse    false    6    226            �           0    0    dataversefacet_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dataversefacet_id_seq OWNED BY public.dataversefacet.id;
          public       	   dataverse    false    225            �            1259    16588    dataversefeatureddataverse    TABLE     �   CREATE TABLE public.dataversefeatureddataverse (
    id integer NOT NULL,
    displayorder integer,
    dataverse_id bigint,
    featureddataverse_id bigint
);
 .   DROP TABLE public.dataversefeatureddataverse;
       public         	   dataverse    false    6            �            1259    16586 !   dataversefeatureddataverse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataversefeatureddataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.dataversefeatureddataverse_id_seq;
       public       	   dataverse    false    230    6            �           0    0 !   dataversefeatureddataverse_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.dataversefeatureddataverse_id_seq OWNED BY public.dataversefeatureddataverse.id;
          public       	   dataverse    false    229            J           1259    17205    dataversefieldtypeinputlevel    TABLE     �   CREATE TABLE public.dataversefieldtypeinputlevel (
    id integer NOT NULL,
    include boolean,
    required boolean,
    datasetfieldtype_id bigint,
    dataverse_id bigint
);
 0   DROP TABLE public.dataversefieldtypeinputlevel;
       public         	   dataverse    false    6            I           1259    17203 #   dataversefieldtypeinputlevel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataversefieldtypeinputlevel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.dataversefieldtypeinputlevel_id_seq;
       public       	   dataverse    false    6    330            �           0    0 #   dataversefieldtypeinputlevel_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.dataversefieldtypeinputlevel_id_seq OWNED BY public.dataversefieldtypeinputlevel.id;
          public       	   dataverse    false    329            �            1259    16455    dataverselinkingdataverse    TABLE     �   CREATE TABLE public.dataverselinkingdataverse (
    id integer NOT NULL,
    linkcreatetime timestamp without time zone,
    dataverse_id bigint NOT NULL,
    linkingdataverse_id bigint NOT NULL
);
 -   DROP TABLE public.dataverselinkingdataverse;
       public         	   dataverse    false    6            �            1259    16453     dataverselinkingdataverse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataverselinkingdataverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dataverselinkingdataverse_id_seq;
       public       	   dataverse    false    210    6            �           0    0     dataverselinkingdataverse_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dataverselinkingdataverse_id_seq OWNED BY public.dataverselinkingdataverse.id;
          public       	   dataverse    false    209            e           1259    17366    dataverserole    TABLE     �   CREATE TABLE public.dataverserole (
    id integer NOT NULL,
    alias character varying(255) NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL,
    permissionbits bigint,
    owner_id bigint
);
 !   DROP TABLE public.dataverserole;
       public         	   dataverse    false    6            d           1259    17364    dataverserole_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataverserole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dataverserole_id_seq;
       public       	   dataverse    false    6    357            �           0    0    dataverserole_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dataverserole_id_seq OWNED BY public.dataverserole.id;
          public       	   dataverse    false    356            j           1259    17405    dataversesubjects    TABLE     ~   CREATE TABLE public.dataversesubjects (
    dataverse_id bigint NOT NULL,
    controlledvocabularyvalue_id bigint NOT NULL
);
 %   DROP TABLE public.dataversesubjects;
       public         	   dataverse    false    6            �            1259    16396    dataversetheme    TABLE     9  CREATE TABLE public.dataversetheme (
    id integer NOT NULL,
    backgroundcolor character varying(255),
    linkcolor character varying(255),
    linkurl character varying(255),
    logo character varying(255),
    logoalignment character varying(255),
    logobackgroundcolor character varying(255),
    logofooter character varying(255),
    logofooteralignment integer,
    logofooterbackgroundcolor character varying(255),
    logoformat character varying(255),
    tagline character varying(255),
    textcolor character varying(255),
    dataverse_id bigint
);
 "   DROP TABLE public.dataversetheme;
       public         	   dataverse    false    6            �            1259    16394    dataversetheme_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataversetheme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.dataversetheme_id_seq;
       public       	   dataverse    false    199    6            �           0    0    dataversetheme_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.dataversetheme_id_seq OWNED BY public.dataversetheme.id;
          public       	   dataverse    false    198                       1259    16920    defaultvalueset    TABLE     k   CREATE TABLE public.defaultvalueset (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
 #   DROP TABLE public.defaultvalueset;
       public         	   dataverse    false    6                       1259    16918    defaultvalueset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.defaultvalueset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.defaultvalueset_id_seq;
       public       	   dataverse    false    6    283            �           0    0    defaultvalueset_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.defaultvalueset_id_seq OWNED BY public.defaultvalueset.id;
          public       	   dataverse    false    282            P           1259    17241    doidataciteregistercache    TABLE     �   CREATE TABLE public.doidataciteregistercache (
    id integer NOT NULL,
    doi character varying(255),
    status character varying(255),
    url character varying(255),
    xml text
);
 ,   DROP TABLE public.doidataciteregistercache;
       public         	   dataverse    false    6            O           1259    17239    doidataciteregistercache_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doidataciteregistercache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.doidataciteregistercache_id_seq;
       public       	   dataverse    false    336    6            �           0    0    doidataciteregistercache_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.doidataciteregistercache_id_seq OWNED BY public.doidataciteregistercache.id;
          public       	   dataverse    false    335            �            1259    16501    dvobject    TABLE     �  CREATE TABLE public.dvobject (
    id integer NOT NULL,
    dtype character varying(31),
    authority character varying(255),
    createdate timestamp without time zone NOT NULL,
    globalidcreatetime timestamp without time zone,
    identifier character varying(255),
    identifierregistered boolean,
    indextime timestamp without time zone,
    modificationtime timestamp without time zone NOT NULL,
    permissionindextime timestamp without time zone,
    permissionmodificationtime timestamp without time zone,
    previewimageavailable boolean,
    protocol character varying(255),
    publicationdate timestamp without time zone,
    storageidentifier character varying(255),
    creator_id bigint,
    owner_id bigint,
    releaseuser_id bigint
);
    DROP TABLE public.dvobject;
       public         	   dataverse    false    6            �            1259    16499    dvobject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dvobject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.dvobject_id_seq;
       public       	   dataverse    false    6    218            �           0    0    dvobject_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.dvobject_id_seq OWNED BY public.dvobject.id;
          public       	   dataverse    false    217                       1259    16859    explicitgroup    TABLE     �   CREATE TABLE public.explicitgroup (
    id integer NOT NULL,
    description character varying(1024),
    displayname character varying(255),
    groupalias character varying(255),
    groupaliasinowner character varying(255),
    owner_id bigint
);
 !   DROP TABLE public.explicitgroup;
       public         	   dataverse    false    6            p           1259    17437    explicitgroup_authenticateduser    TABLE     �   CREATE TABLE public.explicitgroup_authenticateduser (
    explicitgroup_id bigint NOT NULL,
    containedauthenticatedusers_id bigint NOT NULL
);
 3   DROP TABLE public.explicitgroup_authenticateduser;
       public         	   dataverse    false    6            o           1259    17434 $   explicitgroup_containedroleassignees    TABLE     �   CREATE TABLE public.explicitgroup_containedroleassignees (
    explicitgroup_id bigint,
    containedroleassignees character varying(255)
);
 8   DROP TABLE public.explicitgroup_containedroleassignees;
       public         	   dataverse    false    6            q           1259    17442    explicitgroup_explicitgroup    TABLE     �   CREATE TABLE public.explicitgroup_explicitgroup (
    explicitgroup_id bigint NOT NULL,
    containedexplicitgroups_id bigint NOT NULL
);
 /   DROP TABLE public.explicitgroup_explicitgroup;
       public         	   dataverse    false    6                       1259    16857    explicitgroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.explicitgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.explicitgroup_id_seq;
       public       	   dataverse    false    274    6            �           0    0    explicitgroup_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.explicitgroup_id_seq OWNED BY public.explicitgroup.id;
          public       	   dataverse    false    273                       1259    16886    externaltool    TABLE     L  CREATE TABLE public.externaltool (
    id integer NOT NULL,
    contenttype text,
    description text,
    displayname character varying(255) NOT NULL,
    scope character varying(255) NOT NULL,
    toolname character varying(255),
    toolparameters character varying(255) NOT NULL,
    toolurl character varying(255) NOT NULL
);
     DROP TABLE public.externaltool;
       public         	   dataverse    false    6                       1259    16884    externaltool_id_seq    SEQUENCE     �   CREATE SEQUENCE public.externaltool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.externaltool_id_seq;
       public       	   dataverse    false    278    6            �           0    0    externaltool_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.externaltool_id_seq OWNED BY public.externaltool.id;
          public       	   dataverse    false    277            �            1259    16387    externaltooltype    TABLE     �   CREATE TABLE public.externaltooltype (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    externaltool_id bigint NOT NULL
);
 $   DROP TABLE public.externaltooltype;
       public         	   dataverse    false    6            �            1259    16385    externaltooltype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.externaltooltype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.externaltooltype_id_seq;
       public       	   dataverse    false    6    197            �           0    0    externaltooltype_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.externaltooltype_id_seq OWNED BY public.externaltooltype.id;
          public       	   dataverse    false    196            s           1259    17453    fileaccessrequests    TABLE     w   CREATE TABLE public.fileaccessrequests (
    datafile_id bigint NOT NULL,
    authenticated_user_id bigint NOT NULL
);
 &   DROP TABLE public.fileaccessrequests;
       public         	   dataverse    false    6                       1259    16790    filedownload    TABLE     �   CREATE TABLE public.filedownload (
    downloadtimestamp timestamp without time zone,
    downloadtype character varying(255),
    guestbookresponse_id bigint NOT NULL,
    sessionid character varying(255)
);
     DROP TABLE public.filedownload;
       public         	   dataverse    false    6            &           1259    16990    filemetadata    TABLE     6  CREATE TABLE public.filemetadata (
    id integer NOT NULL,
    description text,
    directorylabel character varying(255),
    label character varying(255) NOT NULL,
    prov_freeform text,
    restricted boolean,
    version bigint,
    datafile_id bigint NOT NULL,
    datasetversion_id bigint NOT NULL
);
     DROP TABLE public.filemetadata;
       public         	   dataverse    false    6            h           1259    17393    filemetadata_datafilecategory    TABLE     �   CREATE TABLE public.filemetadata_datafilecategory (
    filecategories_id bigint NOT NULL,
    filemetadatas_id bigint NOT NULL
);
 1   DROP TABLE public.filemetadata_datafilecategory;
       public         	   dataverse    false    6            %           1259    16988    filemetadata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filemetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filemetadata_id_seq;
       public       	   dataverse    false    294    6            �           0    0    filemetadata_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filemetadata_id_seq OWNED BY public.filemetadata.id;
          public       	   dataverse    false    293            w           1259    18158    flyway_schema_history    TABLE     �  CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);
 )   DROP TABLE public.flyway_schema_history;
       public         	   dataverse    false    6            $           1259    16976    foreignmetadatafieldmapping    TABLE     �   CREATE TABLE public.foreignmetadatafieldmapping (
    id integer NOT NULL,
    datasetfieldname text,
    foreignfieldxpath text,
    isattribute boolean,
    foreignmetadataformatmapping_id bigint,
    parentfieldmapping_id bigint
);
 /   DROP TABLE public.foreignmetadatafieldmapping;
       public         	   dataverse    false    6            #           1259    16974 "   foreignmetadatafieldmapping_id_seq    SEQUENCE     �   CREATE SEQUENCE public.foreignmetadatafieldmapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.foreignmetadatafieldmapping_id_seq;
       public       	   dataverse    false    6    292            �           0    0 "   foreignmetadatafieldmapping_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.foreignmetadatafieldmapping_id_seq OWNED BY public.foreignmetadatafieldmapping.id;
          public       	   dataverse    false    291                       1259    16874    foreignmetadataformatmapping    TABLE     �   CREATE TABLE public.foreignmetadataformatmapping (
    id integer NOT NULL,
    displayname character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    schemalocation character varying(255),
    startelement character varying(255)
);
 0   DROP TABLE public.foreignmetadataformatmapping;
       public         	   dataverse    false    6                       1259    16872 #   foreignmetadataformatmapping_id_seq    SEQUENCE     �   CREATE SEQUENCE public.foreignmetadataformatmapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.foreignmetadataformatmapping_id_seq;
       public       	   dataverse    false    276    6            �           0    0 #   foreignmetadataformatmapping_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.foreignmetadataformatmapping_id_seq OWNED BY public.foreignmetadataformatmapping.id;
          public       	   dataverse    false    275                       1259    16813 	   guestbook    TABLE     3  CREATE TABLE public.guestbook (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    emailrequired boolean,
    enabled boolean,
    institutionrequired boolean,
    name character varying(255),
    namerequired boolean,
    positionrequired boolean,
    dataverse_id bigint
);
    DROP TABLE public.guestbook;
       public         	   dataverse    false    6            
           1259    16811    guestbook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guestbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.guestbook_id_seq;
       public       	   dataverse    false    6    267            �           0    0    guestbook_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.guestbook_id_seq OWNED BY public.guestbook.id;
          public       	   dataverse    false    266            [           1259    17308    guestbookresponse    TABLE     �  CREATE TABLE public.guestbookresponse (
    id integer NOT NULL,
    email character varying(255),
    institution character varying(255),
    name character varying(255),
    "position" character varying(255),
    responsetime timestamp without time zone,
    authenticateduser_id bigint,
    datafile_id bigint NOT NULL,
    dataset_id bigint NOT NULL,
    datasetversion_id bigint,
    guestbook_id bigint NOT NULL
);
 %   DROP TABLE public.guestbookresponse;
       public         	   dataverse    false    6            Z           1259    17306    guestbookresponse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guestbookresponse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.guestbookresponse_id_seq;
       public       	   dataverse    false    6    347            �           0    0    guestbookresponse_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.guestbookresponse_id_seq OWNED BY public.guestbookresponse.id;
          public       	   dataverse    false    346            �            1259    16599    harvestingclient    TABLE     I  CREATE TABLE public.harvestingclient (
    id integer NOT NULL,
    archivedescription text,
    archiveurl character varying(255),
    deleted boolean,
    harveststyle character varying(255),
    harvesttype character varying(255),
    harvestingnow boolean,
    harvestingset character varying(255),
    harvestingurl character varying(255),
    metadataprefix character varying(255),
    name character varying(255) NOT NULL,
    scheduledayofweek integer,
    schedulehourofday integer,
    scheduleperiod character varying(255),
    scheduled boolean,
    dataverse_id bigint
);
 $   DROP TABLE public.harvestingclient;
       public         	   dataverse    false    6            �            1259    16597    harvestingclient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.harvestingclient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.harvestingclient_id_seq;
       public       	   dataverse    false    232    6            �           0    0    harvestingclient_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.harvestingclient_id_seq OWNED BY public.harvestingclient.id;
          public       	   dataverse    false    231            S           1259    17264    harvestingdataverseconfig    TABLE     L  CREATE TABLE public.harvestingdataverseconfig (
    id bigint NOT NULL,
    archivedescription text,
    archiveurl character varying(255),
    harveststyle character varying(255),
    harvesttype character varying(255),
    harvestingset character varying(255),
    harvestingurl character varying(255),
    dataverse_id bigint
);
 -   DROP TABLE public.harvestingdataverseconfig;
       public         	   dataverse    false    6            !           1259    16955    ingestreport    TABLE     �   CREATE TABLE public.ingestreport (
    id integer NOT NULL,
    endtime timestamp without time zone,
    report text,
    starttime timestamp without time zone,
    status integer,
    type integer,
    datafile_id bigint NOT NULL
);
     DROP TABLE public.ingestreport;
       public         	   dataverse    false    6                        1259    16953    ingestreport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ingestreport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ingestreport_id_seq;
       public       	   dataverse    false    6    289            �           0    0    ingestreport_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ingestreport_id_seq OWNED BY public.ingestreport.id;
          public       	   dataverse    false    288            =           1259    17122    ingestrequest    TABLE     �   CREATE TABLE public.ingestrequest (
    id integer NOT NULL,
    controlcard character varying(255),
    forcetypecheck boolean,
    labelsfile character varying(255),
    textencoding character varying(255),
    datafile_id bigint
);
 !   DROP TABLE public.ingestrequest;
       public         	   dataverse    false    6            <           1259    17120    ingestrequest_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ingestrequest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ingestrequest_id_seq;
       public       	   dataverse    false    6    317            �           0    0    ingestrequest_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ingestrequest_id_seq OWNED BY public.ingestrequest.id;
          public       	   dataverse    false    316            �            1259    16729 	   ipv4range    TABLE     ~   CREATE TABLE public.ipv4range (
    id bigint NOT NULL,
    bottomaslong bigint,
    topaslong bigint,
    owner_id bigint
);
    DROP TABLE public.ipv4range;
       public         	   dataverse    false    6            �            1259    16535 	   ipv6range    TABLE     �   CREATE TABLE public.ipv6range (
    id bigint NOT NULL,
    bottoma bigint,
    bottomb bigint,
    bottomc bigint,
    bottomd bigint,
    topa bigint,
    topb bigint,
    topc bigint,
    topd bigint,
    owner_id bigint
);
    DROP TABLE public.ipv6range;
       public         	   dataverse    false    6                       1259    16832    maplayermetadata    TABLE       CREATE TABLE public.maplayermetadata (
    id integer NOT NULL,
    embedmaplink character varying(255) NOT NULL,
    isjoinlayer boolean,
    joindescription text,
    lastverifiedstatus integer,
    lastverifiedtime timestamp without time zone,
    layerlink character varying(255) NOT NULL,
    layername character varying(255) NOT NULL,
    mapimagelink character varying(255),
    maplayerlinks text,
    worldmapusername character varying(255) NOT NULL,
    dataset_id bigint NOT NULL,
    datafile_id bigint NOT NULL
);
 $   DROP TABLE public.maplayermetadata;
       public         	   dataverse    false    6                       1259    16830    maplayermetadata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.maplayermetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.maplayermetadata_id_seq;
       public       	   dataverse    false    270    6            �           0    0    maplayermetadata_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.maplayermetadata_id_seq OWNED BY public.maplayermetadata.id;
          public       	   dataverse    false    269            �            1259    16465    metadatablock    TABLE     �   CREATE TABLE public.metadatablock (
    id integer NOT NULL,
    displayname character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    namespaceuri text,
    owner_id bigint
);
 !   DROP TABLE public.metadatablock;
       public         	   dataverse    false    6            �            1259    16463    metadatablock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.metadatablock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.metadatablock_id_seq;
       public       	   dataverse    false    212    6            �           0    0    metadatablock_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.metadatablock_id_seq OWNED BY public.metadatablock.id;
          public       	   dataverse    false    211                        1259    16749    metric    TABLE     �   CREATE TABLE public.metric (
    id integer NOT NULL,
    datalocation text,
    daystring text,
    lastcalleddate timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    valuejson text
);
    DROP TABLE public.metric;
       public         	   dataverse    false    6            �            1259    16747    metric_id_seq    SEQUENCE     �   CREATE SEQUENCE public.metric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.metric_id_seq;
       public       	   dataverse    false    256    6            �           0    0    metric_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.metric_id_seq OWNED BY public.metric.id;
          public       	   dataverse    false    255            �            1259    16577 	   oairecord    TABLE     �   CREATE TABLE public.oairecord (
    id integer NOT NULL,
    globalid character varying(255),
    lastupdatetime timestamp without time zone,
    removed boolean,
    setname character varying(255)
);
    DROP TABLE public.oairecord;
       public         	   dataverse    false    6            �            1259    16575    oairecord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oairecord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.oairecord_id_seq;
       public       	   dataverse    false    6    228            �           0    0    oairecord_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.oairecord_id_seq OWNED BY public.oairecord.id;
          public       	   dataverse    false    227            �            1259    16444    oaiset    TABLE     �   CREATE TABLE public.oaiset (
    id integer NOT NULL,
    definition text,
    deleted boolean,
    description text,
    name text,
    spec text,
    updateinprogress boolean,
    version bigint
);
    DROP TABLE public.oaiset;
       public         	   dataverse    false    6            �            1259    16442    oaiset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oaiset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.oaiset_id_seq;
       public       	   dataverse    false    208    6            �           0    0    oaiset_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.oaiset_id_seq OWNED BY public.oaiset.id;
          public       	   dataverse    false    207            �            1259    16490    oauth2tokendata    TABLE     &  CREATE TABLE public.oauth2tokendata (
    id integer NOT NULL,
    accesstoken text,
    expirydate timestamp without time zone,
    oauthproviderid character varying(255),
    rawresponse text,
    refreshtoken character varying(64),
    tokentype character varying(32),
    user_id bigint
);
 #   DROP TABLE public.oauth2tokendata;
       public         	   dataverse    false    6            �            1259    16488    oauth2tokendata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oauth2tokendata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.oauth2tokendata_id_seq;
       public       	   dataverse    false    6    216            �           0    0    oauth2tokendata_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.oauth2tokendata_id_seq OWNED BY public.oauth2tokendata.id;
          public       	   dataverse    false    215            .           1259    17032    passwordresetdata    TABLE       CREATE TABLE public.passwordresetdata (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    expires timestamp without time zone NOT NULL,
    reason character varying(255),
    token character varying(255),
    builtinuser_id bigint NOT NULL
);
 %   DROP TABLE public.passwordresetdata;
       public         	   dataverse    false    6            -           1259    17030    passwordresetdata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.passwordresetdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.passwordresetdata_id_seq;
       public       	   dataverse    false    302    6            �           0    0    passwordresetdata_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.passwordresetdata_id_seq OWNED BY public.passwordresetdata.id;
          public       	   dataverse    false    301                       1259    16910    pendingworkflowinvocation    TABLE     y  CREATE TABLE public.pendingworkflowinvocation (
    invocationid character varying(255) NOT NULL,
    datasetexternallyreleased boolean,
    ipaddress character varying(255),
    nextminorversionnumber bigint,
    nextversionnumber bigint,
    pendingstepidx integer,
    typeordinal integer,
    userid character varying(255),
    workflow_id bigint,
    dataset_id bigint
);
 -   DROP TABLE public.pendingworkflowinvocation;
       public         	   dataverse    false    6            r           1259    17447 #   pendingworkflowinvocation_localdata    TABLE     �   CREATE TABLE public.pendingworkflowinvocation_localdata (
    pendingworkflowinvocation_invocationid character varying(255),
    localdata character varying(255),
    localdata_key character varying(255)
);
 7   DROP TABLE public.pendingworkflowinvocation_localdata;
       public         	   dataverse    false    6            �            1259    16625    persistedglobalgroup    TABLE     $  CREATE TABLE public.persistedglobalgroup (
    id bigint NOT NULL,
    dtype character varying(31),
    description character varying(255),
    displayname character varying(255),
    persistedgroupalias character varying(255),
    emaildomains character varying(255),
    isregex boolean
);
 (   DROP TABLE public.persistedglobalgroup;
       public         	   dataverse    false    6            �            1259    16417    roleassignment    TABLE     �   CREATE TABLE public.roleassignment (
    id integer NOT NULL,
    assigneeidentifier character varying(255) NOT NULL,
    privateurltoken character varying(255),
    definitionpoint_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 "   DROP TABLE public.roleassignment;
       public         	   dataverse    false    6            �            1259    16415    roleassignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roleassignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.roleassignment_id_seq;
       public       	   dataverse    false    203    6            �           0    0    roleassignment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.roleassignment_id_seq OWNED BY public.roleassignment.id;
          public       	   dataverse    false    202                       1259    16846    savedsearch    TABLE     �   CREATE TABLE public.savedsearch (
    id integer NOT NULL,
    query text,
    creator_id bigint NOT NULL,
    definitionpoint_id bigint NOT NULL
);
    DROP TABLE public.savedsearch;
       public         	   dataverse    false    6                       1259    16844    savedsearch_id_seq    SEQUENCE     �   CREATE SEQUENCE public.savedsearch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.savedsearch_id_seq;
       public       	   dataverse    false    272    6            �           0    0    savedsearch_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.savedsearch_id_seq OWNED BY public.savedsearch.id;
          public       	   dataverse    false    271            �            1259    16543    savedsearchfilterquery    TABLE     �   CREATE TABLE public.savedsearchfilterquery (
    id integer NOT NULL,
    filterquery text,
    savedsearch_id bigint NOT NULL
);
 *   DROP TABLE public.savedsearchfilterquery;
       public         	   dataverse    false    6            �            1259    16541    savedsearchfilterquery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.savedsearchfilterquery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.savedsearchfilterquery_id_seq;
       public       	   dataverse    false    222    6            �           0    0    savedsearchfilterquery_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.savedsearchfilterquery_id_seq OWNED BY public.savedsearchfilterquery.id;
          public       	   dataverse    false    221            u           1259    18144    sequence    TABLE     k   CREATE TABLE public.sequence (
    seq_name character varying(50) NOT NULL,
    seq_count numeric(38,0)
);
    DROP TABLE public.sequence;
       public         	   dataverse    false    6            ?           1259    17134    setting    TABLE     �   CREATE TABLE public.setting (
    id integer NOT NULL,
    content text,
    lang text,
    name text,
    CONSTRAINT non_empty_lang CHECK ((lang <> ''::text))
);
    DROP TABLE public.setting;
       public         	   dataverse    false    6            >           1259    17132    setting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.setting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.setting_id_seq;
       public       	   dataverse    false    6    319            �           0    0    setting_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.setting_id_seq OWNED BY public.setting.id;
          public       	   dataverse    false    318            x           1259    18169    setting_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.setting_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.setting_id_seq1;
       public       	   dataverse    false    319    6            �           0    0    setting_id_seq1    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.setting_id_seq1 OWNED BY public.setting.id;
          public       	   dataverse    false    376            �            1259    16697 	   shibgroup    TABLE     �   CREATE TABLE public.shibgroup (
    id integer NOT NULL,
    attribute character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    pattern character varying(255) NOT NULL
);
    DROP TABLE public.shibgroup;
       public         	   dataverse    false    6            �            1259    16695    shibgroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shibgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.shibgroup_id_seq;
       public       	   dataverse    false    6    247            �           0    0    shibgroup_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.shibgroup_id_seq OWNED BY public.shibgroup.id;
          public       	   dataverse    false    246            �            1259    16555    storagesite    TABLE     �   CREATE TABLE public.storagesite (
    id integer NOT NULL,
    hostname text,
    name text,
    primarystorage boolean NOT NULL,
    transferprotocols text
);
    DROP TABLE public.storagesite;
       public         	   dataverse    false    6            �            1259    16553    storagesite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.storagesite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.storagesite_id_seq;
       public       	   dataverse    false    224    6            �           0    0    storagesite_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.storagesite_id_seq OWNED BY public.storagesite.id;
          public       	   dataverse    false    223            *           1259    17011    summarystatistic    TABLE     �   CREATE TABLE public.summarystatistic (
    id integer NOT NULL,
    type integer,
    value character varying(255),
    datavariable_id bigint NOT NULL
);
 $   DROP TABLE public.summarystatistic;
       public         	   dataverse    false    6            )           1259    17009    summarystatistic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.summarystatistic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.summarystatistic_id_seq;
       public       	   dataverse    false    6    298            �           0    0    summarystatistic_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.summarystatistic_id_seq OWNED BY public.summarystatistic.id;
          public       	   dataverse    false    297            a           1259    17344    template    TABLE     �   CREATE TABLE public.template (
    id integer NOT NULL,
    createtime timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    usagecount bigint,
    dataverse_id bigint,
    termsofuseandaccess_id bigint
);
    DROP TABLE public.template;
       public         	   dataverse    false    6            `           1259    17342    template_id_seq    SEQUENCE     �   CREATE SEQUENCE public.template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.template_id_seq;
       public       	   dataverse    false    6    353            �           0    0    template_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.template_id_seq OWNED BY public.template.id;
          public       	   dataverse    false    352            N           1259    17230    termsofuseandaccess    TABLE       CREATE TABLE public.termsofuseandaccess (
    id integer NOT NULL,
    availabilitystatus text,
    citationrequirements text,
    conditions text,
    confidentialitydeclaration text,
    contactforaccess text,
    dataaccessplace text,
    depositorrequirements text,
    disclaimer text,
    fileaccessrequest boolean,
    license character varying(255),
    originalarchive text,
    restrictions text,
    sizeofcollection text,
    specialpermissions text,
    studycompletion text,
    termsofaccess text,
    termsofuse text
);
 '   DROP TABLE public.termsofuseandaccess;
       public         	   dataverse    false    6            M           1259    17228    termsofuseandaccess_id_seq    SEQUENCE     �   CREATE SEQUENCE public.termsofuseandaccess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.termsofuseandaccess_id_seq;
       public       	   dataverse    false    6    334            �           0    0    termsofuseandaccess_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.termsofuseandaccess_id_seq OWNED BY public.termsofuseandaccess.id;
          public       	   dataverse    false    333                       1259    16772    usernotification    TABLE       CREATE TABLE public.usernotification (
    id integer NOT NULL,
    emailed boolean,
    objectid bigint,
    readnotification boolean,
    senddate timestamp without time zone,
    type integer NOT NULL,
    requestor_id bigint,
    user_id bigint NOT NULL
);
 $   DROP TABLE public.usernotification;
       public         	   dataverse    false    6                       1259    16770    usernotification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usernotification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usernotification_id_seq;
       public       	   dataverse    false    6    260            �           0    0    usernotification_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usernotification_id_seq OWNED BY public.usernotification.id;
          public       	   dataverse    false    259            R           1259    17254    vargroup    TABLE     o   CREATE TABLE public.vargroup (
    id integer NOT NULL,
    label text,
    filemetadata_id bigint NOT NULL
);
    DROP TABLE public.vargroup;
       public         	   dataverse    false    6            t           1259    17458    vargroup_datavariable    TABLE     s   CREATE TABLE public.vargroup_datavariable (
    vargroup_id bigint NOT NULL,
    varsingroup_id bigint NOT NULL
);
 )   DROP TABLE public.vargroup_datavariable;
       public         	   dataverse    false    6            Q           1259    17252    vargroup_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vargroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vargroup_id_seq;
       public       	   dataverse    false    338    6            �           0    0    vargroup_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vargroup_id_seq OWNED BY public.vargroup.id;
          public       	   dataverse    false    337            C           1259    17156    variablecategory    TABLE     �   CREATE TABLE public.variablecategory (
    id integer NOT NULL,
    catorder integer,
    frequency double precision,
    label character varying(255),
    missing boolean,
    value character varying(255),
    datavariable_id bigint NOT NULL
);
 $   DROP TABLE public.variablecategory;
       public         	   dataverse    false    6            B           1259    17154    variablecategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variablecategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.variablecategory_id_seq;
       public       	   dataverse    false    323    6            �           0    0    variablecategory_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.variablecategory_id_seq OWNED BY public.variablecategory.id;
          public       	   dataverse    false    322            �            1259    16650    variablemetadata    TABLE     n  CREATE TABLE public.variablemetadata (
    id integer NOT NULL,
    interviewinstruction text,
    isweightvar boolean,
    label text,
    literalquestion text,
    notes text,
    postquestion text,
    universe character varying(255),
    weighted boolean,
    datavariable_id bigint NOT NULL,
    filemetadata_id bigint NOT NULL,
    weightvariable_id bigint
);
 $   DROP TABLE public.variablemetadata;
       public         	   dataverse    false    6            �            1259    16648    variablemetadata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variablemetadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.variablemetadata_id_seq;
       public       	   dataverse    false    6    239            �           0    0    variablemetadata_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.variablemetadata_id_seq OWNED BY public.variablemetadata.id;
          public       	   dataverse    false    238            �            1259    16685    variablerange    TABLE     �   CREATE TABLE public.variablerange (
    id integer NOT NULL,
    beginvalue character varying(255),
    beginvaluetype integer,
    endvalue character varying(255),
    endvaluetype integer,
    datavariable_id bigint NOT NULL
);
 !   DROP TABLE public.variablerange;
       public         	   dataverse    false    6            �            1259    16683    variablerange_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variablerange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.variablerange_id_seq;
       public       	   dataverse    false    245    6            �           0    0    variablerange_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.variablerange_id_seq OWNED BY public.variablerange.id;
          public       	   dataverse    false    244            �            1259    16676    variablerangeitem    TABLE     �   CREATE TABLE public.variablerangeitem (
    id integer NOT NULL,
    value numeric(38,0),
    datavariable_id bigint NOT NULL
);
 %   DROP TABLE public.variablerangeitem;
       public         	   dataverse    false    6            �            1259    16674    variablerangeitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variablerangeitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.variablerangeitem_id_seq;
       public       	   dataverse    false    6    243            �           0    0    variablerangeitem_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.variablerangeitem_id_seq OWNED BY public.variablerangeitem.id;
          public       	   dataverse    false    242            �            1259    16436    workflow    TABLE     [   CREATE TABLE public.workflow (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.workflow;
       public         	   dataverse    false    6            �            1259    16434    workflow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.workflow_id_seq;
       public       	   dataverse    false    206    6            �           0    0    workflow_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.workflow_id_seq OWNED BY public.workflow.id;
          public       	   dataverse    false    205            �            1259    16708    workflowcomment    TABLE     �   CREATE TABLE public.workflowcomment (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    message text,
    type character varying(255) NOT NULL,
    authenticateduser_id bigint,
    datasetversion_id bigint NOT NULL
);
 #   DROP TABLE public.workflowcomment;
       public         	   dataverse    false    6            �            1259    16706    workflowcomment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workflowcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.workflowcomment_id_seq;
       public       	   dataverse    false    6    249            �           0    0    workflowcomment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.workflowcomment_id_seq OWNED BY public.workflowcomment.id;
          public       	   dataverse    false    248                       1259    16781    workflowstepdata    TABLE     �   CREATE TABLE public.workflowstepdata (
    id integer NOT NULL,
    providerid character varying(255),
    steptype character varying(255),
    parent_id bigint,
    index integer
);
 $   DROP TABLE public.workflowstepdata;
       public         	   dataverse    false    6                       1259    16779    workflowstepdata_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workflowstepdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.workflowstepdata_id_seq;
       public       	   dataverse    false    262    6            �           0    0    workflowstepdata_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.workflowstepdata_id_seq OWNED BY public.workflowstepdata.id;
          public       	   dataverse    false    261            m           1259    17422    workflowstepdata_stepparameters    TABLE     �   CREATE TABLE public.workflowstepdata_stepparameters (
    workflowstepdata_id bigint,
    stepparameters character varying(2048),
    stepparameters_key character varying(255)
);
 3   DROP TABLE public.workflowstepdata_stepparameters;
       public         	   dataverse    false    6            n           1259    17428    workflowstepdata_stepsettings    TABLE     �   CREATE TABLE public.workflowstepdata_stepsettings (
    workflowstepdata_id bigint,
    stepsettings character varying(2048),
    stepsettings_key character varying(255)
);
 1   DROP TABLE public.workflowstepdata_stepsettings;
       public         	   dataverse    false    6            ,           1259    17020    worldmapauth_token    TABLE     �  CREATE TABLE public.worldmapauth_token (
    id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    hasexpired boolean NOT NULL,
    lastrefreshtime timestamp without time zone NOT NULL,
    modified timestamp without time zone NOT NULL,
    token character varying(255),
    application_id bigint NOT NULL,
    datafile_id bigint NOT NULL,
    dataverseuser_id bigint NOT NULL
);
 &   DROP TABLE public.worldmapauth_token;
       public         	   dataverse    false    6            +           1259    17018    worldmapauth_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worldmapauth_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.worldmapauth_token_id_seq;
       public       	   dataverse    false    6    300            �           0    0    worldmapauth_token_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.worldmapauth_token_id_seq OWNED BY public.worldmapauth_token.id;
          public       	   dataverse    false    299            7           1259    17086    worldmapauth_tokentype    TABLE     �  CREATE TABLE public.worldmapauth_tokentype (
    id integer NOT NULL,
    contactemail character varying(255),
    created timestamp without time zone NOT NULL,
    hostname character varying(255),
    ipaddress character varying(255),
    mapitlink character varying(255) NOT NULL,
    md5 character varying(255) NOT NULL,
    modified timestamp without time zone NOT NULL,
    name character varying(255) NOT NULL,
    timelimitminutes integer DEFAULT 30,
    timelimitseconds bigint DEFAULT 1800
);
 *   DROP TABLE public.worldmapauth_tokentype;
       public         	   dataverse    false    6            6           1259    17084    worldmapauth_tokentype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.worldmapauth_tokentype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.worldmapauth_tokentype_id_seq;
       public       	   dataverse    false    311    6            �           0    0    worldmapauth_tokentype_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.worldmapauth_tokentype_id_seq OWNED BY public.worldmapauth_tokentype.id;
          public       	   dataverse    false    310            c           2604    17281 "   alternativepersistentidentifier id    DEFAULT     �   ALTER TABLE ONLY public.alternativepersistentidentifier ALTER COLUMN id SET DEFAULT nextval('public.alternativepersistentidentifier_id_seq'::regclass);
 Q   ALTER TABLE public.alternativepersistentidentifier ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    340    341    341            0           2604    16619    apitoken id    DEFAULT     j   ALTER TABLE ONLY public.apitoken ALTER COLUMN id SET DEFAULT nextval('public.apitoken_id_seq'::regclass);
 :   ALTER TABLE public.apitoken ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    233    234    234            G           2604    16931    authenticateduser id    DEFAULT     |   ALTER TABLE ONLY public.authenticateduser ALTER COLUMN id SET DEFAULT nextval('public.authenticateduser_id_seq'::regclass);
 C   ALTER TABLE public.authenticateduser ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    285    284    285            W           2604    17112    authenticateduserlookup id    DEFAULT     �   ALTER TABLE ONLY public.authenticateduserlookup ALTER COLUMN id SET DEFAULT nextval('public.authenticateduserlookup_id_seq'::regclass);
 I   ALTER TABLE public.authenticateduserlookup ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    315    314    315            _           2604    17219    builtinuser id    DEFAULT     p   ALTER TABLE ONLY public.builtinuser ALTER COLUMN id SET DEFAULT nextval('public.builtinuser_id_seq'::regclass);
 =   ALTER TABLE public.builtinuser ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    332    331    332            h           2604    17337    categorymetadata id    DEFAULT     z   ALTER TABLE ONLY public.categorymetadata ALTER COLUMN id SET DEFAULT nextval('public.categorymetadata_id_seq'::regclass);
 B   ALTER TABLE public.categorymetadata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    350    351    351            R           2604    17081    clientharvestrun id    DEFAULT     z   ALTER TABLE ONLY public.clientharvestrun ALTER COLUMN id SET DEFAULT nextval('public.clientharvestrun_id_seq'::regclass);
 B   ALTER TABLE public.clientharvestrun ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    309    308    309            '           2604    16481    confirmemaildata id    DEFAULT     z   ALTER TABLE ONLY public.confirmemaildata ALTER COLUMN id SET DEFAULT nextval('public.confirmemaildata_id_seq'::regclass);
 B   ALTER TABLE public.confirmemaildata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    214    213    214            ]           2604    17183    controlledvocabalternate id    DEFAULT     �   ALTER TABLE ONLY public.controlledvocabalternate ALTER COLUMN id SET DEFAULT nextval('public.controlledvocabalternate_id_seq'::regclass);
 J   ALTER TABLE public.controlledvocabalternate ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    326    327    327            P           2604    17048    controlledvocabularyvalue id    DEFAULT     �   ALTER TABLE ONLY public.controlledvocabularyvalue ALTER COLUMN id SET DEFAULT nextval('public.controlledvocabularyvalue_id_seq'::regclass);
 K   ALTER TABLE public.controlledvocabularyvalue ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    304    303    304            >           2604    16803    customfieldmap id    DEFAULT     v   ALTER TABLE ONLY public.customfieldmap ALTER COLUMN id SET DEFAULT nextval('public.customfieldmap_id_seq'::regclass);
 @   ALTER TABLE public.customfieldmap ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    265    264    265            3           2604    16667    customquestion id    DEFAULT     v   ALTER TABLE ONLY public.customquestion ALTER COLUMN id SET DEFAULT nextval('public.customquestion_id_seq'::regclass);
 @   ALTER TABLE public.customquestion ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    240    241    241            g           2604    17325    customquestionresponse id    DEFAULT     �   ALTER TABLE ONLY public.customquestionresponse ALTER COLUMN id SET DEFAULT nextval('public.customquestionresponse_id_seq'::regclass);
 H   ALTER TABLE public.customquestionresponse ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    349    348    349            L           2604    17006    customquestionvalue id    DEFAULT     �   ALTER TABLE ONLY public.customquestionvalue ALTER COLUMN id SET DEFAULT nextval('public.customquestionvalue_id_seq'::regclass);
 E   ALTER TABLE public.customquestionvalue ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    295    296    296            !           2604    16411    datafilecategory id    DEFAULT     z   ALTER TABLE ONLY public.datafilecategory ALTER COLUMN id SET DEFAULT nextval('public.datafilecategory_id_seq'::regclass);
 B   ALTER TABLE public.datafilecategory ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    200    201    201            V           2604    17103    datafiletag id    DEFAULT     p   ALTER TABLE ONLY public.datafiletag ALTER COLUMN id SET DEFAULT nextval('public.datafiletag_id_seq'::regclass);
 =   ALTER TABLE public.datafiletag ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    312    313    313            8           2604    16722    datasetfield id    DEFAULT     r   ALTER TABLE ONLY public.datasetfield ALTER COLUMN id SET DEFAULT nextval('public.datasetfield_id_seq'::regclass);
 >   ALTER TABLE public.datasetfield ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    250    251    251            d           2604    17292    datasetfieldcompoundvalue id    DEFAULT     �   ALTER TABLE ONLY public.datasetfieldcompoundvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldcompoundvalue_id_seq'::regclass);
 K   ALTER TABLE public.datasetfieldcompoundvalue ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    343    342    343            E           2604    16900    datasetfielddefaultvalue id    DEFAULT     �   ALTER TABLE ONLY public.datasetfielddefaultvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfielddefaultvalue_id_seq'::regclass);
 J   ALTER TABLE public.datasetfielddefaultvalue ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    279    280    280            l           2604    17385    datasetfieldtype id    DEFAULT     z   ALTER TABLE ONLY public.datasetfieldtype ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldtype_id_seq'::regclass);
 B   ALTER TABLE public.datasetfieldtype ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    359    358    359            1           2604    16641    datasetfieldvalue id    DEFAULT     |   ALTER TABLE ONLY public.datasetfieldvalue ALTER COLUMN id SET DEFAULT nextval('public.datasetfieldvalue_id_seq'::regclass);
 C   ALTER TABLE public.datasetfieldvalue ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    237    236    237            Q           2604    17061    datasetlinkingdataverse id    DEFAULT     �   ALTER TABLE ONLY public.datasetlinkingdataverse ALTER COLUMN id SET DEFAULT nextval('public.datasetlinkingdataverse_id_seq'::regclass);
 I   ALTER TABLE public.datasetlinkingdataverse ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    305    306    306            j           2604    17356    datasetlock id    DEFAULT     p   ALTER TABLE ONLY public.datasetlock ALTER COLUMN id SET DEFAULT nextval('public.datasetlock_id_seq'::regclass);
 =   ALTER TABLE public.datasetlock ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    355    354    355            ;           2604    16764    datasetmetrics id    DEFAULT     v   ALTER TABLE ONLY public.datasetmetrics ALTER COLUMN id SET DEFAULT nextval('public.datasetmetrics_id_seq'::regclass);
 @   ALTER TABLE public.datasetmetrics ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    258    257    258            9           2604    16740    datasetversion id    DEFAULT     v   ALTER TABLE ONLY public.datasetversion ALTER COLUMN id SET DEFAULT nextval('public.datasetversion_id_seq'::regclass);
 @   ALTER TABLE public.datasetversion ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    254    253    254            e           2604    17301    datasetversionuser id    DEFAULT     ~   ALTER TABLE ONLY public.datasetversionuser ALTER COLUMN id SET DEFAULT nextval('public.datasetversionuser_id_seq'::regclass);
 D   ALTER TABLE public.datasetversionuser ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    345    344    345            H           2604    16946    datatable id    DEFAULT     l   ALTER TABLE ONLY public.datatable ALTER COLUMN id SET DEFAULT nextval('public.datatable_id_seq'::regclass);
 ;   ALTER TABLE public.datatable ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    286    287    287            \           2604    17171    datavariable id    DEFAULT     r   ALTER TABLE ONLY public.datavariable ALTER COLUMN id SET DEFAULT nextval('public.datavariable_id_seq'::regclass);
 >   ALTER TABLE public.datavariable ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    325    324    325            Z           2604    17148    dataversecontact id    DEFAULT     z   ALTER TABLE ONLY public.dataversecontact ALTER COLUMN id SET DEFAULT nextval('public.dataversecontact_id_seq'::regclass);
 B   ALTER TABLE public.dataversecontact ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    320    321    321            ,           2604    16569    dataversefacet id    DEFAULT     v   ALTER TABLE ONLY public.dataversefacet ALTER COLUMN id SET DEFAULT nextval('public.dataversefacet_id_seq'::regclass);
 @   ALTER TABLE public.dataversefacet ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    226    225    226            .           2604    16591    dataversefeatureddataverse id    DEFAULT     �   ALTER TABLE ONLY public.dataversefeatureddataverse ALTER COLUMN id SET DEFAULT nextval('public.dataversefeatureddataverse_id_seq'::regclass);
 L   ALTER TABLE public.dataversefeatureddataverse ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    230    229    230            ^           2604    17208    dataversefieldtypeinputlevel id    DEFAULT     �   ALTER TABLE ONLY public.dataversefieldtypeinputlevel ALTER COLUMN id SET DEFAULT nextval('public.dataversefieldtypeinputlevel_id_seq'::regclass);
 N   ALTER TABLE public.dataversefieldtypeinputlevel ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    330    329    330            %           2604    16458    dataverselinkingdataverse id    DEFAULT     �   ALTER TABLE ONLY public.dataverselinkingdataverse ALTER COLUMN id SET DEFAULT nextval('public.dataverselinkingdataverse_id_seq'::regclass);
 K   ALTER TABLE public.dataverselinkingdataverse ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    209    210    210            k           2604    17369    dataverserole id    DEFAULT     t   ALTER TABLE ONLY public.dataverserole ALTER COLUMN id SET DEFAULT nextval('public.dataverserole_id_seq'::regclass);
 ?   ALTER TABLE public.dataverserole ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    356    357    357                        2604    16399    dataversetheme id    DEFAULT     v   ALTER TABLE ONLY public.dataversetheme ALTER COLUMN id SET DEFAULT nextval('public.dataversetheme_id_seq'::regclass);
 @   ALTER TABLE public.dataversetheme ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    198    199    199            F           2604    16923    defaultvalueset id    DEFAULT     x   ALTER TABLE ONLY public.defaultvalueset ALTER COLUMN id SET DEFAULT nextval('public.defaultvalueset_id_seq'::regclass);
 A   ALTER TABLE public.defaultvalueset ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    283    282    283            a           2604    17244    doidataciteregistercache id    DEFAULT     �   ALTER TABLE ONLY public.doidataciteregistercache ALTER COLUMN id SET DEFAULT nextval('public.doidataciteregistercache_id_seq'::regclass);
 J   ALTER TABLE public.doidataciteregistercache ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    335    336    336            )           2604    16504    dvobject id    DEFAULT     j   ALTER TABLE ONLY public.dvobject ALTER COLUMN id SET DEFAULT nextval('public.dvobject_id_seq'::regclass);
 :   ALTER TABLE public.dvobject ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    218    217    218            B           2604    16862    explicitgroup id    DEFAULT     t   ALTER TABLE ONLY public.explicitgroup ALTER COLUMN id SET DEFAULT nextval('public.explicitgroup_id_seq'::regclass);
 ?   ALTER TABLE public.explicitgroup ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    273    274    274            D           2604    16889    externaltool id    DEFAULT     r   ALTER TABLE ONLY public.externaltool ALTER COLUMN id SET DEFAULT nextval('public.externaltool_id_seq'::regclass);
 >   ALTER TABLE public.externaltool ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    277    278    278                       2604    16390    externaltooltype id    DEFAULT     z   ALTER TABLE ONLY public.externaltooltype ALTER COLUMN id SET DEFAULT nextval('public.externaltooltype_id_seq'::regclass);
 B   ALTER TABLE public.externaltooltype ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    197    196    197            K           2604    16993    filemetadata id    DEFAULT     r   ALTER TABLE ONLY public.filemetadata ALTER COLUMN id SET DEFAULT nextval('public.filemetadata_id_seq'::regclass);
 >   ALTER TABLE public.filemetadata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    293    294    294            J           2604    16979    foreignmetadatafieldmapping id    DEFAULT     �   ALTER TABLE ONLY public.foreignmetadatafieldmapping ALTER COLUMN id SET DEFAULT nextval('public.foreignmetadatafieldmapping_id_seq'::regclass);
 M   ALTER TABLE public.foreignmetadatafieldmapping ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    292    291    292            C           2604    16877    foreignmetadataformatmapping id    DEFAULT     �   ALTER TABLE ONLY public.foreignmetadataformatmapping ALTER COLUMN id SET DEFAULT nextval('public.foreignmetadataformatmapping_id_seq'::regclass);
 N   ALTER TABLE public.foreignmetadataformatmapping ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    275    276    276            ?           2604    16816    guestbook id    DEFAULT     l   ALTER TABLE ONLY public.guestbook ALTER COLUMN id SET DEFAULT nextval('public.guestbook_id_seq'::regclass);
 ;   ALTER TABLE public.guestbook ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    266    267    267            f           2604    17311    guestbookresponse id    DEFAULT     |   ALTER TABLE ONLY public.guestbookresponse ALTER COLUMN id SET DEFAULT nextval('public.guestbookresponse_id_seq'::regclass);
 C   ALTER TABLE public.guestbookresponse ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    346    347    347            /           2604    16602    harvestingclient id    DEFAULT     z   ALTER TABLE ONLY public.harvestingclient ALTER COLUMN id SET DEFAULT nextval('public.harvestingclient_id_seq'::regclass);
 B   ALTER TABLE public.harvestingclient ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    232    231    232            I           2604    16958    ingestreport id    DEFAULT     r   ALTER TABLE ONLY public.ingestreport ALTER COLUMN id SET DEFAULT nextval('public.ingestreport_id_seq'::regclass);
 >   ALTER TABLE public.ingestreport ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    288    289    289            X           2604    17125    ingestrequest id    DEFAULT     t   ALTER TABLE ONLY public.ingestrequest ALTER COLUMN id SET DEFAULT nextval('public.ingestrequest_id_seq'::regclass);
 ?   ALTER TABLE public.ingestrequest ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    317    316    317            @           2604    16835    maplayermetadata id    DEFAULT     z   ALTER TABLE ONLY public.maplayermetadata ALTER COLUMN id SET DEFAULT nextval('public.maplayermetadata_id_seq'::regclass);
 B   ALTER TABLE public.maplayermetadata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    269    270    270            &           2604    16468    metadatablock id    DEFAULT     t   ALTER TABLE ONLY public.metadatablock ALTER COLUMN id SET DEFAULT nextval('public.metadatablock_id_seq'::regclass);
 ?   ALTER TABLE public.metadatablock ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    211    212    212            :           2604    16752 	   metric id    DEFAULT     f   ALTER TABLE ONLY public.metric ALTER COLUMN id SET DEFAULT nextval('public.metric_id_seq'::regclass);
 8   ALTER TABLE public.metric ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    256    255    256            -           2604    16580    oairecord id    DEFAULT     l   ALTER TABLE ONLY public.oairecord ALTER COLUMN id SET DEFAULT nextval('public.oairecord_id_seq'::regclass);
 ;   ALTER TABLE public.oairecord ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    228    227    228            $           2604    16447 	   oaiset id    DEFAULT     f   ALTER TABLE ONLY public.oaiset ALTER COLUMN id SET DEFAULT nextval('public.oaiset_id_seq'::regclass);
 8   ALTER TABLE public.oaiset ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    208    207    208            (           2604    16493    oauth2tokendata id    DEFAULT     x   ALTER TABLE ONLY public.oauth2tokendata ALTER COLUMN id SET DEFAULT nextval('public.oauth2tokendata_id_seq'::regclass);
 A   ALTER TABLE public.oauth2tokendata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    216    215    216            O           2604    17035    passwordresetdata id    DEFAULT     |   ALTER TABLE ONLY public.passwordresetdata ALTER COLUMN id SET DEFAULT nextval('public.passwordresetdata_id_seq'::regclass);
 C   ALTER TABLE public.passwordresetdata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    302    301    302            "           2604    16420    roleassignment id    DEFAULT     v   ALTER TABLE ONLY public.roleassignment ALTER COLUMN id SET DEFAULT nextval('public.roleassignment_id_seq'::regclass);
 @   ALTER TABLE public.roleassignment ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    203    202    203            A           2604    16849    savedsearch id    DEFAULT     p   ALTER TABLE ONLY public.savedsearch ALTER COLUMN id SET DEFAULT nextval('public.savedsearch_id_seq'::regclass);
 =   ALTER TABLE public.savedsearch ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    272    271    272            *           2604    16546    savedsearchfilterquery id    DEFAULT     �   ALTER TABLE ONLY public.savedsearchfilterquery ALTER COLUMN id SET DEFAULT nextval('public.savedsearchfilterquery_id_seq'::regclass);
 H   ALTER TABLE public.savedsearchfilterquery ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    221    222    222            Y           2604    17137 
   setting id    DEFAULT     h   ALTER TABLE ONLY public.setting ALTER COLUMN id SET DEFAULT nextval('public.setting_id_seq'::regclass);
 9   ALTER TABLE public.setting ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    319    318    319            6           2604    16700    shibgroup id    DEFAULT     l   ALTER TABLE ONLY public.shibgroup ALTER COLUMN id SET DEFAULT nextval('public.shibgroup_id_seq'::regclass);
 ;   ALTER TABLE public.shibgroup ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    247    246    247            +           2604    16558    storagesite id    DEFAULT     p   ALTER TABLE ONLY public.storagesite ALTER COLUMN id SET DEFAULT nextval('public.storagesite_id_seq'::regclass);
 =   ALTER TABLE public.storagesite ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    224    223    224            M           2604    17014    summarystatistic id    DEFAULT     z   ALTER TABLE ONLY public.summarystatistic ALTER COLUMN id SET DEFAULT nextval('public.summarystatistic_id_seq'::regclass);
 B   ALTER TABLE public.summarystatistic ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    297    298    298            i           2604    17347    template id    DEFAULT     j   ALTER TABLE ONLY public.template ALTER COLUMN id SET DEFAULT nextval('public.template_id_seq'::regclass);
 :   ALTER TABLE public.template ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    352    353    353            `           2604    17233    termsofuseandaccess id    DEFAULT     �   ALTER TABLE ONLY public.termsofuseandaccess ALTER COLUMN id SET DEFAULT nextval('public.termsofuseandaccess_id_seq'::regclass);
 E   ALTER TABLE public.termsofuseandaccess ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    333    334    334            <           2604    16775    usernotification id    DEFAULT     z   ALTER TABLE ONLY public.usernotification ALTER COLUMN id SET DEFAULT nextval('public.usernotification_id_seq'::regclass);
 B   ALTER TABLE public.usernotification ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    259    260    260            b           2604    17257    vargroup id    DEFAULT     j   ALTER TABLE ONLY public.vargroup ALTER COLUMN id SET DEFAULT nextval('public.vargroup_id_seq'::regclass);
 :   ALTER TABLE public.vargroup ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    338    337    338            [           2604    17159    variablecategory id    DEFAULT     z   ALTER TABLE ONLY public.variablecategory ALTER COLUMN id SET DEFAULT nextval('public.variablecategory_id_seq'::regclass);
 B   ALTER TABLE public.variablecategory ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    323    322    323            2           2604    16653    variablemetadata id    DEFAULT     z   ALTER TABLE ONLY public.variablemetadata ALTER COLUMN id SET DEFAULT nextval('public.variablemetadata_id_seq'::regclass);
 B   ALTER TABLE public.variablemetadata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    239    238    239            5           2604    16688    variablerange id    DEFAULT     t   ALTER TABLE ONLY public.variablerange ALTER COLUMN id SET DEFAULT nextval('public.variablerange_id_seq'::regclass);
 ?   ALTER TABLE public.variablerange ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    245    244    245            4           2604    16679    variablerangeitem id    DEFAULT     |   ALTER TABLE ONLY public.variablerangeitem ALTER COLUMN id SET DEFAULT nextval('public.variablerangeitem_id_seq'::regclass);
 C   ALTER TABLE public.variablerangeitem ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    243    242    243            #           2604    16439    workflow id    DEFAULT     j   ALTER TABLE ONLY public.workflow ALTER COLUMN id SET DEFAULT nextval('public.workflow_id_seq'::regclass);
 :   ALTER TABLE public.workflow ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    206    205    206            7           2604    16711    workflowcomment id    DEFAULT     x   ALTER TABLE ONLY public.workflowcomment ALTER COLUMN id SET DEFAULT nextval('public.workflowcomment_id_seq'::regclass);
 A   ALTER TABLE public.workflowcomment ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    249    248    249            =           2604    16784    workflowstepdata id    DEFAULT     z   ALTER TABLE ONLY public.workflowstepdata ALTER COLUMN id SET DEFAULT nextval('public.workflowstepdata_id_seq'::regclass);
 B   ALTER TABLE public.workflowstepdata ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    262    261    262            N           2604    17023    worldmapauth_token id    DEFAULT     ~   ALTER TABLE ONLY public.worldmapauth_token ALTER COLUMN id SET DEFAULT nextval('public.worldmapauth_token_id_seq'::regclass);
 D   ALTER TABLE public.worldmapauth_token ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    299    300    300            S           2604    17089    worldmapauth_tokentype id    DEFAULT     �   ALTER TABLE ONLY public.worldmapauth_tokentype ALTER COLUMN id SET DEFAULT nextval('public.worldmapauth_tokentype_id_seq'::regclass);
 H   ALTER TABLE public.worldmapauth_tokentype ALTER COLUMN id DROP DEFAULT;
       public       	   dataverse    false    311    310    311            �          0    18150    EJB__TIMER__TBL 
   TABLE DATA           �   COPY public."EJB__TIMER__TBL" ("TIMERID", "APPLICATIONID", "BLOB", "CONTAINERID", "CREATIONTIMERAW", "INITIALEXPIRATIONRAW", "INTERVALDURATION", "LASTEXPIRATIONRAW", "OWNERID", "PKHASHCODE", "SCHEDULE", "STATE") FROM stdin;
    public       	   dataverse    false    374   ��      5          0    16819    actionlogrecord 
   TABLE DATA           �   COPY public.actionlogrecord (id, actionresult, actionsubtype, actiontype, endtime, info, starttime, useridentifier) FROM stdin;
    public       	   dataverse    false    268   ��      ~          0    17278    alternativepersistentidentifier 
   TABLE DATA           �   COPY public.alternativepersistentidentifier (id, authority, globalidcreatetime, identifier, identifierregistered, protocol, storagelocationdesignator, dvobject_id) FROM stdin;
    public       	   dataverse    false    341   	                0    16616    apitoken 
   TABLE DATA           k   COPY public.apitoken (id, createtime, disabled, expiretime, tokenstring, authenticateduser_id) FROM stdin;
    public       	   dataverse    false    234   &      F          0    16928    authenticateduser 
   TABLE DATA           �   COPY public.authenticateduser (id, affiliation, createdtime, email, emailconfirmed, firstname, lastapiusetime, lastlogintime, lastname, "position", superuser, useridentifier) FROM stdin;
    public       	   dataverse    false    285   �      d          0    17109    authenticateduserlookup 
   TABLE DATA           w   COPY public.authenticateduserlookup (id, authenticationproviderid, persistentuserid, authenticateduser_id) FROM stdin;
    public       	   dataverse    false    315         K          0    16965    authenticationproviderrow 
   TABLE DATA           l   COPY public.authenticationproviderrow (id, enabled, factoryalias, factorydata, subtitle, title) FROM stdin;
    public       	   dataverse    false    290   9      u          0    17216    builtinuser 
   TABLE DATA           a   COPY public.builtinuser (id, encryptedpassword, passwordencryptionversion, username) FROM stdin;
    public       	   dataverse    false    332   �      �          0    17334    categorymetadata 
   TABLE DATA           W   COPY public.categorymetadata (id, wfreq, category_id, variablemetadata_id) FROM stdin;
    public       	   dataverse    false    351         ^          0    17078    clientharvestrun 
   TABLE DATA           �   COPY public.clientharvestrun (id, deleteddatasetcount, faileddatasetcount, finishtime, harvestresult, harvesteddatasetcount, starttime, harvestingclient_id) FROM stdin;
    public       	   dataverse    false    309   (      �          0    16478    confirmemaildata 
   TABLE DATA           ]   COPY public.confirmemaildata (id, created, expires, token, authenticateduser_id) FROM stdin;
    public       	   dataverse    false    214   E      p          0    17180    controlledvocabalternate 
   TABLE DATA           s   COPY public.controlledvocabalternate (id, strvalue, controlledvocabularyvalue_id, datasetfieldtype_id) FROM stdin;
    public       	   dataverse    false    327   �      Y          0    17045    controlledvocabularyvalue 
   TABLE DATA           p   COPY public.controlledvocabularyvalue (id, displayorder, identifier, strvalue, datasetfieldtype_id) FROM stdin;
    public       	   dataverse    false    304   �      2          0    16800    customfieldmap 
   TABLE DATA           d   COPY public.customfieldmap (id, sourcedatasetfield, sourcetemplate, targetdatasetfield) FROM stdin;
    public       	   dataverse    false    265   �@                0    16664    customquestion 
   TABLE DATA           x   COPY public.customquestion (id, displayorder, hidden, questionstring, questiontype, required, guestbook_id) FROM stdin;
    public       	   dataverse    false    241   �@      �          0    17322    customquestionresponse 
   TABLE DATA           g   COPY public.customquestionresponse (id, response, customquestion_id, guestbookresponse_id) FROM stdin;
    public       	   dataverse    false    349   �@      Q          0    17003    customquestionvalue 
   TABLE DATA           _   COPY public.customquestionvalue (id, displayorder, valuestring, customquestion_id) FROM stdin;
    public       	   dataverse    false    296   �@      �          0    18175    customzipservicerequest 
   TABLE DATA           \   COPY public.customzipservicerequest (key, storagelocation, filename, issuetime) FROM stdin;
    public       	   dataverse    false    377   A      q          0    17191    datafile 
   TABLE DATA           �   COPY public.datafile (id, checksumtype, checksumvalue, contenttype, filesize, ingeststatus, previousdatafileid, prov_entityname, restricted, rootdatafileid) FROM stdin;
    public       	   dataverse    false    328   !A      �          0    16408    datafilecategory 
   TABLE DATA           @   COPY public.datafilecategory (id, name, dataset_id) FROM stdin;
    public       	   dataverse    false    201   >A      b          0    17100    datafiletag 
   TABLE DATA           <   COPY public.datafiletag (id, type, datafile_id) FROM stdin;
    public       	   dataverse    false    313   [A      \          0    17066    dataset 
   TABLE DATA           �   COPY public.dataset (id, fileaccessrequest, harvestidentifier, lastexporttime, storagedriver, usegenericthumbnail, citationdatedatasetfieldtype_id, harvestingclient_id, guestbook_id, thumbnailfile_id) FROM stdin;
    public       	   dataverse    false    307   xA      �          0    16429    datasetexternalcitations 
   TABLE DATA           N   COPY public.datasetexternalcitations (id, citedbyurl, dataset_id) FROM stdin;
    public       	   dataverse    false    204   �A      $          0    16719    datasetfield 
   TABLE DATA           �   COPY public.datasetfield (id, datasetfieldtype_id, datasetversion_id, parentdatasetfieldcompoundvalue_id, template_id) FROM stdin;
    public       	   dataverse    false    251   	B      �          0    17415 &   datasetfield_controlledvocabularyvalue 
   TABLE DATA           p   COPY public.datasetfield_controlledvocabularyvalue (datasetfield_id, controlledvocabularyvalues_id) FROM stdin;
    public       	   dataverse    false    364   �K      �          0    17289    datasetfieldcompoundvalue 
   TABLE DATA           \   COPY public.datasetfieldcompoundvalue (id, displayorder, parentdatasetfield_id) FROM stdin;
    public       	   dataverse    false    343   cM      A          0    16897    datasetfielddefaultvalue 
   TABLE DATA           �   COPY public.datasetfielddefaultvalue (id, displayorder, strvalue, datasetfield_id, defaultvalueset_id, parentdatasetfielddefaultvalue_id) FROM stdin;
    public       	   dataverse    false    280   �N      �          0    17382    datasetfieldtype 
   TABLE DATA           )  COPY public.datasetfieldtype (id, advancedsearchfieldtype, allowcontrolledvocabulary, allowmultiples, description, displayformat, displayoncreate, displayorder, facetable, fieldtype, name, required, title, uri, validationformat, watermark, metadatablock_id, parentdatasetfieldtype_id) FROM stdin;
    public       	   dataverse    false    359   �N                0    16638    datasetfieldvalue 
   TABLE DATA           U   COPY public.datasetfieldvalue (id, displayorder, value, datasetfield_id) FROM stdin;
    public       	   dataverse    false    237   Dr      [          0    17058    datasetlinkingdataverse 
   TABLE DATA           f   COPY public.datasetlinkingdataverse (id, linkcreatetime, dataset_id, linkingdataverse_id) FROM stdin;
    public       	   dataverse    false    306   w�      �          0    17353    datasetlock 
   TABLE DATA           W   COPY public.datasetlock (id, info, reason, starttime, dataset_id, user_id) FROM stdin;
    public       	   dataverse    false    355   ��      +          0    16761    datasetmetrics 
   TABLE DATA           �   COPY public.datasetmetrics (id, countrycode, downloadstotalmachine, downloadstotalregular, downloadsuniquemachine, downloadsuniqueregular, monthyear, viewstotalmachine, viewstotalregular, viewsuniquemachine, viewsuniqueregular, dataset_id) FROM stdin;
    public       	   dataverse    false    258   ��      '          0    16737    datasetversion 
   TABLE DATA             COPY public.datasetversion (id, unf, archivalcopylocation, archivenote, archivetime, createtime, deaccessionlink, lastupdatetime, minorversionnumber, releasetime, version, versionnote, versionnumber, versionstate, dataset_id, termsofuseandaccess_id) FROM stdin;
    public       	   dataverse    false    254   ΁      �          0    17298    datasetversionuser 
   TABLE DATA           i   COPY public.datasetversionuser (id, lastupdatedate, authenticateduser_id, datasetversion_id) FROM stdin;
    public       	   dataverse    false    345   e�      H          0    16943 	   datatable 
   TABLE DATA           �   COPY public.datatable (id, casequantity, originalfileformat, originalfilename, originalfilesize, originalformatversion, recordspercase, unf, varquantity, datafile_id) FROM stdin;
    public       	   dataverse    false    287   <�      n          0    17168    datavariable 
   TABLE DATA           �   COPY public.datavariable (id, factor, fileendposition, fileorder, filestartposition, format, formatcategory, "interval", label, name, numberofdecimalpoints, orderedfactor, recordsegmentnumber, type, unf, weighted, datatable_id) FROM stdin;
    public       	   dataverse    false    325   Y�                0    16514 	   dataverse 
   TABLE DATA           �   COPY public.dataverse (id, affiliation, alias, dataversetype, description, facetroot, guestbookroot, metadatablockroot, name, permissionroot, storagedriver, templateroot, themeroot, defaultcontributorrole_id, defaulttemplate_id) FROM stdin;
    public       	   dataverse    false    219   v�      �          0    17400 #   dataverse_citationdatasetfieldtypes 
   TABLE DATA           h   COPY public.dataverse_citationdatasetfieldtypes (dataverse_id, citationdatasetfieldtype_id) FROM stdin;
    public       	   dataverse    false    361   q�      �          0    17410    dataverse_metadatablock 
   TABLE DATA           R   COPY public.dataverse_metadatablock (dataverse_id, metadatablocks_id) FROM stdin;
    public       	   dataverse    false    363   ��      j          0    17145    dataversecontact 
   TABLE DATA           X   COPY public.dataversecontact (id, contactemail, displayorder, dataverse_id) FROM stdin;
    public       	   dataverse    false    321   ͅ                0    16566    dataversefacet 
   TABLE DATA           ]   COPY public.dataversefacet (id, displayorder, datasetfieldtype_id, dataverse_id) FROM stdin;
    public       	   dataverse    false    226   "�                0    16588    dataversefeatureddataverse 
   TABLE DATA           j   COPY public.dataversefeatureddataverse (id, displayorder, dataverse_id, featureddataverse_id) FROM stdin;
    public       	   dataverse    false    230   ^�      s          0    17205    dataversefieldtypeinputlevel 
   TABLE DATA           p   COPY public.dataversefieldtypeinputlevel (id, include, required, datasetfieldtype_id, dataverse_id) FROM stdin;
    public       	   dataverse    false    330   {�      �          0    16455    dataverselinkingdataverse 
   TABLE DATA           j   COPY public.dataverselinkingdataverse (id, linkcreatetime, dataverse_id, linkingdataverse_id) FROM stdin;
    public       	   dataverse    false    210   ��      �          0    17366    dataverserole 
   TABLE DATA           _   COPY public.dataverserole (id, alias, description, name, permissionbits, owner_id) FROM stdin;
    public       	   dataverse    false    357   ��      �          0    17405    dataversesubjects 
   TABLE DATA           W   COPY public.dataversesubjects (dataverse_id, controlledvocabularyvalue_id) FROM stdin;
    public       	   dataverse    false    362   �      �          0    16396    dataversetheme 
   TABLE DATA           �   COPY public.dataversetheme (id, backgroundcolor, linkcolor, linkurl, logo, logoalignment, logobackgroundcolor, logofooter, logofooteralignment, logofooterbackgroundcolor, logoformat, tagline, textcolor, dataverse_id) FROM stdin;
    public       	   dataverse    false    199   &�      D          0    16920    defaultvalueset 
   TABLE DATA           3   COPY public.defaultvalueset (id, name) FROM stdin;
    public       	   dataverse    false    283   C�      y          0    17241    doidataciteregistercache 
   TABLE DATA           M   COPY public.doidataciteregistercache (id, doi, status, url, xml) FROM stdin;
    public       	   dataverse    false    336   `�                0    16501    dvobject 
   TABLE DATA           3  COPY public.dvobject (id, dtype, authority, createdate, globalidcreatetime, identifier, identifierregistered, indextime, modificationtime, permissionindextime, permissionmodificationtime, previewimageavailable, protocol, publicationdate, storageidentifier, creator_id, owner_id, releaseuser_id) FROM stdin;
    public       	   dataverse    false    218   }�      ;          0    16859    explicitgroup 
   TABLE DATA           n   COPY public.explicitgroup (id, description, displayname, groupalias, groupaliasinowner, owner_id) FROM stdin;
    public       	   dataverse    false    274   r�      �          0    17437    explicitgroup_authenticateduser 
   TABLE DATA           k   COPY public.explicitgroup_authenticateduser (explicitgroup_id, containedauthenticatedusers_id) FROM stdin;
    public       	   dataverse    false    368   ��      �          0    17434 $   explicitgroup_containedroleassignees 
   TABLE DATA           h   COPY public.explicitgroup_containedroleassignees (explicitgroup_id, containedroleassignees) FROM stdin;
    public       	   dataverse    false    367   ��      �          0    17442    explicitgroup_explicitgroup 
   TABLE DATA           c   COPY public.explicitgroup_explicitgroup (explicitgroup_id, containedexplicitgroups_id) FROM stdin;
    public       	   dataverse    false    369   ɋ      ?          0    16886    externaltool 
   TABLE DATA           {   COPY public.externaltool (id, contenttype, description, displayname, scope, toolname, toolparameters, toolurl) FROM stdin;
    public       	   dataverse    false    278   �      �          0    16387    externaltooltype 
   TABLE DATA           E   COPY public.externaltooltype (id, type, externaltool_id) FROM stdin;
    public       	   dataverse    false    197   �      �          0    17453    fileaccessrequests 
   TABLE DATA           P   COPY public.fileaccessrequests (datafile_id, authenticated_user_id) FROM stdin;
    public       	   dataverse    false    371    �      0          0    16790    filedownload 
   TABLE DATA           h   COPY public.filedownload (downloadtimestamp, downloadtype, guestbookresponse_id, sessionid) FROM stdin;
    public       	   dataverse    false    263   =�      O          0    16990    filemetadata 
   TABLE DATA           �   COPY public.filemetadata (id, description, directorylabel, label, prov_freeform, restricted, version, datafile_id, datasetversion_id) FROM stdin;
    public       	   dataverse    false    294   Z�      �          0    17393    filemetadata_datafilecategory 
   TABLE DATA           \   COPY public.filemetadata_datafilecategory (filecategories_id, filemetadatas_id) FROM stdin;
    public       	   dataverse    false    360   w�      �          0    18158    flyway_schema_history 
   TABLE DATA           �   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public       	   dataverse    false    375   ��      M          0    16976    foreignmetadatafieldmapping 
   TABLE DATA           �   COPY public.foreignmetadatafieldmapping (id, datasetfieldname, foreignfieldxpath, isattribute, foreignmetadataformatmapping_id, parentfieldmapping_id) FROM stdin;
    public       	   dataverse    false    292   ��      =          0    16874    foreignmetadataformatmapping 
   TABLE DATA           k   COPY public.foreignmetadataformatmapping (id, displayname, name, schemalocation, startelement) FROM stdin;
    public       	   dataverse    false    276   �      4          0    16813 	   guestbook 
   TABLE DATA           �   COPY public.guestbook (id, createtime, emailrequired, enabled, institutionrequired, name, namerequired, positionrequired, dataverse_id) FROM stdin;
    public       	   dataverse    false    267   ��      �          0    17308    guestbookresponse 
   TABLE DATA           �   COPY public.guestbookresponse (id, email, institution, name, "position", responsetime, authenticateduser_id, datafile_id, dataset_id, datasetversion_id, guestbook_id) FROM stdin;
    public       	   dataverse    false    347   ޒ                0    16599    harvestingclient 
   TABLE DATA             COPY public.harvestingclient (id, archivedescription, archiveurl, deleted, harveststyle, harvesttype, harvestingnow, harvestingset, harvestingurl, metadataprefix, name, scheduledayofweek, schedulehourofday, scheduleperiod, scheduled, dataverse_id) FROM stdin;
    public       	   dataverse    false    232   ��      |          0    17264    harvestingdataverseconfig 
   TABLE DATA           �   COPY public.harvestingdataverseconfig (id, archivedescription, archiveurl, harveststyle, harvesttype, harvestingset, harvestingurl, dataverse_id) FROM stdin;
    public       	   dataverse    false    339   �      J          0    16955    ingestreport 
   TABLE DATA           a   COPY public.ingestreport (id, endtime, report, starttime, status, type, datafile_id) FROM stdin;
    public       	   dataverse    false    289   5�      f          0    17122    ingestrequest 
   TABLE DATA           o   COPY public.ingestrequest (id, controlcard, forcetypecheck, labelsfile, textencoding, datafile_id) FROM stdin;
    public       	   dataverse    false    317   R�      %          0    16729 	   ipv4range 
   TABLE DATA           J   COPY public.ipv4range (id, bottomaslong, topaslong, owner_id) FROM stdin;
    public       	   dataverse    false    252   o�                0    16535 	   ipv6range 
   TABLE DATA           m   COPY public.ipv6range (id, bottoma, bottomb, bottomc, bottomd, topa, topb, topc, topd, owner_id) FROM stdin;
    public       	   dataverse    false    220   ��      7          0    16832    maplayermetadata 
   TABLE DATA           �   COPY public.maplayermetadata (id, embedmaplink, isjoinlayer, joindescription, lastverifiedstatus, lastverifiedtime, layerlink, layername, mapimagelink, maplayerlinks, worldmapusername, dataset_id, datafile_id) FROM stdin;
    public       	   dataverse    false    270   ��      �          0    16465    metadatablock 
   TABLE DATA           V   COPY public.metadatablock (id, displayname, name, namespaceuri, owner_id) FROM stdin;
    public       	   dataverse    false    212   Ɠ      )          0    16749    metric 
   TABLE DATA           ^   COPY public.metric (id, datalocation, daystring, lastcalleddate, name, valuejson) FROM stdin;
    public       	   dataverse    false    256   ��                0    16577 	   oairecord 
   TABLE DATA           S   COPY public.oairecord (id, globalid, lastupdatetime, removed, setname) FROM stdin;
    public       	   dataverse    false    228   ޔ      �          0    16444    oaiset 
   TABLE DATA           m   COPY public.oaiset (id, definition, deleted, description, name, spec, updateinprogress, version) FROM stdin;
    public       	   dataverse    false    208   ��                0    16490    oauth2tokendata 
   TABLE DATA           �   COPY public.oauth2tokendata (id, accesstoken, expirydate, oauthproviderid, rawresponse, refreshtoken, tokentype, user_id) FROM stdin;
    public       	   dataverse    false    216   �      W          0    17032    passwordresetdata 
   TABLE DATA           `   COPY public.passwordresetdata (id, created, expires, reason, token, builtinuser_id) FROM stdin;
    public       	   dataverse    false    302   5�      B          0    16910    pendingworkflowinvocation 
   TABLE DATA           �   COPY public.pendingworkflowinvocation (invocationid, datasetexternallyreleased, ipaddress, nextminorversionnumber, nextversionnumber, pendingstepidx, typeordinal, userid, workflow_id, dataset_id) FROM stdin;
    public       	   dataverse    false    281   R�      �          0    17447 #   pendingworkflowinvocation_localdata 
   TABLE DATA              COPY public.pendingworkflowinvocation_localdata (pendingworkflowinvocation_invocationid, localdata, localdata_key) FROM stdin;
    public       	   dataverse    false    370   o�                0    16625    persistedglobalgroup 
   TABLE DATA              COPY public.persistedglobalgroup (id, dtype, description, displayname, persistedgroupalias, emaildomains, isregex) FROM stdin;
    public       	   dataverse    false    235   ��      �          0    16417    roleassignment 
   TABLE DATA           n   COPY public.roleassignment (id, assigneeidentifier, privateurltoken, definitionpoint_id, role_id) FROM stdin;
    public       	   dataverse    false    203   ��      9          0    16846    savedsearch 
   TABLE DATA           P   COPY public.savedsearch (id, query, creator_id, definitionpoint_id) FROM stdin;
    public       	   dataverse    false    272   #�                0    16543    savedsearchfilterquery 
   TABLE DATA           Q   COPY public.savedsearchfilterquery (id, filterquery, savedsearch_id) FROM stdin;
    public       	   dataverse    false    222   @�      �          0    18144    sequence 
   TABLE DATA           7   COPY public.sequence (seq_name, seq_count) FROM stdin;
    public       	   dataverse    false    373   ]�      h          0    17134    setting 
   TABLE DATA           :   COPY public.setting (id, content, lang, name) FROM stdin;
    public       	   dataverse    false    319   ��                 0    16697 	   shibgroup 
   TABLE DATA           A   COPY public.shibgroup (id, attribute, name, pattern) FROM stdin;
    public       	   dataverse    false    247   ��      	          0    16555    storagesite 
   TABLE DATA           \   COPY public.storagesite (id, hostname, name, primarystorage, transferprotocols) FROM stdin;
    public       	   dataverse    false    224   ͘      S          0    17011    summarystatistic 
   TABLE DATA           L   COPY public.summarystatistic (id, type, value, datavariable_id) FROM stdin;
    public       	   dataverse    false    298   �      �          0    17344    template 
   TABLE DATA           j   COPY public.template (id, createtime, name, usagecount, dataverse_id, termsofuseandaccess_id) FROM stdin;
    public       	   dataverse    false    353   �      w          0    17230    termsofuseandaccess 
   TABLE DATA           V  COPY public.termsofuseandaccess (id, availabilitystatus, citationrequirements, conditions, confidentialitydeclaration, contactforaccess, dataaccessplace, depositorrequirements, disclaimer, fileaccessrequest, license, originalarchive, restrictions, sizeofcollection, specialpermissions, studycompletion, termsofaccess, termsofuse) FROM stdin;
    public       	   dataverse    false    334   $�      -          0    16772    usernotification 
   TABLE DATA           z   COPY public.usernotification (id, emailed, objectid, readnotification, senddate, type, requestor_id, user_id) FROM stdin;
    public       	   dataverse    false    260   ��      {          0    17254    vargroup 
   TABLE DATA           >   COPY public.vargroup (id, label, filemetadata_id) FROM stdin;
    public       	   dataverse    false    338   ��      �          0    17458    vargroup_datavariable 
   TABLE DATA           L   COPY public.vargroup_datavariable (vargroup_id, varsingroup_id) FROM stdin;
    public       	   dataverse    false    372         l          0    17156    variablecategory 
   TABLE DATA           k   COPY public.variablecategory (id, catorder, frequency, label, missing, value, datavariable_id) FROM stdin;
    public       	   dataverse    false    323   ߙ                0    16650    variablemetadata 
   TABLE DATA           �   COPY public.variablemetadata (id, interviewinstruction, isweightvar, label, literalquestion, notes, postquestion, universe, weighted, datavariable_id, filemetadata_id, weightvariable_id) FROM stdin;
    public       	   dataverse    false    239   ��                0    16685    variablerange 
   TABLE DATA           p   COPY public.variablerange (id, beginvalue, beginvaluetype, endvalue, endvaluetype, datavariable_id) FROM stdin;
    public       	   dataverse    false    245   �                0    16676    variablerangeitem 
   TABLE DATA           G   COPY public.variablerangeitem (id, value, datavariable_id) FROM stdin;
    public       	   dataverse    false    243   6�      �          0    16436    workflow 
   TABLE DATA           ,   COPY public.workflow (id, name) FROM stdin;
    public       	   dataverse    false    206   S�      "          0    16708    workflowcomment 
   TABLE DATA           n   COPY public.workflowcomment (id, created, message, type, authenticateduser_id, datasetversion_id) FROM stdin;
    public       	   dataverse    false    249   p�      /          0    16781    workflowstepdata 
   TABLE DATA           V   COPY public.workflowstepdata (id, providerid, steptype, parent_id, index) FROM stdin;
    public       	   dataverse    false    262   ��      �          0    17422    workflowstepdata_stepparameters 
   TABLE DATA           r   COPY public.workflowstepdata_stepparameters (workflowstepdata_id, stepparameters, stepparameters_key) FROM stdin;
    public       	   dataverse    false    365   ��      �          0    17428    workflowstepdata_stepsettings 
   TABLE DATA           l   COPY public.workflowstepdata_stepsettings (workflowstepdata_id, stepsettings, stepsettings_key) FROM stdin;
    public       	   dataverse    false    366   ǚ      U          0    17020    worldmapauth_token 
   TABLE DATA           �   COPY public.worldmapauth_token (id, created, hasexpired, lastrefreshtime, modified, token, application_id, datafile_id, dataverseuser_id) FROM stdin;
    public       	   dataverse    false    300   �      `          0    17086    worldmapauth_tokentype 
   TABLE DATA           �   COPY public.worldmapauth_tokentype (id, contactemail, created, hostname, ipaddress, mapitlink, md5, modified, name, timelimitminutes, timelimitseconds) FROM stdin;
    public       	   dataverse    false    311   �      �           0    0 &   alternativepersistentidentifier_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.alternativepersistentidentifier_id_seq', 1, false);
          public       	   dataverse    false    340            �           0    0    apitoken_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.apitoken_id_seq', 1, true);
          public       	   dataverse    false    233            �           0    0    authenticateduser_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.authenticateduser_id_seq', 1, true);
          public       	   dataverse    false    284            �           0    0    authenticateduserlookup_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.authenticateduserlookup_id_seq', 1, true);
          public       	   dataverse    false    314            �           0    0    builtinuser_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.builtinuser_id_seq', 1, true);
          public       	   dataverse    false    331            �           0    0    categorymetadata_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.categorymetadata_id_seq', 1, false);
          public       	   dataverse    false    350            �           0    0    clientharvestrun_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientharvestrun_id_seq', 1, false);
          public       	   dataverse    false    308            �           0    0    confirmemaildata_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.confirmemaildata_id_seq', 1, true);
          public       	   dataverse    false    213            �           0    0    controlledvocabalternate_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.controlledvocabalternate_id_seq', 23, true);
          public       	   dataverse    false    326                        0    0     controlledvocabularyvalue_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.controlledvocabularyvalue_id_seq', 850, true);
          public       	   dataverse    false    303                       0    0    customfieldmap_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customfieldmap_id_seq', 1, false);
          public       	   dataverse    false    264                       0    0    customquestion_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customquestion_id_seq', 1, false);
          public       	   dataverse    false    240                       0    0    customquestionresponse_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customquestionresponse_id_seq', 1, false);
          public       	   dataverse    false    348                       0    0    customquestionvalue_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.customquestionvalue_id_seq', 1, false);
          public       	   dataverse    false    295                       0    0    datafilecategory_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.datafilecategory_id_seq', 1, false);
          public       	   dataverse    false    200                       0    0    datafiletag_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.datafiletag_id_seq', 1, false);
          public       	   dataverse    false    312                       0    0    datasetfield_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.datasetfield_id_seq', 661, true);
          public       	   dataverse    false    250                       0    0     datasetfieldcompoundvalue_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.datasetfieldcompoundvalue_id_seq', 96, true);
          public       	   dataverse    false    342            	           0    0    datasetfielddefaultvalue_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.datasetfielddefaultvalue_id_seq', 1, false);
          public       	   dataverse    false    279            
           0    0    datasetfieldtype_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.datasetfieldtype_id_seq', 177, true);
          public       	   dataverse    false    358                       0    0    datasetfieldvalue_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.datasetfieldvalue_id_seq', 455, true);
          public       	   dataverse    false    236                       0    0    datasetlinkingdataverse_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.datasetlinkingdataverse_id_seq', 1, false);
          public       	   dataverse    false    305                       0    0    datasetlock_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.datasetlock_id_seq', 20, true);
          public       	   dataverse    false    354                       0    0    datasetmetrics_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.datasetmetrics_id_seq', 1, false);
          public       	   dataverse    false    257                       0    0    datasetversion_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.datasetversion_id_seq', 19, true);
          public       	   dataverse    false    253                       0    0    datasetversionuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.datasetversionuser_id_seq', 19, true);
          public       	   dataverse    false    344                       0    0    datatable_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.datatable_id_seq', 1, false);
          public       	   dataverse    false    286                       0    0    datavariable_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.datavariable_id_seq', 1, false);
          public       	   dataverse    false    324                       0    0    dataversecontact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.dataversecontact_id_seq', 5, true);
          public       	   dataverse    false    320                       0    0    dataversefacet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dataversefacet_id_seq', 8, true);
          public       	   dataverse    false    225                       0    0 !   dataversefeatureddataverse_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.dataversefeatureddataverse_id_seq', 1, false);
          public       	   dataverse    false    229                       0    0 #   dataversefieldtypeinputlevel_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.dataversefieldtypeinputlevel_id_seq', 1, false);
          public       	   dataverse    false    329                       0    0     dataverselinkingdataverse_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.dataverselinkingdataverse_id_seq', 1, false);
          public       	   dataverse    false    209                       0    0    dataverserole_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dataverserole_id_seq', 8, true);
          public       	   dataverse    false    356                       0    0    dataversetheme_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.dataversetheme_id_seq', 1, false);
          public       	   dataverse    false    198                       0    0    defaultvalueset_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.defaultvalueset_id_seq', 1, false);
          public       	   dataverse    false    282                       0    0    doidataciteregistercache_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.doidataciteregistercache_id_seq', 1, false);
          public       	   dataverse    false    335                       0    0    dvobject_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dvobject_id_seq', 16, true);
          public       	   dataverse    false    217                       0    0    explicitgroup_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.explicitgroup_id_seq', 1, false);
          public       	   dataverse    false    273                       0    0    externaltool_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.externaltool_id_seq', 1, false);
          public       	   dataverse    false    277                       0    0    externaltooltype_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.externaltooltype_id_seq', 1, false);
          public       	   dataverse    false    196                        0    0    filemetadata_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filemetadata_id_seq', 1, false);
          public       	   dataverse    false    293            !           0    0 "   foreignmetadatafieldmapping_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.foreignmetadatafieldmapping_id_seq', 1, false);
          public       	   dataverse    false    291            "           0    0 #   foreignmetadataformatmapping_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.foreignmetadataformatmapping_id_seq', 1, false);
          public       	   dataverse    false    275            #           0    0    guestbook_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.guestbook_id_seq', 1, true);
          public       	   dataverse    false    266            $           0    0    guestbookresponse_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.guestbookresponse_id_seq', 1, false);
          public       	   dataverse    false    346            %           0    0    harvestingclient_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.harvestingclient_id_seq', 1, false);
          public       	   dataverse    false    231            &           0    0    ingestreport_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ingestreport_id_seq', 1, false);
          public       	   dataverse    false    288            '           0    0    ingestrequest_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ingestrequest_id_seq', 1, false);
          public       	   dataverse    false    316            (           0    0    maplayermetadata_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.maplayermetadata_id_seq', 1, false);
          public       	   dataverse    false    269            )           0    0    metadatablock_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.metadatablock_id_seq', 8, true);
          public       	   dataverse    false    211            *           0    0    metric_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.metric_id_seq', 1, false);
          public       	   dataverse    false    255            +           0    0    oairecord_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.oairecord_id_seq', 1, false);
          public       	   dataverse    false    227            ,           0    0    oaiset_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.oaiset_id_seq', 1, false);
          public       	   dataverse    false    207            -           0    0    oauth2tokendata_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.oauth2tokendata_id_seq', 1, false);
          public       	   dataverse    false    215            .           0    0    passwordresetdata_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.passwordresetdata_id_seq', 1, true);
          public       	   dataverse    false    301            /           0    0    roleassignment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.roleassignment_id_seq', 16, true);
          public       	   dataverse    false    202            0           0    0    savedsearch_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.savedsearch_id_seq', 1, false);
          public       	   dataverse    false    271            1           0    0    savedsearchfilterquery_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.savedsearchfilterquery_id_seq', 1, false);
          public       	   dataverse    false    221            2           0    0    setting_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.setting_id_seq', 11, true);
          public       	   dataverse    false    318            3           0    0    setting_id_seq1    SEQUENCE SET     >   SELECT pg_catalog.setval('public.setting_id_seq1', 1, false);
          public       	   dataverse    false    376            4           0    0    shibgroup_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.shibgroup_id_seq', 1, false);
          public       	   dataverse    false    246            5           0    0    storagesite_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.storagesite_id_seq', 1, false);
          public       	   dataverse    false    223            6           0    0    summarystatistic_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.summarystatistic_id_seq', 1, false);
          public       	   dataverse    false    297            7           0    0    template_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.template_id_seq', 1, false);
          public       	   dataverse    false    352            8           0    0    termsofuseandaccess_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.termsofuseandaccess_id_seq', 19, true);
          public       	   dataverse    false    333            9           0    0    usernotification_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usernotification_id_seq', 27, true);
          public       	   dataverse    false    259            :           0    0    vargroup_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vargroup_id_seq', 1, false);
          public       	   dataverse    false    337            ;           0    0    variablecategory_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.variablecategory_id_seq', 1, false);
          public       	   dataverse    false    322            <           0    0    variablemetadata_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.variablemetadata_id_seq', 1, false);
          public       	   dataverse    false    238            =           0    0    variablerange_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.variablerange_id_seq', 1, false);
          public       	   dataverse    false    244            >           0    0    variablerangeitem_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.variablerangeitem_id_seq', 1, false);
          public       	   dataverse    false    242            ?           0    0    workflow_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.workflow_id_seq', 1, false);
          public       	   dataverse    false    205            @           0    0    workflowcomment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.workflowcomment_id_seq', 1, false);
          public       	   dataverse    false    248            A           0    0    workflowstepdata_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.workflowstepdata_id_seq', 1, false);
          public       	   dataverse    false    261            B           0    0    worldmapauth_token_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.worldmapauth_token_id_seq', 1, false);
          public       	   dataverse    false    299            C           0    0    worldmapauth_tokentype_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.worldmapauth_tokentype_id_seq', 1, true);
          public       	   dataverse    false    310            �           2606    18157 $   EJB__TIMER__TBL EJB__TIMER__TBL_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."EJB__TIMER__TBL"
    ADD CONSTRAINT "EJB__TIMER__TBL_pkey" PRIMARY KEY ("TIMERID");
 R   ALTER TABLE ONLY public."EJB__TIMER__TBL" DROP CONSTRAINT "EJB__TIMER__TBL_pkey";
       public         	   dataverse    false    374                       2606    16826 $   actionlogrecord actionlogrecord_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.actionlogrecord
    ADD CONSTRAINT actionlogrecord_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.actionlogrecord DROP CONSTRAINT actionlogrecord_pkey;
       public         	   dataverse    false    268            �           2606    17286 D   alternativepersistentidentifier alternativepersistentidentifier_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.alternativepersistentidentifier
    ADD CONSTRAINT alternativepersistentidentifier_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.alternativepersistentidentifier DROP CONSTRAINT alternativepersistentidentifier_pkey;
       public         	   dataverse    false    341            �           2606    16621    apitoken apitoken_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT apitoken_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.apitoken DROP CONSTRAINT apitoken_pkey;
       public         	   dataverse    false    234            �           2606    16623 !   apitoken apitoken_tokenstring_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT apitoken_tokenstring_key UNIQUE (tokenstring);
 K   ALTER TABLE ONLY public.apitoken DROP CONSTRAINT apitoken_tokenstring_key;
       public         	   dataverse    false    234            1           2606    16938 -   authenticateduser authenticateduser_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_email_key;
       public         	   dataverse    false    285            3           2606    16936 (   authenticateduser authenticateduser_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_pkey;
       public         	   dataverse    false    285            5           2606    16940 6   authenticateduser authenticateduser_useridentifier_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.authenticateduser
    ADD CONSTRAINT authenticateduser_useridentifier_key UNIQUE (useridentifier);
 `   ALTER TABLE ONLY public.authenticateduser DROP CONSTRAINT authenticateduser_useridentifier_key;
       public         	   dataverse    false    285            p           2606    17119 H   authenticateduserlookup authenticateduserlookup_authenticateduser_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT authenticateduserlookup_authenticateduser_id_key UNIQUE (authenticateduser_id);
 r   ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT authenticateduserlookup_authenticateduser_id_key;
       public         	   dataverse    false    315            r           2606    17117 4   authenticateduserlookup authenticateduserlookup_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT authenticateduserlookup_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT authenticateduserlookup_pkey;
       public         	   dataverse    false    315            ?           2606    16972 8   authenticationproviderrow authenticationproviderrow_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.authenticationproviderrow
    ADD CONSTRAINT authenticationproviderrow_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.authenticationproviderrow DROP CONSTRAINT authenticationproviderrow_pkey;
       public         	   dataverse    false    290            �           2606    17224    builtinuser builtinuser_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.builtinuser
    ADD CONSTRAINT builtinuser_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.builtinuser DROP CONSTRAINT builtinuser_pkey;
       public         	   dataverse    false    332            �           2606    17226 $   builtinuser builtinuser_username_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.builtinuser
    ADD CONSTRAINT builtinuser_username_key UNIQUE (username);
 N   ALTER TABLE ONLY public.builtinuser DROP CONSTRAINT builtinuser_username_key;
       public         	   dataverse    false    332            �           2606    17339 &   categorymetadata categorymetadata_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT categorymetadata_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT categorymetadata_pkey;
       public         	   dataverse    false    351            h           2606    17083 &   clientharvestrun clientharvestrun_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.clientharvestrun
    ADD CONSTRAINT clientharvestrun_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.clientharvestrun DROP CONSTRAINT clientharvestrun_pkey;
       public         	   dataverse    false    309            �           2606    16485 :   confirmemaildata confirmemaildata_authenticateduser_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT confirmemaildata_authenticateduser_id_key UNIQUE (authenticateduser_id);
 d   ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT confirmemaildata_authenticateduser_id_key;
       public         	   dataverse    false    214            �           2606    16483 &   confirmemaildata confirmemaildata_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT confirmemaildata_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT confirmemaildata_pkey;
       public         	   dataverse    false    214            �           2606    17188 6   controlledvocabalternate controlledvocabalternate_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT controlledvocabalternate_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT controlledvocabalternate_pkey;
       public         	   dataverse    false    327            \           2606    17053 8   controlledvocabularyvalue controlledvocabularyvalue_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.controlledvocabularyvalue
    ADD CONSTRAINT controlledvocabularyvalue_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.controlledvocabularyvalue DROP CONSTRAINT controlledvocabularyvalue_pkey;
       public         	   dataverse    false    304                       2606    16808 "   customfieldmap customfieldmap_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.customfieldmap
    ADD CONSTRAINT customfieldmap_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.customfieldmap DROP CONSTRAINT customfieldmap_pkey;
       public         	   dataverse    false    265            �           2606    16672 "   customquestion customquestion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.customquestion
    ADD CONSTRAINT customquestion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.customquestion DROP CONSTRAINT customquestion_pkey;
       public         	   dataverse    false    241            �           2606    17330 2   customquestionresponse customquestionresponse_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT customquestionresponse_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT customquestionresponse_pkey;
       public         	   dataverse    false    349            M           2606    17008 ,   customquestionvalue customquestionvalue_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.customquestionvalue
    ADD CONSTRAINT customquestionvalue_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.customquestionvalue DROP CONSTRAINT customquestionvalue_pkey;
       public         	   dataverse    false    296            �           2606    17198    datafile datafile_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT datafile_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.datafile DROP CONSTRAINT datafile_pkey;
       public         	   dataverse    false    328            v           2606    16413 &   datafilecategory datafilecategory_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.datafilecategory
    ADD CONSTRAINT datafilecategory_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.datafilecategory DROP CONSTRAINT datafilecategory_pkey;
       public         	   dataverse    false    201            m           2606    17105    datafiletag datafiletag_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.datafiletag
    ADD CONSTRAINT datafiletag_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.datafiletag DROP CONSTRAINT datafiletag_pkey;
       public         	   dataverse    false    313            d           2606    17073    dataset dataset_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dataset DROP CONSTRAINT dataset_pkey;
       public         	   dataverse    false    307            �           2606    16433 6   datasetexternalcitations datasetexternalcitations_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.datasetexternalcitations
    ADD CONSTRAINT datasetexternalcitations_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.datasetexternalcitations DROP CONSTRAINT datasetexternalcitations_pkey;
       public         	   dataverse    false    204            �           2606    17419 R   datasetfield_controlledvocabularyvalue datasetfield_controlledvocabularyvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT datasetfield_controlledvocabularyvalue_pkey PRIMARY KEY (datasetfield_id, controlledvocabularyvalues_id);
 |   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT datasetfield_controlledvocabularyvalue_pkey;
       public         	   dataverse    false    364    364            �           2606    16724    datasetfield datasetfield_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT datasetfield_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT datasetfield_pkey;
       public         	   dataverse    false    251            �           2606    17294 8   datasetfieldcompoundvalue datasetfieldcompoundvalue_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.datasetfieldcompoundvalue
    ADD CONSTRAINT datasetfieldcompoundvalue_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.datasetfieldcompoundvalue DROP CONSTRAINT datasetfieldcompoundvalue_pkey;
       public         	   dataverse    false    343            '           2606    16905 6   datasetfielddefaultvalue datasetfielddefaultvalue_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT datasetfielddefaultvalue_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT datasetfielddefaultvalue_pkey;
       public         	   dataverse    false    280            �           2606    17390 &   datasetfieldtype datasetfieldtype_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT datasetfieldtype_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT datasetfieldtype_pkey;
       public         	   dataverse    false    359            �           2606    16646 (   datasetfieldvalue datasetfieldvalue_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.datasetfieldvalue
    ADD CONSTRAINT datasetfieldvalue_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.datasetfieldvalue DROP CONSTRAINT datasetfieldvalue_pkey;
       public         	   dataverse    false    237            `           2606    17063 4   datasetlinkingdataverse datasetlinkingdataverse_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT datasetlinkingdataverse_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT datasetlinkingdataverse_pkey;
       public         	   dataverse    false    306            �           2606    17361    datasetlock datasetlock_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT datasetlock_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT datasetlock_pkey;
       public         	   dataverse    false    355            �           2606    16769 "   datasetmetrics datasetmetrics_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.datasetmetrics
    ADD CONSTRAINT datasetmetrics_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.datasetmetrics DROP CONSTRAINT datasetmetrics_pkey;
       public         	   dataverse    false    258            �           2606    16745 "   datasetversion datasetversion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT datasetversion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT datasetversion_pkey;
       public         	   dataverse    false    254            �           2606    17303 *   datasetversionuser datasetversionuser_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT datasetversionuser_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT datasetversionuser_pkey;
       public         	   dataverse    false    345            9           2606    16951    datatable datatable_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.datatable
    ADD CONSTRAINT datatable_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.datatable DROP CONSTRAINT datatable_pkey;
       public         	   dataverse    false    287            �           2606    17176    datavariable datavariable_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.datavariable
    ADD CONSTRAINT datavariable_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.datavariable DROP CONSTRAINT datavariable_pkey;
       public         	   dataverse    false    325            �           2606    16523    dataverse dataverse_alias_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT dataverse_alias_key UNIQUE (alias);
 G   ALTER TABLE ONLY public.dataverse DROP CONSTRAINT dataverse_alias_key;
       public         	   dataverse    false    219            �           2606    17404 L   dataverse_citationdatasetfieldtypes dataverse_citationdatasetfieldtypes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT dataverse_citationdatasetfieldtypes_pkey PRIMARY KEY (dataverse_id, citationdatasetfieldtype_id);
 v   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT dataverse_citationdatasetfieldtypes_pkey;
       public         	   dataverse    false    361    361            �           2606    17414 4   dataverse_metadatablock dataverse_metadatablock_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT dataverse_metadatablock_pkey PRIMARY KEY (dataverse_id, metadatablocks_id);
 ^   ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT dataverse_metadatablock_pkey;
       public         	   dataverse    false    363    363            �           2606    16521    dataverse dataverse_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT dataverse_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.dataverse DROP CONSTRAINT dataverse_pkey;
       public         	   dataverse    false    219            |           2606    17150 &   dataversecontact dataversecontact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dataversecontact
    ADD CONSTRAINT dataversecontact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dataversecontact DROP CONSTRAINT dataversecontact_pkey;
       public         	   dataverse    false    321            �           2606    16571 "   dataversefacet dataversefacet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT dataversefacet_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT dataversefacet_pkey;
       public         	   dataverse    false    226            �           2606    16593 :   dataversefeatureddataverse dataversefeatureddataverse_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT dataversefeatureddataverse_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT dataversefeatureddataverse_pkey;
       public         	   dataverse    false    230            �           2606    17210 >   dataversefieldtypeinputlevel dataversefieldtypeinputlevel_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT dataversefieldtypeinputlevel_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT dataversefieldtypeinputlevel_pkey;
       public         	   dataverse    false    330            �           2606    16460 8   dataverselinkingdataverse dataverselinkingdataverse_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT dataverselinkingdataverse_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT dataverselinkingdataverse_pkey;
       public         	   dataverse    false    210            �           2606    17376 %   dataverserole dataverserole_alias_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT dataverserole_alias_key UNIQUE (alias);
 O   ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT dataverserole_alias_key;
       public         	   dataverse    false    357            �           2606    17374     dataverserole dataverserole_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT dataverserole_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT dataverserole_pkey;
       public         	   dataverse    false    357            �           2606    17409 (   dataversesubjects dataversesubjects_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT dataversesubjects_pkey PRIMARY KEY (dataverse_id, controlledvocabularyvalue_id);
 R   ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT dataversesubjects_pkey;
       public         	   dataverse    false    362    362            s           2606    16404 "   dataversetheme dataversetheme_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dataversetheme
    ADD CONSTRAINT dataversetheme_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dataversetheme DROP CONSTRAINT dataversetheme_pkey;
       public         	   dataverse    false    199            /           2606    16925 $   defaultvalueset defaultvalueset_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.defaultvalueset
    ADD CONSTRAINT defaultvalueset_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.defaultvalueset DROP CONSTRAINT defaultvalueset_pkey;
       public         	   dataverse    false    283            �           2606    17251 9   doidataciteregistercache doidataciteregistercache_doi_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.doidataciteregistercache
    ADD CONSTRAINT doidataciteregistercache_doi_key UNIQUE (doi);
 c   ALTER TABLE ONLY public.doidataciteregistercache DROP CONSTRAINT doidataciteregistercache_doi_key;
       public         	   dataverse    false    336            �           2606    17249 6   doidataciteregistercache doidataciteregistercache_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.doidataciteregistercache
    ADD CONSTRAINT doidataciteregistercache_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.doidataciteregistercache DROP CONSTRAINT doidataciteregistercache_pkey;
       public         	   dataverse    false    336            �           2606    16509    dvobject dvobject_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT dvobject_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT dvobject_pkey;
       public         	   dataverse    false    218            �           2606    17441 D   explicitgroup_authenticateduser explicitgroup_authenticateduser_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT explicitgroup_authenticateduser_pkey PRIMARY KEY (explicitgroup_id, containedauthenticatedusers_id);
 n   ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT explicitgroup_authenticateduser_pkey;
       public         	   dataverse    false    368    368            �           2606    17446 <   explicitgroup_explicitgroup explicitgroup_explicitgroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT explicitgroup_explicitgroup_pkey PRIMARY KEY (explicitgroup_id, containedexplicitgroups_id);
 f   ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT explicitgroup_explicitgroup_pkey;
       public         	   dataverse    false    369    369                       2606    16869 *   explicitgroup explicitgroup_groupalias_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT explicitgroup_groupalias_key UNIQUE (groupalias);
 T   ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT explicitgroup_groupalias_key;
       public         	   dataverse    false    274                       2606    16867     explicitgroup explicitgroup_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT explicitgroup_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT explicitgroup_pkey;
       public         	   dataverse    false    274            %           2606    16894    externaltool externaltool_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.externaltool
    ADD CONSTRAINT externaltool_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.externaltool DROP CONSTRAINT externaltool_pkey;
       public         	   dataverse    false    278            p           2606    16392 &   externaltooltype externaltooltype_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.externaltooltype
    ADD CONSTRAINT externaltooltype_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.externaltooltype DROP CONSTRAINT externaltooltype_pkey;
       public         	   dataverse    false    197            �           2606    17457 *   fileaccessrequests fileaccessrequests_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fileaccessrequests_pkey PRIMARY KEY (datafile_id, authenticated_user_id);
 T   ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fileaccessrequests_pkey;
       public         	   dataverse    false    371    371                       2606    16797    filedownload filedownload_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.filedownload
    ADD CONSTRAINT filedownload_pkey PRIMARY KEY (guestbookresponse_id);
 H   ALTER TABLE ONLY public.filedownload DROP CONSTRAINT filedownload_pkey;
       public         	   dataverse    false    263            �           2606    17397 @   filemetadata_datafilecategory filemetadata_datafilecategory_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT filemetadata_datafilecategory_pkey PRIMARY KEY (filecategories_id, filemetadatas_id);
 j   ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT filemetadata_datafilecategory_pkey;
       public         	   dataverse    false    360    360            I           2606    16998    filemetadata filemetadata_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT filemetadata_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT filemetadata_pkey;
       public         	   dataverse    false    294            �           2606    18166 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public         	   dataverse    false    375            B           2606    16984 <   foreignmetadatafieldmapping foreignmetadatafieldmapping_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT foreignmetadatafieldmapping_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT foreignmetadatafieldmapping_pkey;
       public         	   dataverse    false    292            "           2606    16882 >   foreignmetadataformatmapping foreignmetadataformatmapping_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.foreignmetadataformatmapping
    ADD CONSTRAINT foreignmetadataformatmapping_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.foreignmetadataformatmapping DROP CONSTRAINT foreignmetadataformatmapping_pkey;
       public         	   dataverse    false    276                       2606    16818    guestbook guestbook_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.guestbook
    ADD CONSTRAINT guestbook_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.guestbook DROP CONSTRAINT guestbook_pkey;
       public         	   dataverse    false    267            �           2606    17316 (   guestbookresponse guestbookresponse_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT guestbookresponse_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT guestbookresponse_pkey;
       public         	   dataverse    false    347            �           2606    16609 *   harvestingclient harvestingclient_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT harvestingclient_name_key UNIQUE (name);
 T   ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT harvestingclient_name_key;
       public         	   dataverse    false    232            �           2606    16607 &   harvestingclient harvestingclient_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT harvestingclient_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT harvestingclient_pkey;
       public         	   dataverse    false    232            �           2606    17271 8   harvestingdataverseconfig harvestingdataverseconfig_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.harvestingdataverseconfig
    ADD CONSTRAINT harvestingdataverseconfig_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.harvestingdataverseconfig DROP CONSTRAINT harvestingdataverseconfig_pkey;
       public         	   dataverse    false    339            =           2606    16963    ingestreport ingestreport_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ingestreport
    ADD CONSTRAINT ingestreport_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ingestreport DROP CONSTRAINT ingestreport_pkey;
       public         	   dataverse    false    289            w           2606    17130     ingestrequest ingestrequest_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ingestrequest
    ADD CONSTRAINT ingestrequest_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ingestrequest DROP CONSTRAINT ingestrequest_pkey;
       public         	   dataverse    false    317            �           2606    16733    ipv4range ipv4range_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipv4range
    ADD CONSTRAINT ipv4range_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipv4range DROP CONSTRAINT ipv4range_pkey;
       public         	   dataverse    false    252            �           2606    16539    ipv6range ipv6range_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ipv6range
    ADD CONSTRAINT ipv6range_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ipv6range DROP CONSTRAINT ipv6range_pkey;
       public         	   dataverse    false    220                       2606    16842 1   maplayermetadata maplayermetadata_datafile_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.maplayermetadata
    ADD CONSTRAINT maplayermetadata_datafile_id_key UNIQUE (datafile_id);
 [   ALTER TABLE ONLY public.maplayermetadata DROP CONSTRAINT maplayermetadata_datafile_id_key;
       public         	   dataverse    false    270                       2606    16840 &   maplayermetadata maplayermetadata_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.maplayermetadata
    ADD CONSTRAINT maplayermetadata_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.maplayermetadata DROP CONSTRAINT maplayermetadata_pkey;
       public         	   dataverse    false    270            �           2606    16473     metadatablock metadatablock_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.metadatablock
    ADD CONSTRAINT metadatablock_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.metadatablock DROP CONSTRAINT metadatablock_pkey;
       public         	   dataverse    false    212            �           2606    16757    metric metric_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.metric
    ADD CONSTRAINT metric_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.metric DROP CONSTRAINT metric_pkey;
       public         	   dataverse    false    256            �           2606    16585    oairecord oairecord_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.oairecord
    ADD CONSTRAINT oairecord_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.oairecord DROP CONSTRAINT oairecord_pkey;
       public         	   dataverse    false    228            �           2606    16452    oaiset oaiset_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.oaiset
    ADD CONSTRAINT oaiset_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.oaiset DROP CONSTRAINT oaiset_pkey;
       public         	   dataverse    false    208            �           2606    16498 $   oauth2tokendata oauth2tokendata_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.oauth2tokendata
    ADD CONSTRAINT oauth2tokendata_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.oauth2tokendata DROP CONSTRAINT oauth2tokendata_pkey;
       public         	   dataverse    false    216            Z           2606    17040 (   passwordresetdata passwordresetdata_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.passwordresetdata
    ADD CONSTRAINT passwordresetdata_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.passwordresetdata DROP CONSTRAINT passwordresetdata_pkey;
       public         	   dataverse    false    302            -           2606    16917 8   pendingworkflowinvocation pendingworkflowinvocation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT pendingworkflowinvocation_pkey PRIMARY KEY (invocationid);
 b   ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT pendingworkflowinvocation_pkey;
       public         	   dataverse    false    281            �           2606    16634 A   persistedglobalgroup persistedglobalgroup_persistedgroupalias_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.persistedglobalgroup
    ADD CONSTRAINT persistedglobalgroup_persistedgroupalias_key UNIQUE (persistedgroupalias);
 k   ALTER TABLE ONLY public.persistedglobalgroup DROP CONSTRAINT persistedglobalgroup_persistedgroupalias_key;
       public         	   dataverse    false    235            �           2606    16632 .   persistedglobalgroup persistedglobalgroup_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.persistedglobalgroup
    ADD CONSTRAINT persistedglobalgroup_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.persistedglobalgroup DROP CONSTRAINT persistedglobalgroup_pkey;
       public         	   dataverse    false    235            |           2606    16425 "   roleassignment roleassignment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT roleassignment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT roleassignment_pkey;
       public         	   dataverse    false    203                       2606    16854    savedsearch savedsearch_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT savedsearch_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT savedsearch_pkey;
       public         	   dataverse    false    272            �           2606    16551 2   savedsearchfilterquery savedsearchfilterquery_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.savedsearchfilterquery
    ADD CONSTRAINT savedsearchfilterquery_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.savedsearchfilterquery DROP CONSTRAINT savedsearchfilterquery_pkey;
       public         	   dataverse    false    222            �           2606    18148    sequence sequence_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (seq_name);
 @   ALTER TABLE ONLY public.sequence DROP CONSTRAINT sequence_pkey;
       public         	   dataverse    false    373            y           2606    18172    setting setting_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.setting
    ADD CONSTRAINT setting_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.setting DROP CONSTRAINT setting_pkey;
       public         	   dataverse    false    319            �           2606    16705    shibgroup shibgroup_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.shibgroup
    ADD CONSTRAINT shibgroup_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.shibgroup DROP CONSTRAINT shibgroup_pkey;
       public         	   dataverse    false    247            �           2606    16563    storagesite storagesite_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.storagesite
    ADD CONSTRAINT storagesite_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.storagesite DROP CONSTRAINT storagesite_pkey;
       public         	   dataverse    false    224            P           2606    17016 &   summarystatistic summarystatistic_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.summarystatistic
    ADD CONSTRAINT summarystatistic_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.summarystatistic DROP CONSTRAINT summarystatistic_pkey;
       public         	   dataverse    false    298            �           2606    17349    template template_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.template
    ADD CONSTRAINT template_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.template DROP CONSTRAINT template_pkey;
       public         	   dataverse    false    353            �           2606    17238 ,   termsofuseandaccess termsofuseandaccess_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.termsofuseandaccess
    ADD CONSTRAINT termsofuseandaccess_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.termsofuseandaccess DROP CONSTRAINT termsofuseandaccess_pkey;
       public         	   dataverse    false    334            t           2606    17476 5   authenticateduserlookup unq_authenticateduserlookup_0 
   CONSTRAINT     �   ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT unq_authenticateduserlookup_0 UNIQUE (persistentuserid, authenticationproviderid);
 _   ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT unq_authenticateduserlookup_0;
       public         	   dataverse    false    315    315            �           2606    17472 #   datasetversion unq_datasetversion_0 
   CONSTRAINT     �   ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT unq_datasetversion_0 UNIQUE (dataset_id, versionnumber, minorversionnumber);
 M   ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT unq_datasetversion_0;
       public         	   dataverse    false    254    254    254            �           2606    17478 ?   dataversefieldtypeinputlevel unq_dataversefieldtypeinputlevel_0 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT unq_dataversefieldtypeinputlevel_0 UNIQUE (dataverse_id, datasetfieldtype_id);
 i   ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT unq_dataversefieldtypeinputlevel_0;
       public         	   dataverse    false    330    330            �           2606    17466    dvobject unq_dvobject_0 
   CONSTRAINT     m   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT unq_dvobject_0 UNIQUE (authority, protocol, identifier);
 A   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT unq_dvobject_0;
       public         	   dataverse    false    218    218    218            �           2606    17468    dvobject unq_dvobject_1 
   CONSTRAINT     i   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT unq_dvobject_1 UNIQUE (owner_id, storageidentifier);
 A   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT unq_dvobject_1;
       public         	   dataverse    false    218    218            G           2606    17474 =   foreignmetadatafieldmapping unq_foreignmetadatafieldmapping_0 
   CONSTRAINT     �   ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT unq_foreignmetadatafieldmapping_0 UNIQUE (foreignmetadataformatmapping_id, foreignfieldxpath);
 g   ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT unq_foreignmetadatafieldmapping_0;
       public         	   dataverse    false    292    292            ~           2606    17464 #   roleassignment unq_roleassignment_0 
   CONSTRAINT     �   ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT unq_roleassignment_0 UNIQUE (assigneeidentifier, role_id, definitionpoint_id);
 M   ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT unq_roleassignment_0;
       public         	   dataverse    false    203    203    203            �           2606    17470 '   variablemetadata unq_variablemetadata_0 
   CONSTRAINT     ~   ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT unq_variablemetadata_0 UNIQUE (datavariable_id, filemetadata_id);
 Q   ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT unq_variablemetadata_0;
       public         	   dataverse    false    239    239                       2606    16777 &   usernotification usernotification_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT usernotification_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.usernotification DROP CONSTRAINT usernotification_pkey;
       public         	   dataverse    false    260            �           2606    17462 0   vargroup_datavariable vargroup_datavariable_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT vargroup_datavariable_pkey PRIMARY KEY (vargroup_id, varsingroup_id);
 Z   ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT vargroup_datavariable_pkey;
       public         	   dataverse    false    372    372            �           2606    17262    vargroup vargroup_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vargroup
    ADD CONSTRAINT vargroup_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vargroup DROP CONSTRAINT vargroup_pkey;
       public         	   dataverse    false    338            �           2606    17164 &   variablecategory variablecategory_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.variablecategory
    ADD CONSTRAINT variablecategory_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.variablecategory DROP CONSTRAINT variablecategory_pkey;
       public         	   dataverse    false    323            �           2606    16658 &   variablemetadata variablemetadata_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT variablemetadata_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT variablemetadata_pkey;
       public         	   dataverse    false    239            �           2606    16693     variablerange variablerange_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.variablerange
    ADD CONSTRAINT variablerange_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.variablerange DROP CONSTRAINT variablerange_pkey;
       public         	   dataverse    false    245            �           2606    16681 (   variablerangeitem variablerangeitem_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.variablerangeitem
    ADD CONSTRAINT variablerangeitem_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.variablerangeitem DROP CONSTRAINT variablerangeitem_pkey;
       public         	   dataverse    false    243            �           2606    16441    workflow workflow_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.workflow
    ADD CONSTRAINT workflow_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.workflow DROP CONSTRAINT workflow_pkey;
       public         	   dataverse    false    206            �           2606    16716 $   workflowcomment workflowcomment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT workflowcomment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT workflowcomment_pkey;
       public         	   dataverse    false    249                       2606    16789 &   workflowstepdata workflowstepdata_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.workflowstepdata
    ADD CONSTRAINT workflowstepdata_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.workflowstepdata DROP CONSTRAINT workflowstepdata_pkey;
       public         	   dataverse    false    262            V           2606    17025 *   worldmapauth_token worldmapauth_token_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.worldmapauth_token
    ADD CONSTRAINT worldmapauth_token_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.worldmapauth_token DROP CONSTRAINT worldmapauth_token_pkey;
       public         	   dataverse    false    300            k           2606    17096 2   worldmapauth_tokentype worldmapauth_tokentype_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.worldmapauth_tokentype
    ADD CONSTRAINT worldmapauth_tokentype_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.worldmapauth_tokentype DROP CONSTRAINT worldmapauth_tokentype_pkey;
       public         	   dataverse    false    311            i           1259    17097    application_name    INDEX     Z   CREATE UNIQUE INDEX application_name ON public.worldmapauth_tokentype USING btree (name);
 $   DROP INDEX public.application_name;
       public         	   dataverse    false    311            �           1259    18181    dataverse_alias_unique_idx    INDEX     g   CREATE UNIQUE INDEX dataverse_alias_unique_idx ON public.dataverse USING btree (lower((alias)::text));
 .   DROP INDEX public.dataverse_alias_unique_idx;
       public         	   dataverse    false    219    219            �           1259    18167    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public         	   dataverse    false    375                       1259    16828     index_actionlogrecord_actiontype    INDEX     b   CREATE INDEX index_actionlogrecord_actiontype ON public.actionlogrecord USING btree (actiontype);
 4   DROP INDEX public.index_actionlogrecord_actiontype;
       public         	   dataverse    false    268                       1259    16829    index_actionlogrecord_starttime    INDEX     `   CREATE INDEX index_actionlogrecord_starttime ON public.actionlogrecord USING btree (starttime);
 3   DROP INDEX public.index_actionlogrecord_starttime;
       public         	   dataverse    false    268                       1259    16827 $   index_actionlogrecord_useridentifier    INDEX     j   CREATE INDEX index_actionlogrecord_useridentifier ON public.actionlogrecord USING btree (useridentifier);
 8   DROP INDEX public.index_actionlogrecord_useridentifier;
       public         	   dataverse    false    268            �           1259    16624 #   index_apitoken_authenticateduser_id    INDEX     h   CREATE INDEX index_apitoken_authenticateduser_id ON public.apitoken USING btree (authenticateduser_id);
 7   DROP INDEX public.index_apitoken_authenticateduser_id;
       public         	   dataverse    false    234            6           1259    18182 #   index_authenticateduser_lower_email    INDEX     x   CREATE UNIQUE INDEX index_authenticateduser_lower_email ON public.authenticateduser USING btree (lower((email)::text));
 7   DROP INDEX public.index_authenticateduser_lower_email;
       public         	   dataverse    false    285    285            7           1259    18168 ,   index_authenticateduser_lower_useridentifier    INDEX     �   CREATE UNIQUE INDEX index_authenticateduser_lower_useridentifier ON public.authenticateduser USING btree (lower((useridentifier)::text));
 @   DROP INDEX public.index_authenticateduser_lower_useridentifier;
       public         	   dataverse    false    285    285            @           1259    16973 '   index_authenticationproviderrow_enabled    INDEX     p   CREATE INDEX index_authenticationproviderrow_enabled ON public.authenticationproviderrow USING btree (enabled);
 ;   DROP INDEX public.index_authenticationproviderrow_enabled;
       public         	   dataverse    false    290            �           1259    17227    index_builtinuser_username    INDEX     V   CREATE INDEX index_builtinuser_username ON public.builtinuser USING btree (username);
 .   DROP INDEX public.index_builtinuser_username;
       public         	   dataverse    false    332            �           1259    17340 "   index_categorymetadata_category_id    INDEX     f   CREATE INDEX index_categorymetadata_category_id ON public.categorymetadata USING btree (category_id);
 6   DROP INDEX public.index_categorymetadata_category_id;
       public         	   dataverse    false    351            �           1259    17341 *   index_categorymetadata_variablemetadata_id    INDEX     v   CREATE INDEX index_categorymetadata_variablemetadata_id ON public.categorymetadata USING btree (variablemetadata_id);
 >   DROP INDEX public.index_categorymetadata_variablemetadata_id;
       public         	   dataverse    false    351            �           1259    16487 +   index_confirmemaildata_authenticateduser_id    INDEX     x   CREATE INDEX index_confirmemaildata_authenticateduser_id ON public.confirmemaildata USING btree (authenticateduser_id);
 ?   DROP INDEX public.index_confirmemaildata_authenticateduser_id;
       public         	   dataverse    false    214            �           1259    16486    index_confirmemaildata_token    INDEX     Z   CREATE INDEX index_confirmemaildata_token ON public.confirmemaildata USING btree (token);
 0   DROP INDEX public.index_confirmemaildata_token;
       public         	   dataverse    false    214            �           1259    17189 ;   index_controlledvocabalternate_controlledvocabularyvalue_id    INDEX     �   CREATE INDEX index_controlledvocabalternate_controlledvocabularyvalue_id ON public.controlledvocabalternate USING btree (controlledvocabularyvalue_id);
 O   DROP INDEX public.index_controlledvocabalternate_controlledvocabularyvalue_id;
       public         	   dataverse    false    327            �           1259    17190 2   index_controlledvocabalternate_datasetfieldtype_id    INDEX     �   CREATE INDEX index_controlledvocabalternate_datasetfieldtype_id ON public.controlledvocabalternate USING btree (datasetfieldtype_id);
 F   DROP INDEX public.index_controlledvocabalternate_datasetfieldtype_id;
       public         	   dataverse    false    327            ]           1259    17054 3   index_controlledvocabularyvalue_datasetfieldtype_id    INDEX     �   CREATE INDEX index_controlledvocabularyvalue_datasetfieldtype_id ON public.controlledvocabularyvalue USING btree (datasetfieldtype_id);
 G   DROP INDEX public.index_controlledvocabularyvalue_datasetfieldtype_id;
       public         	   dataverse    false    304            ^           1259    17055 ,   index_controlledvocabularyvalue_displayorder    INDEX     z   CREATE INDEX index_controlledvocabularyvalue_displayorder ON public.controlledvocabularyvalue USING btree (displayorder);
 @   DROP INDEX public.index_controlledvocabularyvalue_displayorder;
       public         	   dataverse    false    304            	           1259    16809 '   index_customfieldmap_sourcedatasetfield    INDEX     p   CREATE INDEX index_customfieldmap_sourcedatasetfield ON public.customfieldmap USING btree (sourcedatasetfield);
 ;   DROP INDEX public.index_customfieldmap_sourcedatasetfield;
       public         	   dataverse    false    265            
           1259    16810 #   index_customfieldmap_sourcetemplate    INDEX     h   CREATE INDEX index_customfieldmap_sourcetemplate ON public.customfieldmap USING btree (sourcetemplate);
 7   DROP INDEX public.index_customfieldmap_sourcetemplate;
       public         	   dataverse    false    265            �           1259    16673 !   index_customquestion_guestbook_id    INDEX     d   CREATE INDEX index_customquestion_guestbook_id ON public.customquestion USING btree (guestbook_id);
 5   DROP INDEX public.index_customquestion_guestbook_id;
       public         	   dataverse    false    241            �           1259    17331 1   index_customquestionresponse_guestbookresponse_id    INDEX     �   CREATE INDEX index_customquestionresponse_guestbookresponse_id ON public.customquestionresponse USING btree (guestbookresponse_id);
 E   DROP INDEX public.index_customquestionresponse_guestbookresponse_id;
       public         	   dataverse    false    349            �           1259    17200    index_datafile_checksumvalue    INDEX     Z   CREATE INDEX index_datafile_checksumvalue ON public.datafile USING btree (checksumvalue);
 0   DROP INDEX public.index_datafile_checksumvalue;
       public         	   dataverse    false    328            �           1259    17201    index_datafile_contenttype    INDEX     V   CREATE INDEX index_datafile_contenttype ON public.datafile USING btree (contenttype);
 .   DROP INDEX public.index_datafile_contenttype;
       public         	   dataverse    false    328            �           1259    17199    index_datafile_ingeststatus    INDEX     X   CREATE INDEX index_datafile_ingeststatus ON public.datafile USING btree (ingeststatus);
 /   DROP INDEX public.index_datafile_ingeststatus;
       public         	   dataverse    false    328            �           1259    17202    index_datafile_restricted    INDEX     T   CREATE INDEX index_datafile_restricted ON public.datafile USING btree (restricted);
 -   DROP INDEX public.index_datafile_restricted;
       public         	   dataverse    false    328            w           1259    16414 !   index_datafilecategory_dataset_id    INDEX     d   CREATE INDEX index_datafilecategory_dataset_id ON public.datafilecategory USING btree (dataset_id);
 5   DROP INDEX public.index_datafilecategory_dataset_id;
       public         	   dataverse    false    201            n           1259    17106    index_datafiletag_datafile_id    INDEX     \   CREATE INDEX index_datafiletag_datafile_id ON public.datafiletag USING btree (datafile_id);
 1   DROP INDEX public.index_datafiletag_datafile_id;
       public         	   dataverse    false    313            e           1259    17074    index_dataset_guestbook_id    INDEX     V   CREATE INDEX index_dataset_guestbook_id ON public.dataset USING btree (guestbook_id);
 .   DROP INDEX public.index_dataset_guestbook_id;
       public         	   dataverse    false    307            f           1259    17075    index_dataset_thumbnailfile_id    INDEX     ^   CREATE INDEX index_dataset_thumbnailfile_id ON public.dataset USING btree (thumbnailfile_id);
 2   DROP INDEX public.index_dataset_thumbnailfile_id;
       public         	   dataverse    false    307            �           1259    17421 ?   index_datasetfield_controlledvocabularyvalue_controlledvocabula    INDEX     �   CREATE INDEX index_datasetfield_controlledvocabularyvalue_controlledvocabula ON public.datasetfield_controlledvocabularyvalue USING btree (controlledvocabularyvalues_id);
 S   DROP INDEX public.index_datasetfield_controlledvocabularyvalue_controlledvocabula;
       public         	   dataverse    false    364            �           1259    17420 <   index_datasetfield_controlledvocabularyvalue_datasetfield_id    INDEX     �   CREATE INDEX index_datasetfield_controlledvocabularyvalue_datasetfield_id ON public.datasetfield_controlledvocabularyvalue USING btree (datasetfield_id);
 P   DROP INDEX public.index_datasetfield_controlledvocabularyvalue_datasetfield_id;
       public         	   dataverse    false    364            �           1259    16725 &   index_datasetfield_datasetfieldtype_id    INDEX     n   CREATE INDEX index_datasetfield_datasetfieldtype_id ON public.datasetfield USING btree (datasetfieldtype_id);
 :   DROP INDEX public.index_datasetfield_datasetfieldtype_id;
       public         	   dataverse    false    251            �           1259    16726 $   index_datasetfield_datasetversion_id    INDEX     j   CREATE INDEX index_datasetfield_datasetversion_id ON public.datasetfield USING btree (datasetversion_id);
 8   DROP INDEX public.index_datasetfield_datasetversion_id;
       public         	   dataverse    false    251            �           1259    16727 5   index_datasetfield_parentdatasetfieldcompoundvalue_id    INDEX     �   CREATE INDEX index_datasetfield_parentdatasetfieldcompoundvalue_id ON public.datasetfield USING btree (parentdatasetfieldcompoundvalue_id);
 I   DROP INDEX public.index_datasetfield_parentdatasetfieldcompoundvalue_id;
       public         	   dataverse    false    251            �           1259    16728    index_datasetfield_template_id    INDEX     ^   CREATE INDEX index_datasetfield_template_id ON public.datasetfield USING btree (template_id);
 2   DROP INDEX public.index_datasetfield_template_id;
       public         	   dataverse    false    251            �           1259    17295 5   index_datasetfieldcompoundvalue_parentdatasetfield_id    INDEX     �   CREATE INDEX index_datasetfieldcompoundvalue_parentdatasetfield_id ON public.datasetfieldcompoundvalue USING btree (parentdatasetfield_id);
 I   DROP INDEX public.index_datasetfieldcompoundvalue_parentdatasetfield_id;
       public         	   dataverse    false    343            (           1259    16906 .   index_datasetfielddefaultvalue_datasetfield_id    INDEX     ~   CREATE INDEX index_datasetfielddefaultvalue_datasetfield_id ON public.datasetfielddefaultvalue USING btree (datasetfield_id);
 B   DROP INDEX public.index_datasetfielddefaultvalue_datasetfield_id;
       public         	   dataverse    false    280            )           1259    16907 1   index_datasetfielddefaultvalue_defaultvalueset_id    INDEX     �   CREATE INDEX index_datasetfielddefaultvalue_defaultvalueset_id ON public.datasetfielddefaultvalue USING btree (defaultvalueset_id);
 E   DROP INDEX public.index_datasetfielddefaultvalue_defaultvalueset_id;
       public         	   dataverse    false    280            *           1259    16909 +   index_datasetfielddefaultvalue_displayorder    INDEX     x   CREATE INDEX index_datasetfielddefaultvalue_displayorder ON public.datasetfielddefaultvalue USING btree (displayorder);
 ?   DROP INDEX public.index_datasetfielddefaultvalue_displayorder;
       public         	   dataverse    false    280            +           1259    16908 ?   index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i    INDEX     �   CREATE INDEX index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i ON public.datasetfielddefaultvalue USING btree (parentdatasetfielddefaultvalue_id);
 S   DROP INDEX public.index_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_i;
       public         	   dataverse    false    280            �           1259    17391 '   index_datasetfieldtype_metadatablock_id    INDEX     p   CREATE INDEX index_datasetfieldtype_metadatablock_id ON public.datasetfieldtype USING btree (metadatablock_id);
 ;   DROP INDEX public.index_datasetfieldtype_metadatablock_id;
       public         	   dataverse    false    359            �           1259    17392 0   index_datasetfieldtype_parentdatasetfieldtype_id    INDEX     �   CREATE INDEX index_datasetfieldtype_parentdatasetfieldtype_id ON public.datasetfieldtype USING btree (parentdatasetfieldtype_id);
 D   DROP INDEX public.index_datasetfieldtype_parentdatasetfieldtype_id;
       public         	   dataverse    false    359            �           1259    16647 '   index_datasetfieldvalue_datasetfield_id    INDEX     p   CREATE INDEX index_datasetfieldvalue_datasetfield_id ON public.datasetfieldvalue USING btree (datasetfield_id);
 ;   DROP INDEX public.index_datasetfieldvalue_datasetfield_id;
       public         	   dataverse    false    237            a           1259    17064 (   index_datasetlinkingdataverse_dataset_id    INDEX     r   CREATE INDEX index_datasetlinkingdataverse_dataset_id ON public.datasetlinkingdataverse USING btree (dataset_id);
 <   DROP INDEX public.index_datasetlinkingdataverse_dataset_id;
       public         	   dataverse    false    306            b           1259    17065 1   index_datasetlinkingdataverse_linkingdataverse_id    INDEX     �   CREATE INDEX index_datasetlinkingdataverse_linkingdataverse_id ON public.datasetlinkingdataverse USING btree (linkingdataverse_id);
 E   DROP INDEX public.index_datasetlinkingdataverse_linkingdataverse_id;
       public         	   dataverse    false    306            �           1259    17363    index_datasetlock_dataset_id    INDEX     Z   CREATE INDEX index_datasetlock_dataset_id ON public.datasetlock USING btree (dataset_id);
 0   DROP INDEX public.index_datasetlock_dataset_id;
       public         	   dataverse    false    355            �           1259    17362    index_datasetlock_user_id    INDEX     T   CREATE INDEX index_datasetlock_user_id ON public.datasetlock USING btree (user_id);
 -   DROP INDEX public.index_datasetlock_user_id;
       public         	   dataverse    false    355            �           1259    16746    index_datasetversion_dataset_id    INDEX     `   CREATE INDEX index_datasetversion_dataset_id ON public.datasetversion USING btree (dataset_id);
 3   DROP INDEX public.index_datasetversion_dataset_id;
       public         	   dataverse    false    254            �           1259    17304 -   index_datasetversionuser_authenticateduser_id    INDEX     |   CREATE INDEX index_datasetversionuser_authenticateduser_id ON public.datasetversionuser USING btree (authenticateduser_id);
 A   DROP INDEX public.index_datasetversionuser_authenticateduser_id;
       public         	   dataverse    false    345            �           1259    17305 *   index_datasetversionuser_datasetversion_id    INDEX     v   CREATE INDEX index_datasetversionuser_datasetversion_id ON public.datasetversionuser USING btree (datasetversion_id);
 >   DROP INDEX public.index_datasetversionuser_datasetversion_id;
       public         	   dataverse    false    345            :           1259    16952    index_datatable_datafile_id    INDEX     X   CREATE INDEX index_datatable_datafile_id ON public.datatable USING btree (datafile_id);
 /   DROP INDEX public.index_datatable_datafile_id;
       public         	   dataverse    false    287            �           1259    17177    index_datavariable_datatable_id    INDEX     `   CREATE INDEX index_datavariable_datatable_id ON public.datavariable USING btree (datatable_id);
 3   DROP INDEX public.index_datavariable_datatable_id;
       public         	   dataverse    false    325            �           1259    16527    index_dataverse_affiliation    INDEX     X   CREATE INDEX index_dataverse_affiliation ON public.dataverse USING btree (affiliation);
 /   DROP INDEX public.index_dataverse_affiliation;
       public         	   dataverse    false    219            �           1259    16526    index_dataverse_alias    INDEX     L   CREATE INDEX index_dataverse_alias ON public.dataverse USING btree (alias);
 )   DROP INDEX public.index_dataverse_alias;
       public         	   dataverse    false    219            �           1259    16528    index_dataverse_dataversetype    INDEX     \   CREATE INDEX index_dataverse_dataversetype ON public.dataverse USING btree (dataversetype);
 1   DROP INDEX public.index_dataverse_dataversetype;
       public         	   dataverse    false    219            �           1259    16524 )   index_dataverse_defaultcontributorrole_id    INDEX     t   CREATE INDEX index_dataverse_defaultcontributorrole_id ON public.dataverse USING btree (defaultcontributorrole_id);
 =   DROP INDEX public.index_dataverse_defaultcontributorrole_id;
       public         	   dataverse    false    219            �           1259    16525 "   index_dataverse_defaulttemplate_id    INDEX     f   CREATE INDEX index_dataverse_defaulttemplate_id ON public.dataverse USING btree (defaulttemplate_id);
 6   DROP INDEX public.index_dataverse_defaulttemplate_id;
       public         	   dataverse    false    219            �           1259    16529    index_dataverse_facetroot    INDEX     T   CREATE INDEX index_dataverse_facetroot ON public.dataverse USING btree (facetroot);
 -   DROP INDEX public.index_dataverse_facetroot;
       public         	   dataverse    false    219            �           1259    16530    index_dataverse_guestbookroot    INDEX     \   CREATE INDEX index_dataverse_guestbookroot ON public.dataverse USING btree (guestbookroot);
 1   DROP INDEX public.index_dataverse_guestbookroot;
       public         	   dataverse    false    219            �           1259    16531 !   index_dataverse_metadatablockroot    INDEX     d   CREATE INDEX index_dataverse_metadatablockroot ON public.dataverse USING btree (metadatablockroot);
 5   DROP INDEX public.index_dataverse_metadatablockroot;
       public         	   dataverse    false    219            �           1259    16533    index_dataverse_permissionroot    INDEX     ^   CREATE INDEX index_dataverse_permissionroot ON public.dataverse USING btree (permissionroot);
 2   DROP INDEX public.index_dataverse_permissionroot;
       public         	   dataverse    false    219            �           1259    16532    index_dataverse_templateroot    INDEX     Z   CREATE INDEX index_dataverse_templateroot ON public.dataverse USING btree (templateroot);
 0   DROP INDEX public.index_dataverse_templateroot;
       public         	   dataverse    false    219            �           1259    16534    index_dataverse_themeroot    INDEX     T   CREATE INDEX index_dataverse_themeroot ON public.dataverse USING btree (themeroot);
 -   DROP INDEX public.index_dataverse_themeroot;
       public         	   dataverse    false    219            }           1259    17152 #   index_dataversecontact_contactemail    INDEX     h   CREATE INDEX index_dataversecontact_contactemail ON public.dataversecontact USING btree (contactemail);
 7   DROP INDEX public.index_dataversecontact_contactemail;
       public         	   dataverse    false    321            ~           1259    17151 #   index_dataversecontact_dataverse_id    INDEX     h   CREATE INDEX index_dataversecontact_dataverse_id ON public.dataversecontact USING btree (dataverse_id);
 7   DROP INDEX public.index_dataversecontact_dataverse_id;
       public         	   dataverse    false    321                       1259    17153 #   index_dataversecontact_displayorder    INDEX     h   CREATE INDEX index_dataversecontact_displayorder ON public.dataversecontact USING btree (displayorder);
 7   DROP INDEX public.index_dataversecontact_displayorder;
       public         	   dataverse    false    321            �           1259    16573 (   index_dataversefacet_datasetfieldtype_id    INDEX     r   CREATE INDEX index_dataversefacet_datasetfieldtype_id ON public.dataversefacet USING btree (datasetfieldtype_id);
 <   DROP INDEX public.index_dataversefacet_datasetfieldtype_id;
       public         	   dataverse    false    226            �           1259    16572 !   index_dataversefacet_dataverse_id    INDEX     d   CREATE INDEX index_dataversefacet_dataverse_id ON public.dataversefacet USING btree (dataverse_id);
 5   DROP INDEX public.index_dataversefacet_dataverse_id;
       public         	   dataverse    false    226            �           1259    16574 !   index_dataversefacet_displayorder    INDEX     d   CREATE INDEX index_dataversefacet_displayorder ON public.dataversefacet USING btree (displayorder);
 5   DROP INDEX public.index_dataversefacet_displayorder;
       public         	   dataverse    false    226            �           1259    16594 -   index_dataversefeatureddataverse_dataverse_id    INDEX     |   CREATE INDEX index_dataversefeatureddataverse_dataverse_id ON public.dataversefeatureddataverse USING btree (dataverse_id);
 A   DROP INDEX public.index_dataversefeatureddataverse_dataverse_id;
       public         	   dataverse    false    230            �           1259    16596 -   index_dataversefeatureddataverse_displayorder    INDEX     |   CREATE INDEX index_dataversefeatureddataverse_displayorder ON public.dataversefeatureddataverse USING btree (displayorder);
 A   DROP INDEX public.index_dataversefeatureddataverse_displayorder;
       public         	   dataverse    false    230            �           1259    16595 5   index_dataversefeatureddataverse_featureddataverse_id    INDEX     �   CREATE INDEX index_dataversefeatureddataverse_featureddataverse_id ON public.dataversefeatureddataverse USING btree (featureddataverse_id);
 I   DROP INDEX public.index_dataversefeatureddataverse_featureddataverse_id;
       public         	   dataverse    false    230            �           1259    17212 6   index_dataversefieldtypeinputlevel_datasetfieldtype_id    INDEX     �   CREATE INDEX index_dataversefieldtypeinputlevel_datasetfieldtype_id ON public.dataversefieldtypeinputlevel USING btree (datasetfieldtype_id);
 J   DROP INDEX public.index_dataversefieldtypeinputlevel_datasetfieldtype_id;
       public         	   dataverse    false    330            �           1259    17211 /   index_dataversefieldtypeinputlevel_dataverse_id    INDEX     �   CREATE INDEX index_dataversefieldtypeinputlevel_dataverse_id ON public.dataversefieldtypeinputlevel USING btree (dataverse_id);
 C   DROP INDEX public.index_dataversefieldtypeinputlevel_dataverse_id;
       public         	   dataverse    false    330            �           1259    17213 +   index_dataversefieldtypeinputlevel_required    INDEX     x   CREATE INDEX index_dataversefieldtypeinputlevel_required ON public.dataversefieldtypeinputlevel USING btree (required);
 ?   DROP INDEX public.index_dataversefieldtypeinputlevel_required;
       public         	   dataverse    false    330            �           1259    16461 ,   index_dataverselinkingdataverse_dataverse_id    INDEX     z   CREATE INDEX index_dataverselinkingdataverse_dataverse_id ON public.dataverselinkingdataverse USING btree (dataverse_id);
 @   DROP INDEX public.index_dataverselinkingdataverse_dataverse_id;
       public         	   dataverse    false    210            �           1259    16462 3   index_dataverselinkingdataverse_linkingdataverse_id    INDEX     �   CREATE INDEX index_dataverselinkingdataverse_linkingdataverse_id ON public.dataverselinkingdataverse USING btree (linkingdataverse_id);
 G   DROP INDEX public.index_dataverselinkingdataverse_linkingdataverse_id;
       public         	   dataverse    false    210            �           1259    17379    index_dataverserole_alias    INDEX     T   CREATE INDEX index_dataverserole_alias ON public.dataverserole USING btree (alias);
 -   DROP INDEX public.index_dataverserole_alias;
       public         	   dataverse    false    357            �           1259    17378    index_dataverserole_name    INDEX     R   CREATE INDEX index_dataverserole_name ON public.dataverserole USING btree (name);
 ,   DROP INDEX public.index_dataverserole_name;
       public         	   dataverse    false    357            �           1259    17377    index_dataverserole_owner_id    INDEX     Z   CREATE INDEX index_dataverserole_owner_id ON public.dataverserole USING btree (owner_id);
 0   DROP INDEX public.index_dataverserole_owner_id;
       public         	   dataverse    false    357            t           1259    16405 !   index_dataversetheme_dataverse_id    INDEX     d   CREATE INDEX index_dataversetheme_dataverse_id ON public.dataversetheme USING btree (dataverse_id);
 5   DROP INDEX public.index_dataversetheme_dataverse_id;
       public         	   dataverse    false    199            �           1259    16512    index_dvobject_creator_id    INDEX     T   CREATE INDEX index_dvobject_creator_id ON public.dvobject USING btree (creator_id);
 -   DROP INDEX public.index_dvobject_creator_id;
       public         	   dataverse    false    218            �           1259    16510    index_dvobject_dtype    INDEX     J   CREATE INDEX index_dvobject_dtype ON public.dvobject USING btree (dtype);
 (   DROP INDEX public.index_dvobject_dtype;
       public         	   dataverse    false    218            �           1259    16511    index_dvobject_owner_id    INDEX     P   CREATE INDEX index_dvobject_owner_id ON public.dvobject USING btree (owner_id);
 +   DROP INDEX public.index_dvobject_owner_id;
       public         	   dataverse    false    218            �           1259    16513    index_dvobject_releaseuser_id    INDEX     \   CREATE INDEX index_dvobject_releaseuser_id ON public.dvobject USING btree (releaseuser_id);
 1   DROP INDEX public.index_dvobject_releaseuser_id;
       public         	   dataverse    false    218                       1259    16871 %   index_explicitgroup_groupaliasinowner    INDEX     l   CREATE INDEX index_explicitgroup_groupaliasinowner ON public.explicitgroup USING btree (groupaliasinowner);
 9   DROP INDEX public.index_explicitgroup_groupaliasinowner;
       public         	   dataverse    false    274                        1259    16870    index_explicitgroup_owner_id    INDEX     Z   CREATE INDEX index_explicitgroup_owner_id ON public.explicitgroup USING btree (owner_id);
 0   DROP INDEX public.index_explicitgroup_owner_id;
       public         	   dataverse    false    274            q           1259    16393 &   index_externaltooltype_externaltool_id    INDEX     n   CREATE INDEX index_externaltooltype_externaltool_id ON public.externaltooltype USING btree (externaltool_id);
 :   DROP INDEX public.index_externaltooltype_externaltool_id;
       public         	   dataverse    false    197            J           1259    16999    index_filemetadata_datafile_id    INDEX     ^   CREATE INDEX index_filemetadata_datafile_id ON public.filemetadata USING btree (datafile_id);
 2   DROP INDEX public.index_filemetadata_datafile_id;
       public         	   dataverse    false    294            �           1259    17398 5   index_filemetadata_datafilecategory_filecategories_id    INDEX     �   CREATE INDEX index_filemetadata_datafilecategory_filecategories_id ON public.filemetadata_datafilecategory USING btree (filecategories_id);
 I   DROP INDEX public.index_filemetadata_datafilecategory_filecategories_id;
       public         	   dataverse    false    360            �           1259    17399 4   index_filemetadata_datafilecategory_filemetadatas_id    INDEX     �   CREATE INDEX index_filemetadata_datafilecategory_filemetadatas_id ON public.filemetadata_datafilecategory USING btree (filemetadatas_id);
 H   DROP INDEX public.index_filemetadata_datafilecategory_filemetadatas_id;
       public         	   dataverse    false    360            K           1259    17000 $   index_filemetadata_datasetversion_id    INDEX     j   CREATE INDEX index_filemetadata_datasetversion_id ON public.filemetadata USING btree (datasetversion_id);
 8   DROP INDEX public.index_filemetadata_datasetversion_id;
       public         	   dataverse    false    294            C           1259    16986 3   index_foreignmetadatafieldmapping_foreignfieldxpath    INDEX     �   CREATE INDEX index_foreignmetadatafieldmapping_foreignfieldxpath ON public.foreignmetadatafieldmapping USING btree (foreignfieldxpath);
 G   DROP INDEX public.index_foreignmetadatafieldmapping_foreignfieldxpath;
       public         	   dataverse    false    292            D           1259    16985 ?   index_foreignmetadatafieldmapping_foreignmetadataformatmapping_    INDEX     �   CREATE INDEX index_foreignmetadatafieldmapping_foreignmetadataformatmapping_ ON public.foreignmetadatafieldmapping USING btree (foreignmetadataformatmapping_id);
 S   DROP INDEX public.index_foreignmetadatafieldmapping_foreignmetadataformatmapping_;
       public         	   dataverse    false    292            E           1259    16987 7   index_foreignmetadatafieldmapping_parentfieldmapping_id    INDEX     �   CREATE INDEX index_foreignmetadatafieldmapping_parentfieldmapping_id ON public.foreignmetadatafieldmapping USING btree (parentfieldmapping_id);
 K   DROP INDEX public.index_foreignmetadatafieldmapping_parentfieldmapping_id;
       public         	   dataverse    false    292            #           1259    16883 '   index_foreignmetadataformatmapping_name    INDEX     p   CREATE INDEX index_foreignmetadataformatmapping_name ON public.foreignmetadataformatmapping USING btree (name);
 ;   DROP INDEX public.index_foreignmetadataformatmapping_name;
       public         	   dataverse    false    276            �           1259    17318 #   index_guestbookresponse_datafile_id    INDEX     h   CREATE INDEX index_guestbookresponse_datafile_id ON public.guestbookresponse USING btree (datafile_id);
 7   DROP INDEX public.index_guestbookresponse_datafile_id;
       public         	   dataverse    false    347            �           1259    17319 "   index_guestbookresponse_dataset_id    INDEX     f   CREATE INDEX index_guestbookresponse_dataset_id ON public.guestbookresponse USING btree (dataset_id);
 6   DROP INDEX public.index_guestbookresponse_dataset_id;
       public         	   dataverse    false    347            �           1259    17317 $   index_guestbookresponse_guestbook_id    INDEX     j   CREATE INDEX index_guestbookresponse_guestbook_id ON public.guestbookresponse USING btree (guestbook_id);
 8   DROP INDEX public.index_guestbookresponse_guestbook_id;
       public         	   dataverse    false    347            �           1259    16610 #   index_harvestingclient_dataverse_id    INDEX     h   CREATE INDEX index_harvestingclient_dataverse_id ON public.harvestingclient USING btree (dataverse_id);
 7   DROP INDEX public.index_harvestingclient_dataverse_id;
       public         	   dataverse    false    232            �           1259    16613 $   index_harvestingclient_harvestingurl    INDEX     j   CREATE INDEX index_harvestingclient_harvestingurl ON public.harvestingclient USING btree (harvestingurl);
 8   DROP INDEX public.index_harvestingclient_harvestingurl;
       public         	   dataverse    false    232            �           1259    16612 #   index_harvestingclient_harveststyle    INDEX     h   CREATE INDEX index_harvestingclient_harveststyle ON public.harvestingclient USING btree (harveststyle);
 7   DROP INDEX public.index_harvestingclient_harveststyle;
       public         	   dataverse    false    232            �           1259    16611 "   index_harvestingclient_harvesttype    INDEX     f   CREATE INDEX index_harvestingclient_harvesttype ON public.harvestingclient USING btree (harvesttype);
 6   DROP INDEX public.index_harvestingclient_harvesttype;
       public         	   dataverse    false    232            �           1259    17272 ,   index_harvestingdataverseconfig_dataverse_id    INDEX     z   CREATE INDEX index_harvestingdataverseconfig_dataverse_id ON public.harvestingdataverseconfig USING btree (dataverse_id);
 @   DROP INDEX public.index_harvestingdataverseconfig_dataverse_id;
       public         	   dataverse    false    339            �           1259    17275 -   index_harvestingdataverseconfig_harvestingurl    INDEX     |   CREATE INDEX index_harvestingdataverseconfig_harvestingurl ON public.harvestingdataverseconfig USING btree (harvestingurl);
 A   DROP INDEX public.index_harvestingdataverseconfig_harvestingurl;
       public         	   dataverse    false    339            �           1259    17274 ,   index_harvestingdataverseconfig_harveststyle    INDEX     z   CREATE INDEX index_harvestingdataverseconfig_harveststyle ON public.harvestingdataverseconfig USING btree (harveststyle);
 @   DROP INDEX public.index_harvestingdataverseconfig_harveststyle;
       public         	   dataverse    false    339            �           1259    17273 +   index_harvestingdataverseconfig_harvesttype    INDEX     x   CREATE INDEX index_harvestingdataverseconfig_harvesttype ON public.harvestingdataverseconfig USING btree (harvesttype);
 ?   DROP INDEX public.index_harvestingdataverseconfig_harvesttype;
       public         	   dataverse    false    339            ;           1259    16964    index_ingestreport_datafile_id    INDEX     ^   CREATE INDEX index_ingestreport_datafile_id ON public.ingestreport USING btree (datafile_id);
 2   DROP INDEX public.index_ingestreport_datafile_id;
       public         	   dataverse    false    289            u           1259    17131    index_ingestrequest_datafile_id    INDEX     `   CREATE INDEX index_ingestrequest_datafile_id ON public.ingestrequest USING btree (datafile_id);
 3   DROP INDEX public.index_ingestrequest_datafile_id;
       public         	   dataverse    false    317            �           1259    16734    index_ipv4range_owner_id    INDEX     R   CREATE INDEX index_ipv4range_owner_id ON public.ipv4range USING btree (owner_id);
 ,   DROP INDEX public.index_ipv4range_owner_id;
       public         	   dataverse    false    252            �           1259    16540    index_ipv6range_owner_id    INDEX     R   CREATE INDEX index_ipv6range_owner_id ON public.ipv6range USING btree (owner_id);
 ,   DROP INDEX public.index_ipv6range_owner_id;
       public         	   dataverse    false    220                       1259    16843 !   index_maplayermetadata_dataset_id    INDEX     d   CREATE INDEX index_maplayermetadata_dataset_id ON public.maplayermetadata USING btree (dataset_id);
 5   DROP INDEX public.index_maplayermetadata_dataset_id;
       public         	   dataverse    false    270            �           1259    16474    index_metadatablock_name    INDEX     R   CREATE INDEX index_metadatablock_name ON public.metadatablock USING btree (name);
 ,   DROP INDEX public.index_metadatablock_name;
       public         	   dataverse    false    212            �           1259    16475    index_metadatablock_owner_id    INDEX     Z   CREATE INDEX index_metadatablock_owner_id ON public.metadatablock USING btree (owner_id);
 0   DROP INDEX public.index_metadatablock_owner_id;
       public         	   dataverse    false    212            �           1259    16758    index_metric_id    INDEX     @   CREATE INDEX index_metric_id ON public.metric USING btree (id);
 #   DROP INDEX public.index_metric_id;
       public         	   dataverse    false    256            W           1259    17042 &   index_passwordresetdata_builtinuser_id    INDEX     n   CREATE INDEX index_passwordresetdata_builtinuser_id ON public.passwordresetdata USING btree (builtinuser_id);
 :   DROP INDEX public.index_passwordresetdata_builtinuser_id;
       public         	   dataverse    false    302            X           1259    17041    index_passwordresetdata_token    INDEX     \   CREATE INDEX index_passwordresetdata_token ON public.passwordresetdata USING btree (token);
 1   DROP INDEX public.index_passwordresetdata_token;
       public         	   dataverse    false    302            �           1259    16635     index_persistedglobalgroup_dtype    INDEX     b   CREATE INDEX index_persistedglobalgroup_dtype ON public.persistedglobalgroup USING btree (dtype);
 4   DROP INDEX public.index_persistedglobalgroup_dtype;
       public         	   dataverse    false    235            x           1259    16426 '   index_roleassignment_assigneeidentifier    INDEX     p   CREATE INDEX index_roleassignment_assigneeidentifier ON public.roleassignment USING btree (assigneeidentifier);
 ;   DROP INDEX public.index_roleassignment_assigneeidentifier;
       public         	   dataverse    false    203            y           1259    16427 '   index_roleassignment_definitionpoint_id    INDEX     p   CREATE INDEX index_roleassignment_definitionpoint_id ON public.roleassignment USING btree (definitionpoint_id);
 ;   DROP INDEX public.index_roleassignment_definitionpoint_id;
       public         	   dataverse    false    203            z           1259    16428    index_roleassignment_role_id    INDEX     Z   CREATE INDEX index_roleassignment_role_id ON public.roleassignment USING btree (role_id);
 0   DROP INDEX public.index_roleassignment_role_id;
       public         	   dataverse    false    203                       1259    16856    index_savedsearch_creator_id    INDEX     Z   CREATE INDEX index_savedsearch_creator_id ON public.savedsearch USING btree (creator_id);
 0   DROP INDEX public.index_savedsearch_creator_id;
       public         	   dataverse    false    272                       1259    16855 $   index_savedsearch_definitionpoint_id    INDEX     j   CREATE INDEX index_savedsearch_definitionpoint_id ON public.savedsearch USING btree (definitionpoint_id);
 8   DROP INDEX public.index_savedsearch_definitionpoint_id;
       public         	   dataverse    false    272            �           1259    16552 +   index_savedsearchfilterquery_savedsearch_id    INDEX     x   CREATE INDEX index_savedsearchfilterquery_savedsearch_id ON public.savedsearchfilterquery USING btree (savedsearch_id);
 ?   DROP INDEX public.index_savedsearchfilterquery_savedsearch_id;
       public         	   dataverse    false    222            N           1259    17017 &   index_summarystatistic_datavariable_id    INDEX     n   CREATE INDEX index_summarystatistic_datavariable_id ON public.summarystatistic USING btree (datavariable_id);
 :   DROP INDEX public.index_summarystatistic_datavariable_id;
       public         	   dataverse    false    298            �           1259    17350    index_template_dataverse_id    INDEX     X   CREATE INDEX index_template_dataverse_id ON public.template USING btree (dataverse_id);
 /   DROP INDEX public.index_template_dataverse_id;
       public         	   dataverse    false    353                        1259    16778    index_usernotification_user_id    INDEX     ^   CREATE INDEX index_usernotification_user_id ON public.usernotification USING btree (user_id);
 2   DROP INDEX public.index_usernotification_user_id;
       public         	   dataverse    false    260            �           1259    17263    index_vargroup_filemetadata_id    INDEX     ^   CREATE INDEX index_vargroup_filemetadata_id ON public.vargroup USING btree (filemetadata_id);
 2   DROP INDEX public.index_vargroup_filemetadata_id;
       public         	   dataverse    false    338            �           1259    17165 &   index_variablecategory_datavariable_id    INDEX     n   CREATE INDEX index_variablecategory_datavariable_id ON public.variablecategory USING btree (datavariable_id);
 :   DROP INDEX public.index_variablecategory_datavariable_id;
       public         	   dataverse    false    323            �           1259    16659 &   index_variablemetadata_datavariable_id    INDEX     n   CREATE INDEX index_variablemetadata_datavariable_id ON public.variablemetadata USING btree (datavariable_id);
 :   DROP INDEX public.index_variablemetadata_datavariable_id;
       public         	   dataverse    false    239            �           1259    16661 6   index_variablemetadata_datavariable_id_filemetadata_id    INDEX     �   CREATE INDEX index_variablemetadata_datavariable_id_filemetadata_id ON public.variablemetadata USING btree (datavariable_id, filemetadata_id);
 J   DROP INDEX public.index_variablemetadata_datavariable_id_filemetadata_id;
       public         	   dataverse    false    239    239            �           1259    16660 &   index_variablemetadata_filemetadata_id    INDEX     n   CREATE INDEX index_variablemetadata_filemetadata_id ON public.variablemetadata USING btree (filemetadata_id);
 :   DROP INDEX public.index_variablemetadata_filemetadata_id;
       public         	   dataverse    false    239            �           1259    16694 #   index_variablerange_datavariable_id    INDEX     h   CREATE INDEX index_variablerange_datavariable_id ON public.variablerange USING btree (datavariable_id);
 7   DROP INDEX public.index_variablerange_datavariable_id;
       public         	   dataverse    false    245            �           1259    16682 '   index_variablerangeitem_datavariable_id    INDEX     p   CREATE INDEX index_variablerangeitem_datavariable_id ON public.variablerangeitem USING btree (datavariable_id);
 ;   DROP INDEX public.index_variablerangeitem_datavariable_id;
       public         	   dataverse    false    243            Q           1259    17027 '   index_worldmapauth_token_application_id    INDEX     p   CREATE INDEX index_worldmapauth_token_application_id ON public.worldmapauth_token USING btree (application_id);
 ;   DROP INDEX public.index_worldmapauth_token_application_id;
       public         	   dataverse    false    300            R           1259    17028 $   index_worldmapauth_token_datafile_id    INDEX     j   CREATE INDEX index_worldmapauth_token_datafile_id ON public.worldmapauth_token USING btree (datafile_id);
 8   DROP INDEX public.index_worldmapauth_token_datafile_id;
       public         	   dataverse    false    300            S           1259    17029 )   index_worldmapauth_token_dataverseuser_id    INDEX     t   CREATE INDEX index_worldmapauth_token_dataverseuser_id ON public.worldmapauth_token USING btree (dataverseuser_id);
 =   DROP INDEX public.index_worldmapauth_token_dataverseuser_id;
       public         	   dataverse    false    300            �           1259    18183    one_draft_version_per_dataset    INDEX     �   CREATE UNIQUE INDEX one_draft_version_per_dataset ON public.datasetversion USING btree (dataset_id) WHERE ((versionstate)::text = 'DRAFT'::text);
 1   DROP INDEX public.one_draft_version_per_dataset;
       public         	   dataverse    false    254    254            T           1259    17026    token_value    INDEX     R   CREATE UNIQUE INDEX token_value ON public.worldmapauth_token USING btree (token);
    DROP INDEX public.token_value;
       public         	   dataverse    false    300            z           1259    18174    unique_settings    INDEX     d   CREATE UNIQUE INDEX unique_settings ON public.setting USING btree (name, COALESCE(lang, ''::text));
 #   DROP INDEX public.unique_settings;
       public         	   dataverse    false    319    319            `           2606    18049 c   dataverse_citationdatasetfieldtypes dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id FOREIGN KEY (citationdatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 �   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT dataverse_citationdatasetfieldtypes_citationdatasetfieldtype_id;
       public       	   dataverse    false    361    3791    359            f           2606    18079 f   datasetfield_controlledvocabularyvalue dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid FOREIGN KEY (controlledvocabularyvalues_id) REFERENCES public.controlledvocabularyvalue(id);
 �   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT dtasetfieldcontrolledvocabularyvaluecntrolledvocabularyvaluesid;
       public       	   dataverse    false    364    3676    304            k           2606    18104 ^   explicitgroup_authenticateduser explicitgroup_authenticateduser_containedauthenticatedusers_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT explicitgroup_authenticateduser_containedauthenticatedusers_id FOREIGN KEY (containedauthenticatedusers_id) REFERENCES public.authenticateduser(id);
 �   ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT explicitgroup_authenticateduser_containedauthenticatedusers_id;
       public       	   dataverse    false    285    368    3635            J           2606    17934 N   alternativepersistentidentifier fk_alternativepersistentidentifier_dvobject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.alternativepersistentidentifier
    ADD CONSTRAINT fk_alternativepersistentidentifier_dvobject_id FOREIGN KEY (dvobject_id) REFERENCES public.dvobject(id);
 x   ALTER TABLE ONLY public.alternativepersistentidentifier DROP CONSTRAINT fk_alternativepersistentidentifier_dvobject_id;
       public       	   dataverse    false    341    3478    218                       2606    17599 )   apitoken fk_apitoken_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.apitoken
    ADD CONSTRAINT fk_apitoken_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 S   ALTER TABLE ONLY public.apitoken DROP CONSTRAINT fk_apitoken_authenticateduser_id;
       public       	   dataverse    false    3635    285    234            >           2606    17874 G   authenticateduserlookup fk_authenticateduserlookup_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authenticateduserlookup
    ADD CONSTRAINT fk_authenticateduserlookup_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 q   ALTER TABLE ONLY public.authenticateduserlookup DROP CONSTRAINT fk_authenticateduserlookup_authenticateduser_id;
       public       	   dataverse    false    3635    315    285            U           2606    17994 0   categorymetadata fk_categorymetadata_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT fk_categorymetadata_category_id FOREIGN KEY (category_id) REFERENCES public.variablecategory(id);
 Z   ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT fk_categorymetadata_category_id;
       public       	   dataverse    false    323    351    3714            V           2606    17989 8   categorymetadata fk_categorymetadata_variablemetadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.categorymetadata
    ADD CONSTRAINT fk_categorymetadata_variablemetadata_id FOREIGN KEY (variablemetadata_id) REFERENCES public.variablemetadata(id);
 b   ALTER TABLE ONLY public.categorymetadata DROP CONSTRAINT fk_categorymetadata_variablemetadata_id;
       public       	   dataverse    false    3550    351    239            <           2606    17864 8   clientharvestrun fk_clientharvestrun_harvestingclient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientharvestrun
    ADD CONSTRAINT fk_clientharvestrun_harvestingclient_id FOREIGN KEY (harvestingclient_id) REFERENCES public.harvestingclient(id);
 b   ALTER TABLE ONLY public.clientharvestrun DROP CONSTRAINT fk_clientharvestrun_harvestingclient_id;
       public       	   dataverse    false    232    309    3526            �           2606    17524 9   confirmemaildata fk_confirmemaildata_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.confirmemaildata
    ADD CONSTRAINT fk_confirmemaildata_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 c   ALTER TABLE ONLY public.confirmemaildata DROP CONSTRAINT fk_confirmemaildata_authenticateduser_id;
       public       	   dataverse    false    214    3635    285            C           2606    17904 Q   controlledvocabalternate fk_controlledvocabalternate_controlledvocabularyvalue_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT fk_controlledvocabalternate_controlledvocabularyvalue_id FOREIGN KEY (controlledvocabularyvalue_id) REFERENCES public.controlledvocabularyvalue(id);
 {   ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT fk_controlledvocabalternate_controlledvocabularyvalue_id;
       public       	   dataverse    false    3676    304    327            D           2606    17899 H   controlledvocabalternate fk_controlledvocabalternate_datasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.controlledvocabalternate
    ADD CONSTRAINT fk_controlledvocabalternate_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 r   ALTER TABLE ONLY public.controlledvocabalternate DROP CONSTRAINT fk_controlledvocabalternate_datasetfieldtype_id;
       public       	   dataverse    false    3791    327    359            4           2606    17824 J   controlledvocabularyvalue fk_controlledvocabularyvalue_datasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.controlledvocabularyvalue
    ADD CONSTRAINT fk_controlledvocabularyvalue_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 t   ALTER TABLE ONLY public.controlledvocabularyvalue DROP CONSTRAINT fk_controlledvocabularyvalue_datasetfieldtype_id;
       public       	   dataverse    false    3791    304    359                       2606    17624 -   customquestion fk_customquestion_guestbook_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.customquestion
    ADD CONSTRAINT fk_customquestion_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);
 W   ALTER TABLE ONLY public.customquestion DROP CONSTRAINT fk_customquestion_guestbook_id;
       public       	   dataverse    false    267    3596    241            S           2606    17979 B   customquestionresponse fk_customquestionresponse_customquestion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT fk_customquestionresponse_customquestion_id FOREIGN KEY (customquestion_id) REFERENCES public.customquestion(id);
 l   ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT fk_customquestionresponse_customquestion_id;
       public       	   dataverse    false    349    3552    241            T           2606    17984 E   customquestionresponse fk_customquestionresponse_guestbookresponse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.customquestionresponse
    ADD CONSTRAINT fk_customquestionresponse_guestbookresponse_id FOREIGN KEY (guestbookresponse_id) REFERENCES public.guestbookresponse(id);
 o   ALTER TABLE ONLY public.customquestionresponse DROP CONSTRAINT fk_customquestionresponse_guestbookresponse_id;
       public       	   dataverse    false    347    3765    349            .           2606    17794 <   customquestionvalue fk_customquestionvalue_customquestion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.customquestionvalue
    ADD CONSTRAINT fk_customquestionvalue_customquestion_id FOREIGN KEY (customquestion_id) REFERENCES public.customquestion(id);
 f   ALTER TABLE ONLY public.customquestionvalue DROP CONSTRAINT fk_customquestionvalue_customquestion_id;
       public       	   dataverse    false    3552    296    241            E           2606    17909    datafile fk_datafile_id    FK CONSTRAINT     t   ALTER TABLE ONLY public.datafile
    ADD CONSTRAINT fk_datafile_id FOREIGN KEY (id) REFERENCES public.dvobject(id);
 A   ALTER TABLE ONLY public.datafile DROP CONSTRAINT fk_datafile_id;
       public       	   dataverse    false    3478    328    218            �           2606    17489 /   datafilecategory fk_datafilecategory_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datafilecategory
    ADD CONSTRAINT fk_datafilecategory_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 Y   ALTER TABLE ONLY public.datafilecategory DROP CONSTRAINT fk_datafilecategory_dataset_id;
       public       	   dataverse    false    201    218    3478            =           2606    17869 &   datafiletag fk_datafiletag_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datafiletag
    ADD CONSTRAINT fk_datafiletag_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 P   ALTER TABLE ONLY public.datafiletag DROP CONSTRAINT fk_datafiletag_datafile_id;
       public       	   dataverse    false    313    218    3478            7           2606    17859 2   dataset fk_dataset_citationdatedatasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_citationdatedatasetfieldtype_id FOREIGN KEY (citationdatedatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 \   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_citationdatedatasetfieldtype_id;
       public       	   dataverse    false    359    307    3791            8           2606    17849    dataset fk_dataset_guestbook_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);
 I   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_guestbook_id;
       public       	   dataverse    false    3596    267    307            9           2606    17844 &   dataset fk_dataset_harvestingclient_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_harvestingclient_id FOREIGN KEY (harvestingclient_id) REFERENCES public.harvestingclient(id);
 P   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_harvestingclient_id;
       public       	   dataverse    false    307    232    3526            :           2606    17839    dataset fk_dataset_id    FK CONSTRAINT     r   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_id FOREIGN KEY (id) REFERENCES public.dvobject(id);
 ?   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_id;
       public       	   dataverse    false    307    218    3478            ;           2606    17854 #   dataset fk_dataset_thumbnailfile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT fk_dataset_thumbnailfile_id FOREIGN KEY (thumbnailfile_id) REFERENCES public.dvobject(id);
 M   ALTER TABLE ONLY public.dataset DROP CONSTRAINT fk_dataset_thumbnailfile_id;
       public       	   dataverse    false    3478    307    218            �           2606    17504 ?   datasetexternalcitations fk_datasetexternalcitations_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetexternalcitations
    ADD CONSTRAINT fk_datasetexternalcitations_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 i   ALTER TABLE ONLY public.datasetexternalcitations DROP CONSTRAINT fk_datasetexternalcitations_dataset_id;
       public       	   dataverse    false    3478    204    218            g           2606    18074 `   datasetfield_controlledvocabularyvalue fk_datasetfield_controlledvocabularyvalue_datasetfield_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue
    ADD CONSTRAINT fk_datasetfield_controlledvocabularyvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfield(id);
 �   ALTER TABLE ONLY public.datasetfield_controlledvocabularyvalue DROP CONSTRAINT fk_datasetfield_controlledvocabularyvalue_datasetfield_id;
       public       	   dataverse    false    364    251    3565                       2606    17649 0   datasetfield fk_datasetfield_datasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 Z   ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_datasetfieldtype_id;
       public       	   dataverse    false    3791    251    359                       2606    17659 .   datasetfield fk_datasetfield_datasetversion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);
 X   ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_datasetversion_id;
       public       	   dataverse    false    251    3574    254                       2606    17664 ?   datasetfield fk_datasetfield_parentdatasetfieldcompoundvalue_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_parentdatasetfieldcompoundvalue_id FOREIGN KEY (parentdatasetfieldcompoundvalue_id) REFERENCES public.datasetfieldcompoundvalue(id);
 i   ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_parentdatasetfieldcompoundvalue_id;
       public       	   dataverse    false    343    251    3758                       2606    17654 (   datasetfield fk_datasetfield_template_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfield
    ADD CONSTRAINT fk_datasetfield_template_id FOREIGN KEY (template_id) REFERENCES public.template(id);
 R   ALTER TABLE ONLY public.datasetfield DROP CONSTRAINT fk_datasetfield_template_id;
       public       	   dataverse    false    353    251    3778            K           2606    17939 L   datasetfieldcompoundvalue fk_datasetfieldcompoundvalue_parentdatasetfield_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfieldcompoundvalue
    ADD CONSTRAINT fk_datasetfieldcompoundvalue_parentdatasetfield_id FOREIGN KEY (parentdatasetfield_id) REFERENCES public.datasetfield(id);
 v   ALTER TABLE ONLY public.datasetfieldcompoundvalue DROP CONSTRAINT fk_datasetfieldcompoundvalue_parentdatasetfield_id;
       public       	   dataverse    false    3565    343    251            #           2606    17744 D   datasetfielddefaultvalue fk_datasetfielddefaultvalue_datasetfield_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfieldtype(id);
 n   ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_datasetfield_id;
       public       	   dataverse    false    3791    359    280            $           2606    17739 G   datasetfielddefaultvalue fk_datasetfielddefaultvalue_defaultvalueset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_defaultvalueset_id FOREIGN KEY (defaultvalueset_id) REFERENCES public.defaultvalueset(id);
 q   ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_defaultvalueset_id;
       public       	   dataverse    false    283    3631    280            %           2606    17749 V   datasetfielddefaultvalue fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfielddefaultvalue
    ADD CONSTRAINT fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id FOREIGN KEY (parentdatasetfielddefaultvalue_id) REFERENCES public.datasetfielddefaultvalue(id);
 �   ALTER TABLE ONLY public.datasetfielddefaultvalue DROP CONSTRAINT fk_datasetfielddefaultvalue_parentdatasetfielddefaultvalue_id;
       public       	   dataverse    false    280    280    3623            \           2606    18029 5   datasetfieldtype fk_datasetfieldtype_metadatablock_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT fk_datasetfieldtype_metadatablock_id FOREIGN KEY (metadatablock_id) REFERENCES public.metadatablock(id);
 _   ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT fk_datasetfieldtype_metadatablock_id;
       public       	   dataverse    false    359    212    3468            ]           2606    18024 >   datasetfieldtype fk_datasetfieldtype_parentdatasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfieldtype
    ADD CONSTRAINT fk_datasetfieldtype_parentdatasetfieldtype_id FOREIGN KEY (parentdatasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 h   ALTER TABLE ONLY public.datasetfieldtype DROP CONSTRAINT fk_datasetfieldtype_parentdatasetfieldtype_id;
       public       	   dataverse    false    3791    359    359                       2606    17604 6   datasetfieldvalue fk_datasetfieldvalue_datasetfield_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetfieldvalue
    ADD CONSTRAINT fk_datasetfieldvalue_datasetfield_id FOREIGN KEY (datasetfield_id) REFERENCES public.datasetfield(id);
 `   ALTER TABLE ONLY public.datasetfieldvalue DROP CONSTRAINT fk_datasetfieldvalue_datasetfield_id;
       public       	   dataverse    false    3565    237    251            5           2606    17829 =   datasetlinkingdataverse fk_datasetlinkingdataverse_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT fk_datasetlinkingdataverse_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 g   ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT fk_datasetlinkingdataverse_dataset_id;
       public       	   dataverse    false    306    3478    218            6           2606    17834 F   datasetlinkingdataverse fk_datasetlinkingdataverse_linkingdataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetlinkingdataverse
    ADD CONSTRAINT fk_datasetlinkingdataverse_linkingdataverse_id FOREIGN KEY (linkingdataverse_id) REFERENCES public.dvobject(id);
 p   ALTER TABLE ONLY public.datasetlinkingdataverse DROP CONSTRAINT fk_datasetlinkingdataverse_linkingdataverse_id;
       public       	   dataverse    false    218    306    3478            Y           2606    18009 %   datasetlock fk_datasetlock_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT fk_datasetlock_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 O   ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT fk_datasetlock_dataset_id;
       public       	   dataverse    false    218    3478    355            Z           2606    18014 "   datasetlock fk_datasetlock_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetlock
    ADD CONSTRAINT fk_datasetlock_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);
 L   ALTER TABLE ONLY public.datasetlock DROP CONSTRAINT fk_datasetlock_user_id;
       public       	   dataverse    false    285    355    3635                       2606    17684 +   datasetmetrics fk_datasetmetrics_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetmetrics
    ADD CONSTRAINT fk_datasetmetrics_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 U   ALTER TABLE ONLY public.datasetmetrics DROP CONSTRAINT fk_datasetmetrics_dataset_id;
       public       	   dataverse    false    218    258    3478                       2606    17679 +   datasetversion fk_datasetversion_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT fk_datasetversion_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 U   ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT fk_datasetversion_dataset_id;
       public       	   dataverse    false    3478    218    254                       2606    17674 7   datasetversion fk_datasetversion_termsofuseandaccess_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetversion
    ADD CONSTRAINT fk_datasetversion_termsofuseandaccess_id FOREIGN KEY (termsofuseandaccess_id) REFERENCES public.termsofuseandaccess(id);
 a   ALTER TABLE ONLY public.datasetversion DROP CONSTRAINT fk_datasetversion_termsofuseandaccess_id;
       public       	   dataverse    false    3741    254    334            L           2606    17944 =   datasetversionuser fk_datasetversionuser_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT fk_datasetversionuser_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 g   ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT fk_datasetversionuser_authenticateduser_id;
       public       	   dataverse    false    285    345    3635            M           2606    17949 :   datasetversionuser fk_datasetversionuser_datasetversion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datasetversionuser
    ADD CONSTRAINT fk_datasetversionuser_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);
 d   ALTER TABLE ONLY public.datasetversionuser DROP CONSTRAINT fk_datasetversionuser_datasetversion_id;
       public       	   dataverse    false    254    3574    345            (           2606    17764 "   datatable fk_datatable_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datatable
    ADD CONSTRAINT fk_datatable_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 L   ALTER TABLE ONLY public.datatable DROP CONSTRAINT fk_datatable_datafile_id;
       public       	   dataverse    false    218    287    3478            B           2606    17894 )   datavariable fk_datavariable_datatable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.datavariable
    ADD CONSTRAINT fk_datavariable_datatable_id FOREIGN KEY (datatable_id) REFERENCES public.datatable(id);
 S   ALTER TABLE ONLY public.datavariable DROP CONSTRAINT fk_datavariable_datatable_id;
       public       	   dataverse    false    325    287    3641            a           2606    18044 W   dataverse_citationdatasetfieldtypes fk_dataverse_citationdatasetfieldtypes_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes
    ADD CONSTRAINT fk_dataverse_citationdatasetfieldtypes_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 �   ALTER TABLE ONLY public.dataverse_citationdatasetfieldtypes DROP CONSTRAINT fk_dataverse_citationdatasetfieldtypes_dataverse_id;
       public       	   dataverse    false    3478    361    218            �           2606    17559 0   dataverse fk_dataverse_defaultcontributorrole_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_defaultcontributorrole_id FOREIGN KEY (defaultcontributorrole_id) REFERENCES public.dataverserole(id);
 Z   ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_defaultcontributorrole_id;
       public       	   dataverse    false    357    3786    219            �           2606    17549 )   dataverse fk_dataverse_defaulttemplate_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_defaulttemplate_id FOREIGN KEY (defaulttemplate_id) REFERENCES public.template(id);
 S   ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_defaulttemplate_id;
       public       	   dataverse    false    353    219    3778            �           2606    17554    dataverse fk_dataverse_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.dataverse
    ADD CONSTRAINT fk_dataverse_id FOREIGN KEY (id) REFERENCES public.dvobject(id);
 C   ALTER TABLE ONLY public.dataverse DROP CONSTRAINT fk_dataverse_id;
       public       	   dataverse    false    219    218    3478            d           2606    18064 ?   dataverse_metadatablock fk_dataverse_metadatablock_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT fk_dataverse_metadatablock_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 i   ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT fk_dataverse_metadatablock_dataverse_id;
       public       	   dataverse    false    218    3478    363            e           2606    18069 D   dataverse_metadatablock fk_dataverse_metadatablock_metadatablocks_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverse_metadatablock
    ADD CONSTRAINT fk_dataverse_metadatablock_metadatablocks_id FOREIGN KEY (metadatablocks_id) REFERENCES public.metadatablock(id);
 n   ALTER TABLE ONLY public.dataverse_metadatablock DROP CONSTRAINT fk_dataverse_metadatablock_metadatablocks_id;
       public       	   dataverse    false    212    3468    363            @           2606    17884 1   dataversecontact fk_dataversecontact_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversecontact
    ADD CONSTRAINT fk_dataversecontact_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 [   ALTER TABLE ONLY public.dataversecontact DROP CONSTRAINT fk_dataversecontact_dataverse_id;
       public       	   dataverse    false    218    321    3478                       2606    17574 4   dataversefacet fk_dataversefacet_datasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT fk_dataversefacet_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 ^   ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT fk_dataversefacet_datasetfieldtype_id;
       public       	   dataverse    false    3791    359    226                       2606    17579 -   dataversefacet fk_dataversefacet_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefacet
    ADD CONSTRAINT fk_dataversefacet_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 W   ALTER TABLE ONLY public.dataversefacet DROP CONSTRAINT fk_dataversefacet_dataverse_id;
       public       	   dataverse    false    226    3478    218                       2606    17584 E   dataversefeatureddataverse fk_dataversefeatureddataverse_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT fk_dataversefeatureddataverse_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 o   ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT fk_dataversefeatureddataverse_dataverse_id;
       public       	   dataverse    false    230    218    3478                       2606    17589 M   dataversefeatureddataverse fk_dataversefeatureddataverse_featureddataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefeatureddataverse
    ADD CONSTRAINT fk_dataversefeatureddataverse_featureddataverse_id FOREIGN KEY (featureddataverse_id) REFERENCES public.dvobject(id);
 w   ALTER TABLE ONLY public.dataversefeatureddataverse DROP CONSTRAINT fk_dataversefeatureddataverse_featureddataverse_id;
       public       	   dataverse    false    218    230    3478            F           2606    17914 P   dataversefieldtypeinputlevel fk_dataversefieldtypeinputlevel_datasetfieldtype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT fk_dataversefieldtypeinputlevel_datasetfieldtype_id FOREIGN KEY (datasetfieldtype_id) REFERENCES public.datasetfieldtype(id);
 z   ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT fk_dataversefieldtypeinputlevel_datasetfieldtype_id;
       public       	   dataverse    false    359    3791    330            G           2606    17919 I   dataversefieldtypeinputlevel fk_dataversefieldtypeinputlevel_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversefieldtypeinputlevel
    ADD CONSTRAINT fk_dataversefieldtypeinputlevel_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 s   ALTER TABLE ONLY public.dataversefieldtypeinputlevel DROP CONSTRAINT fk_dataversefieldtypeinputlevel_dataverse_id;
       public       	   dataverse    false    218    330    3478            �           2606    17509 C   dataverselinkingdataverse fk_dataverselinkingdataverse_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT fk_dataverselinkingdataverse_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 m   ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT fk_dataverselinkingdataverse_dataverse_id;
       public       	   dataverse    false    3478    218    210            �           2606    17514 J   dataverselinkingdataverse fk_dataverselinkingdataverse_linkingdataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverselinkingdataverse
    ADD CONSTRAINT fk_dataverselinkingdataverse_linkingdataverse_id FOREIGN KEY (linkingdataverse_id) REFERENCES public.dvobject(id);
 t   ALTER TABLE ONLY public.dataverselinkingdataverse DROP CONSTRAINT fk_dataverselinkingdataverse_linkingdataverse_id;
       public       	   dataverse    false    218    210    3478            [           2606    18019 '   dataverserole fk_dataverserole_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataverserole
    ADD CONSTRAINT fk_dataverserole_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);
 Q   ALTER TABLE ONLY public.dataverserole DROP CONSTRAINT fk_dataverserole_owner_id;
       public       	   dataverse    false    218    3478    357            b           2606    18059 C   dataversesubjects fk_dataversesubjects_controlledvocabularyvalue_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT fk_dataversesubjects_controlledvocabularyvalue_id FOREIGN KEY (controlledvocabularyvalue_id) REFERENCES public.controlledvocabularyvalue(id);
 m   ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT fk_dataversesubjects_controlledvocabularyvalue_id;
       public       	   dataverse    false    3676    304    362            c           2606    18054 3   dataversesubjects fk_dataversesubjects_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversesubjects
    ADD CONSTRAINT fk_dataversesubjects_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 ]   ALTER TABLE ONLY public.dataversesubjects DROP CONSTRAINT fk_dataversesubjects_dataverse_id;
       public       	   dataverse    false    3478    218    362            �           2606    17484 -   dataversetheme fk_dataversetheme_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataversetheme
    ADD CONSTRAINT fk_dataversetheme_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 W   ALTER TABLE ONLY public.dataversetheme DROP CONSTRAINT fk_dataversetheme_dataverse_id;
       public       	   dataverse    false    218    3478    199            �           2606    17534    dvobject fk_dvobject_creator_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_creator_id FOREIGN KEY (creator_id) REFERENCES public.authenticateduser(id);
 I   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_creator_id;
       public       	   dataverse    false    218    3635    285            �           2606    17544    dvobject fk_dvobject_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);
 G   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_owner_id;
       public       	   dataverse    false    218    218    3478            �           2606    17539 #   dvobject fk_dvobject_releaseuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dvobject
    ADD CONSTRAINT fk_dvobject_releaseuser_id FOREIGN KEY (releaseuser_id) REFERENCES public.authenticateduser(id);
 M   ALTER TABLE ONLY public.dvobject DROP CONSTRAINT fk_dvobject_releaseuser_id;
       public       	   dataverse    false    285    218    3635            l           2606    18099 S   explicitgroup_authenticateduser fk_explicitgroup_authenticateduser_explicitgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_authenticateduser
    ADD CONSTRAINT fk_explicitgroup_authenticateduser_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);
 }   ALTER TABLE ONLY public.explicitgroup_authenticateduser DROP CONSTRAINT fk_explicitgroup_authenticateduser_explicitgroup_id;
       public       	   dataverse    false    368    274    3614            j           2606    18094 ]   explicitgroup_containedroleassignees fk_explicitgroup_containedroleassignees_explicitgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_containedroleassignees
    ADD CONSTRAINT fk_explicitgroup_containedroleassignees_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);
 �   ALTER TABLE ONLY public.explicitgroup_containedroleassignees DROP CONSTRAINT fk_explicitgroup_containedroleassignees_explicitgroup_id;
       public       	   dataverse    false    3614    274    367            m           2606    18114 U   explicitgroup_explicitgroup fk_explicitgroup_explicitgroup_containedexplicitgroups_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT fk_explicitgroup_explicitgroup_containedexplicitgroups_id FOREIGN KEY (containedexplicitgroups_id) REFERENCES public.explicitgroup(id);
    ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT fk_explicitgroup_explicitgroup_containedexplicitgroups_id;
       public       	   dataverse    false    369    274    3614            n           2606    18109 K   explicitgroup_explicitgroup fk_explicitgroup_explicitgroup_explicitgroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup_explicitgroup
    ADD CONSTRAINT fk_explicitgroup_explicitgroup_explicitgroup_id FOREIGN KEY (explicitgroup_id) REFERENCES public.explicitgroup(id);
 u   ALTER TABLE ONLY public.explicitgroup_explicitgroup DROP CONSTRAINT fk_explicitgroup_explicitgroup_explicitgroup_id;
       public       	   dataverse    false    369    274    3614            "           2606    17734 '   explicitgroup fk_explicitgroup_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.explicitgroup
    ADD CONSTRAINT fk_explicitgroup_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);
 Q   ALTER TABLE ONLY public.explicitgroup DROP CONSTRAINT fk_explicitgroup_owner_id;
       public       	   dataverse    false    3478    274    218            �           2606    17479 4   externaltooltype fk_externaltooltype_externaltool_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.externaltooltype
    ADD CONSTRAINT fk_externaltooltype_externaltool_id FOREIGN KEY (externaltool_id) REFERENCES public.externaltool(id);
 ^   ALTER TABLE ONLY public.externaltooltype DROP CONSTRAINT fk_externaltooltype_externaltool_id;
       public       	   dataverse    false    3621    278    197            p           2606    18129 >   fileaccessrequests fk_fileaccessrequests_authenticated_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fk_fileaccessrequests_authenticated_user_id FOREIGN KEY (authenticated_user_id) REFERENCES public.authenticateduser(id);
 h   ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fk_fileaccessrequests_authenticated_user_id;
       public       	   dataverse    false    3635    371    285            q           2606    18124 4   fileaccessrequests fk_fileaccessrequests_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.fileaccessrequests
    ADD CONSTRAINT fk_fileaccessrequests_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 ^   ALTER TABLE ONLY public.fileaccessrequests DROP CONSTRAINT fk_fileaccessrequests_datafile_id;
       public       	   dataverse    false    371    3478    218                       2606    17704 1   filedownload fk_filedownload_guestbookresponse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filedownload
    ADD CONSTRAINT fk_filedownload_guestbookresponse_id FOREIGN KEY (guestbookresponse_id) REFERENCES public.guestbookresponse(id);
 [   ALTER TABLE ONLY public.filedownload DROP CONSTRAINT fk_filedownload_guestbookresponse_id;
       public       	   dataverse    false    347    3765    263            ,           2606    17789 (   filemetadata fk_filemetadata_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT fk_filemetadata_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 R   ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT fk_filemetadata_datafile_id;
       public       	   dataverse    false    294    218    3478            ^           2606    18039 P   filemetadata_datafilecategory fk_filemetadata_datafilecategory_filecategories_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT fk_filemetadata_datafilecategory_filecategories_id FOREIGN KEY (filecategories_id) REFERENCES public.datafilecategory(id);
 z   ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT fk_filemetadata_datafilecategory_filecategories_id;
       public       	   dataverse    false    3446    360    201            _           2606    18034 O   filemetadata_datafilecategory fk_filemetadata_datafilecategory_filemetadatas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filemetadata_datafilecategory
    ADD CONSTRAINT fk_filemetadata_datafilecategory_filemetadatas_id FOREIGN KEY (filemetadatas_id) REFERENCES public.filemetadata(id);
 y   ALTER TABLE ONLY public.filemetadata_datafilecategory DROP CONSTRAINT fk_filemetadata_datafilecategory_filemetadatas_id;
       public       	   dataverse    false    294    360    3657            -           2606    17784 .   filemetadata fk_filemetadata_datasetversion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filemetadata
    ADD CONSTRAINT fk_filemetadata_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);
 X   ALTER TABLE ONLY public.filemetadata DROP CONSTRAINT fk_filemetadata_datasetversion_id;
       public       	   dataverse    false    254    294    3574            *           2606    17774 Z   foreignmetadatafieldmapping fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id FOREIGN KEY (foreignmetadataformatmapping_id) REFERENCES public.foreignmetadataformatmapping(id);
 �   ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT fk_foreignmetadatafieldmapping_foreignmetadataformatmapping_id;
       public       	   dataverse    false    3618    276    292            +           2606    17779 P   foreignmetadatafieldmapping fk_foreignmetadatafieldmapping_parentfieldmapping_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.foreignmetadatafieldmapping
    ADD CONSTRAINT fk_foreignmetadatafieldmapping_parentfieldmapping_id FOREIGN KEY (parentfieldmapping_id) REFERENCES public.foreignmetadatafieldmapping(id);
 z   ALTER TABLE ONLY public.foreignmetadatafieldmapping DROP CONSTRAINT fk_foreignmetadatafieldmapping_parentfieldmapping_id;
       public       	   dataverse    false    292    292    3650                       2606    17709 #   guestbook fk_guestbook_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbook
    ADD CONSTRAINT fk_guestbook_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 M   ALTER TABLE ONLY public.guestbook DROP CONSTRAINT fk_guestbook_dataverse_id;
       public       	   dataverse    false    267    218    3478            N           2606    17969 ;   guestbookresponse fk_guestbookresponse_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 e   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_authenticateduser_id;
       public       	   dataverse    false    347    3635    285            O           2606    17954 2   guestbookresponse fk_guestbookresponse_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 \   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_datafile_id;
       public       	   dataverse    false    218    347    3478            P           2606    17974 1   guestbookresponse fk_guestbookresponse_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 [   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_dataset_id;
       public       	   dataverse    false    347    218    3478            Q           2606    17959 8   guestbookresponse fk_guestbookresponse_datasetversion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);
 b   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_datasetversion_id;
       public       	   dataverse    false    254    347    3574            R           2606    17964 3   guestbookresponse fk_guestbookresponse_guestbook_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.guestbookresponse
    ADD CONSTRAINT fk_guestbookresponse_guestbook_id FOREIGN KEY (guestbook_id) REFERENCES public.guestbook(id);
 ]   ALTER TABLE ONLY public.guestbookresponse DROP CONSTRAINT fk_guestbookresponse_guestbook_id;
       public       	   dataverse    false    347    267    3596                       2606    17594 1   harvestingclient fk_harvestingclient_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.harvestingclient
    ADD CONSTRAINT fk_harvestingclient_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 [   ALTER TABLE ONLY public.harvestingclient DROP CONSTRAINT fk_harvestingclient_dataverse_id;
       public       	   dataverse    false    3478    232    218            I           2606    17929 C   harvestingdataverseconfig fk_harvestingdataverseconfig_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.harvestingdataverseconfig
    ADD CONSTRAINT fk_harvestingdataverseconfig_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 m   ALTER TABLE ONLY public.harvestingdataverseconfig DROP CONSTRAINT fk_harvestingdataverseconfig_dataverse_id;
       public       	   dataverse    false    218    3478    339            )           2606    17769 (   ingestreport fk_ingestreport_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingestreport
    ADD CONSTRAINT fk_ingestreport_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 R   ALTER TABLE ONLY public.ingestreport DROP CONSTRAINT fk_ingestreport_datafile_id;
       public       	   dataverse    false    289    3478    218            ?           2606    17879 *   ingestrequest fk_ingestrequest_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ingestrequest
    ADD CONSTRAINT fk_ingestrequest_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 T   ALTER TABLE ONLY public.ingestrequest DROP CONSTRAINT fk_ingestrequest_datafile_id;
       public       	   dataverse    false    218    317    3478                       2606    17669    ipv4range fk_ipv4range_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipv4range
    ADD CONSTRAINT fk_ipv4range_owner_id FOREIGN KEY (owner_id) REFERENCES public.persistedglobalgroup(id);
 I   ALTER TABLE ONLY public.ipv4range DROP CONSTRAINT fk_ipv4range_owner_id;
       public       	   dataverse    false    235    252    3540                        2606    17564    ipv6range fk_ipv6range_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ipv6range
    ADD CONSTRAINT fk_ipv6range_owner_id FOREIGN KEY (owner_id) REFERENCES public.persistedglobalgroup(id);
 I   ALTER TABLE ONLY public.ipv6range DROP CONSTRAINT fk_ipv6range_owner_id;
       public       	   dataverse    false    235    220    3540                       2606    17714 0   maplayermetadata fk_maplayermetadata_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.maplayermetadata
    ADD CONSTRAINT fk_maplayermetadata_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 Z   ALTER TABLE ONLY public.maplayermetadata DROP CONSTRAINT fk_maplayermetadata_datafile_id;
       public       	   dataverse    false    3478    218    270                       2606    17719 /   maplayermetadata fk_maplayermetadata_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.maplayermetadata
    ADD CONSTRAINT fk_maplayermetadata_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 Y   ALTER TABLE ONLY public.maplayermetadata DROP CONSTRAINT fk_maplayermetadata_dataset_id;
       public       	   dataverse    false    218    270    3478            �           2606    17519 '   metadatablock fk_metadatablock_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.metadatablock
    ADD CONSTRAINT fk_metadatablock_owner_id FOREIGN KEY (owner_id) REFERENCES public.dvobject(id);
 Q   ALTER TABLE ONLY public.metadatablock DROP CONSTRAINT fk_metadatablock_owner_id;
       public       	   dataverse    false    212    218    3478            �           2606    17529 *   oauth2tokendata fk_oauth2tokendata_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.oauth2tokendata
    ADD CONSTRAINT fk_oauth2tokendata_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);
 T   ALTER TABLE ONLY public.oauth2tokendata DROP CONSTRAINT fk_oauth2tokendata_user_id;
       public       	   dataverse    false    3635    216    285            3           2606    17819 5   passwordresetdata fk_passwordresetdata_builtinuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.passwordresetdata
    ADD CONSTRAINT fk_passwordresetdata_builtinuser_id FOREIGN KEY (builtinuser_id) REFERENCES public.builtinuser(id);
 _   ALTER TABLE ONLY public.passwordresetdata DROP CONSTRAINT fk_passwordresetdata_builtinuser_id;
       public       	   dataverse    false    302    332    3736            &           2606    17759 A   pendingworkflowinvocation fk_pendingworkflowinvocation_dataset_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT fk_pendingworkflowinvocation_dataset_id FOREIGN KEY (dataset_id) REFERENCES public.dvobject(id);
 k   ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT fk_pendingworkflowinvocation_dataset_id;
       public       	   dataverse    false    3478    281    218            '           2606    17754 B   pendingworkflowinvocation fk_pendingworkflowinvocation_workflow_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pendingworkflowinvocation
    ADD CONSTRAINT fk_pendingworkflowinvocation_workflow_id FOREIGN KEY (workflow_id) REFERENCES public.workflow(id);
 l   ALTER TABLE ONLY public.pendingworkflowinvocation DROP CONSTRAINT fk_pendingworkflowinvocation_workflow_id;
       public       	   dataverse    false    206    3458    281            �           2606    17499 3   roleassignment fk_roleassignment_definitionpoint_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT fk_roleassignment_definitionpoint_id FOREIGN KEY (definitionpoint_id) REFERENCES public.dvobject(id);
 ]   ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT fk_roleassignment_definitionpoint_id;
       public       	   dataverse    false    3478    203    218            �           2606    17494 (   roleassignment fk_roleassignment_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.roleassignment
    ADD CONSTRAINT fk_roleassignment_role_id FOREIGN KEY (role_id) REFERENCES public.dataverserole(id);
 R   ALTER TABLE ONLY public.roleassignment DROP CONSTRAINT fk_roleassignment_role_id;
       public       	   dataverse    false    357    3786    203                        2606    17729 %   savedsearch fk_savedsearch_creator_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT fk_savedsearch_creator_id FOREIGN KEY (creator_id) REFERENCES public.authenticateduser(id);
 O   ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT fk_savedsearch_creator_id;
       public       	   dataverse    false    272    285    3635            !           2606    17724 -   savedsearch fk_savedsearch_definitionpoint_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.savedsearch
    ADD CONSTRAINT fk_savedsearch_definitionpoint_id FOREIGN KEY (definitionpoint_id) REFERENCES public.dvobject(id);
 W   ALTER TABLE ONLY public.savedsearch DROP CONSTRAINT fk_savedsearch_definitionpoint_id;
       public       	   dataverse    false    3478    218    272                       2606    17569 ?   savedsearchfilterquery fk_savedsearchfilterquery_savedsearch_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.savedsearchfilterquery
    ADD CONSTRAINT fk_savedsearchfilterquery_savedsearch_id FOREIGN KEY (savedsearch_id) REFERENCES public.savedsearch(id);
 i   ALTER TABLE ONLY public.savedsearchfilterquery DROP CONSTRAINT fk_savedsearchfilterquery_savedsearch_id;
       public       	   dataverse    false    222    3610    272            /           2606    17799 4   summarystatistic fk_summarystatistic_datavariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.summarystatistic
    ADD CONSTRAINT fk_summarystatistic_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);
 ^   ALTER TABLE ONLY public.summarystatistic DROP CONSTRAINT fk_summarystatistic_datavariable_id;
       public       	   dataverse    false    325    298    3716            W           2606    17999 !   template fk_template_dataverse_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.template
    ADD CONSTRAINT fk_template_dataverse_id FOREIGN KEY (dataverse_id) REFERENCES public.dvobject(id);
 K   ALTER TABLE ONLY public.template DROP CONSTRAINT fk_template_dataverse_id;
       public       	   dataverse    false    218    353    3478            X           2606    18004 +   template fk_template_termsofuseandaccess_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.template
    ADD CONSTRAINT fk_template_termsofuseandaccess_id FOREIGN KEY (termsofuseandaccess_id) REFERENCES public.termsofuseandaccess(id);
 U   ALTER TABLE ONLY public.template DROP CONSTRAINT fk_template_termsofuseandaccess_id;
       public       	   dataverse    false    3741    334    353                       2606    17694 1   usernotification fk_usernotification_requestor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT fk_usernotification_requestor_id FOREIGN KEY (requestor_id) REFERENCES public.authenticateduser(id);
 [   ALTER TABLE ONLY public.usernotification DROP CONSTRAINT fk_usernotification_requestor_id;
       public       	   dataverse    false    260    3635    285                       2606    17689 ,   usernotification fk_usernotification_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usernotification
    ADD CONSTRAINT fk_usernotification_user_id FOREIGN KEY (user_id) REFERENCES public.authenticateduser(id);
 V   ALTER TABLE ONLY public.usernotification DROP CONSTRAINT fk_usernotification_user_id;
       public       	   dataverse    false    3635    260    285            r           2606    18139 :   vargroup_datavariable fk_vargroup_datavariable_vargroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT fk_vargroup_datavariable_vargroup_id FOREIGN KEY (vargroup_id) REFERENCES public.vargroup(id);
 d   ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT fk_vargroup_datavariable_vargroup_id;
       public       	   dataverse    false    372    3748    338            s           2606    18134 =   vargroup_datavariable fk_vargroup_datavariable_varsingroup_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vargroup_datavariable
    ADD CONSTRAINT fk_vargroup_datavariable_varsingroup_id FOREIGN KEY (varsingroup_id) REFERENCES public.datavariable(id);
 g   ALTER TABLE ONLY public.vargroup_datavariable DROP CONSTRAINT fk_vargroup_datavariable_varsingroup_id;
       public       	   dataverse    false    325    372    3716            H           2606    17924 $   vargroup fk_vargroup_filemetadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vargroup
    ADD CONSTRAINT fk_vargroup_filemetadata_id FOREIGN KEY (filemetadata_id) REFERENCES public.filemetadata(id);
 N   ALTER TABLE ONLY public.vargroup DROP CONSTRAINT fk_vargroup_filemetadata_id;
       public       	   dataverse    false    294    338    3657            A           2606    17889 4   variablecategory fk_variablecategory_datavariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablecategory
    ADD CONSTRAINT fk_variablecategory_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);
 ^   ALTER TABLE ONLY public.variablecategory DROP CONSTRAINT fk_variablecategory_datavariable_id;
       public       	   dataverse    false    325    323    3716            	           2606    17609 4   variablemetadata fk_variablemetadata_datavariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);
 ^   ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_datavariable_id;
       public       	   dataverse    false    325    239    3716            
           2606    17614 4   variablemetadata fk_variablemetadata_filemetadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_filemetadata_id FOREIGN KEY (filemetadata_id) REFERENCES public.filemetadata(id);
 ^   ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_filemetadata_id;
       public       	   dataverse    false    3657    294    239                       2606    17619 6   variablemetadata fk_variablemetadata_weightvariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablemetadata
    ADD CONSTRAINT fk_variablemetadata_weightvariable_id FOREIGN KEY (weightvariable_id) REFERENCES public.datavariable(id);
 `   ALTER TABLE ONLY public.variablemetadata DROP CONSTRAINT fk_variablemetadata_weightvariable_id;
       public       	   dataverse    false    3716    325    239                       2606    17634 .   variablerange fk_variablerange_datavariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablerange
    ADD CONSTRAINT fk_variablerange_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);
 X   ALTER TABLE ONLY public.variablerange DROP CONSTRAINT fk_variablerange_datavariable_id;
       public       	   dataverse    false    245    3716    325                       2606    17629 6   variablerangeitem fk_variablerangeitem_datavariable_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.variablerangeitem
    ADD CONSTRAINT fk_variablerangeitem_datavariable_id FOREIGN KEY (datavariable_id) REFERENCES public.datavariable(id);
 `   ALTER TABLE ONLY public.variablerangeitem DROP CONSTRAINT fk_variablerangeitem_datavariable_id;
       public       	   dataverse    false    325    3716    243                       2606    17639 7   workflowcomment fk_workflowcomment_authenticateduser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT fk_workflowcomment_authenticateduser_id FOREIGN KEY (authenticateduser_id) REFERENCES public.authenticateduser(id);
 a   ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT fk_workflowcomment_authenticateduser_id;
       public       	   dataverse    false    285    3635    249                       2606    17644 4   workflowcomment fk_workflowcomment_datasetversion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.workflowcomment
    ADD CONSTRAINT fk_workflowcomment_datasetversion_id FOREIGN KEY (datasetversion_id) REFERENCES public.datasetversion(id);
 ^   ALTER TABLE ONLY public.workflowcomment DROP CONSTRAINT fk_workflowcomment_datasetversion_id;
       public       	   dataverse    false    249    254    3574                       2606    17699 .   workflowstepdata fk_workflowstepdata_parent_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.workflowstepdata
    ADD CONSTRAINT fk_workflowstepdata_parent_id FOREIGN KEY (parent_id) REFERENCES public.workflow(id);
 X   ALTER TABLE ONLY public.workflowstepdata DROP CONSTRAINT fk_workflowstepdata_parent_id;
       public       	   dataverse    false    3458    206    262            h           2606    18084 V   workflowstepdata_stepparameters fk_workflowstepdata_stepparameters_workflowstepdata_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.workflowstepdata_stepparameters
    ADD CONSTRAINT fk_workflowstepdata_stepparameters_workflowstepdata_id FOREIGN KEY (workflowstepdata_id) REFERENCES public.workflowstepdata(id);
 �   ALTER TABLE ONLY public.workflowstepdata_stepparameters DROP CONSTRAINT fk_workflowstepdata_stepparameters_workflowstepdata_id;
       public       	   dataverse    false    365    262    3588            i           2606    18089 R   workflowstepdata_stepsettings fk_workflowstepdata_stepsettings_workflowstepdata_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.workflowstepdata_stepsettings
    ADD CONSTRAINT fk_workflowstepdata_stepsettings_workflowstepdata_id FOREIGN KEY (workflowstepdata_id) REFERENCES public.workflowstepdata(id);
 |   ALTER TABLE ONLY public.workflowstepdata_stepsettings DROP CONSTRAINT fk_workflowstepdata_stepsettings_workflowstepdata_id;
       public       	   dataverse    false    3588    262    366            0           2606    17814 7   worldmapauth_token fk_worldmapauth_token_application_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.worldmapauth_token
    ADD CONSTRAINT fk_worldmapauth_token_application_id FOREIGN KEY (application_id) REFERENCES public.worldmapauth_tokentype(id);
 a   ALTER TABLE ONLY public.worldmapauth_token DROP CONSTRAINT fk_worldmapauth_token_application_id;
       public       	   dataverse    false    311    300    3691            1           2606    17809 4   worldmapauth_token fk_worldmapauth_token_datafile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.worldmapauth_token
    ADD CONSTRAINT fk_worldmapauth_token_datafile_id FOREIGN KEY (datafile_id) REFERENCES public.dvobject(id);
 ^   ALTER TABLE ONLY public.worldmapauth_token DROP CONSTRAINT fk_worldmapauth_token_datafile_id;
       public       	   dataverse    false    300    3478    218            2           2606    17804 9   worldmapauth_token fk_worldmapauth_token_dataverseuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.worldmapauth_token
    ADD CONSTRAINT fk_worldmapauth_token_dataverseuser_id FOREIGN KEY (dataverseuser_id) REFERENCES public.authenticateduser(id);
 c   ALTER TABLE ONLY public.worldmapauth_token DROP CONSTRAINT fk_worldmapauth_token_dataverseuser_id;
       public       	   dataverse    false    285    300    3635            o           2606    18119 c   pendingworkflowinvocation_localdata pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid    FK CONSTRAINT     �   ALTER TABLE ONLY public.pendingworkflowinvocation_localdata
    ADD CONSTRAINT pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid FOREIGN KEY (pendingworkflowinvocation_invocationid) REFERENCES public.pendingworkflowinvocation(invocationid);
 �   ALTER TABLE ONLY public.pendingworkflowinvocation_localdata DROP CONSTRAINT pndngwrkflwinvocationlocaldatapndngwrkflwinvocationinvocationid;
       public       	   dataverse    false    370    281    3629            �   �  x��R�n1��_ [���(RڮK��K:zѝ%Ԉc�8�痼��	��Ct8J�I��aߣ$b9s��c�����?���4>m�HH� ��d�n��Uƺ��A	 �4%Q��2
�7�6X�*Q�U�J�3��y��yY�l��j|YGG����,g�80ED
-�U��`�X\���I�Gi�My9���`w��h��<*_�@�Š&u4\7�����1�w	Y�G��B�/ono��?���z���LOө��X�����xw���v��n�k����}�X'���*|<�_�/*]����UH��'�eH��c�5ڜ�j�V�[��.���F�5=�s���	�{��鐴�]r�� �f���-xv�x��jH����(5�xf�va0i����5���7�t�2[���%ዊ_4��f:����:��l�����!G��Z���?ҙ�y�5�l�}��?�V�߃�9      5      x��}�Ǳ���St06�vU��Ğ]�z��e)(ɱ���QW,00�xN��l�>������I􈃡{�L�������2++�*K���bӼ4�L�"8�Z�Pξ���b˧q7u���.���r1_�I.�I�q13z&x/�?[�K���.��U�Yn��^\>�m�<����&����je����Uo�j&���q��^ف��yi�0F
;Jȷ�1N��J�:e�v޳�A���E�nBK�5��QoF@�Q��?��!��.Vɴ��%[3��dTlلci	Z-:H�Ve��R���;;#l��9��Ǵ�y�"y�A��8b4^=#� %�i! DZXƉQ=���[�v
Ғb%bdd)5q��rn�l�8bL/m b�����	�	�/��3��z<�x��٢0M15���7U���䖈���q[?��/�_,���W�	F�E�u�QwYכղ��|՝�M��b���W�M�V�`�/Ьn>>c����k�E���}x3�R㍲�q6����if�Ͳe�kjǑo{������%�A]�>��]������*-��#w�Z�һ��1��Ĥ
3_8�FUV5DZ���8�ٶ���b��j�]���v5Bn,��\�[N�fv��|{>G�۩��Γ���c-y� $��!=�����ԱÐޟ�G�tKo���j�U6VL�$���
��g�4��c�Vޞ��[�>����˛�y��0ؒ|��TR<r�y��X��?˯���~	�ݛ��2�v�����_�o�x��s{^�4!h���b^�������V��B��,��Zv
CY�`3��>vL&��|�����׷�i7��ھy�����4�\�"*|�bh	z]�խ��YQ���E�"�� bt�V���jy���X��[?h�j!ϔ��lue^b}ט��3Ux�|]��7ۺ�z�z1�^<��j{>�� �Y��|���e��O?�����cd O�V�(@�+,U�!�j�M�Z��ξ�[�����\�w6�h�X�������Y��nF[�0�d֑��2�.7(f� ��d��a#�}:� (�]�߭����l\�	�/�ۋ�'Q�rU�~�쳏���	���lrr�������kLkDI9)��C��aֶ��Ye5��U�4ė�`B�J��Ș�>��ӫ����������Y�j��w��/��ʲ��&`�R��QL+9Wy������Ղ�w����;ۡ�(e�>T&E�K����^�!&���L�����q6�t5�^ ���?���)�ҪR �*,��V)��@�Z'�=D������r�ն������u�jƯ�h��� ���F���,�2�k-V�Yu��i�?^��O�|t9�z��g�7�����f�V���;�$�i,Y����0����L�&yT���}��|wI���
�+�Y�������|�»gH4���KV|"(L��r,��,��浻	�H�j����j�Z~�Zog�_�|�Yj0!��<�%�IV4Lђ�l��5���	���K�^}���s���v��C�]%֌��"� ����<w1I�A|^�v�b��]�T�w �bR{�7�����E�5�6h�uV��y�����{�NKE��P�ervi)�OSH�|�W�.�ѷ©��X�f�����v����ȨF��즵�� ��.��d�Z��)I���Ʒ�����+��an�4�u���v��*j5 � <Ψ �:���b�N�2 �Z���~ץ������u�|��}^]\ T���E����O��|������r$�?��]�Y�o�(�A�7E��P]Pp�0AZ{�< ;VH�*F,�������*���T�f?����j�������#����$��BjV+V�N*�Ԡx�����������ׇ���aIs0,���BiYd��ðB~ѦL����z������U�Řv� �Q6�X#9&�y
,�B��b�����������`�i������"(3j��JY��Nk�(4p5�ʄ�&�[-��$�M�'�.j�u���ˮ{��91�OfO���y�d��4�op�|84�/.��z�6d=7��O��q=�V�>�ͦľ^=}!�nj\���v��".�_���O�~��͓��O����]��=Z}2�l~Zm.V�Wg�N0�W������W������7��g_<�����G�S}��j]�d�r�Ȯ������W��������f:��u�W�pQ7�����=������+�n�L>�/���@�+��b���%�p��k��ɶ�(�r=�/�|��|�c[w���9�/���|�U�h/7��/���ȿ���x��#�;_�������\��z �,+�jʒ��0R-G��NGA�B1ь/��� ~9|���ӄR��i�"g�r��BS�@ʺ��$���V�9&�ngR���!�/�9����	F8=�&�'�Y�C�%������j�;�KS�7S�wfgr��EVV뺁������>]�5f��O�7ٜj��f�SL�h�7SP�c�-�V&ma�a)�{���4�����U�Φ�$@��)d&���x�M929�|�d�#�~Z��9�����¶�= Pt�܎3՚-�����}����h�?tX�A��ᰜ�I���?��O\g'+�b��K̸����{����2n����qs8����zs(�~�H�▶` ���v"���p�EȞ+����3�b3�ͦ�ܾ���>����������(��	�9J8{��j�SN���H�;&%�^_���x���%�(J�mA>�&�V�f"PԀ�ʠ�E��ǖJ�i��ß�[KjQw����R��u�k ���`�S���-Ƒeb _1aytE����3�u�`x8CZ���^�ώV�&x`��R�h�-A��6ȴ3�}�9���b��Z_m�ֱ�dm1���j����^��� ��5��8��N��g�,%UYH���>*�'@v��I�2o �W~:� x�|� �8��Av$���Z�|_ F�x�>�!��[!5%��Uޫ`��	7O��M��@��F!d�(l�M�)]��g�5�:�]��͋@�Õ���& ȥQ��0O>kl�Jxg���������o��0~C���(�h!È)�]�¤1D��,�R��d�?�b��=��g��j������^�~}$Z�� ���P��)�\:8�X,�F�U�k�����ɹ�/�wW���rQ�
k�Zw�˚� �������kb�7Ag�Ǯ����Y��/�^R��۞�W?/��^]t���#W4^F��=E���������v��<X��2��_�Ջն�7�E���kI
뺋ێ\_x�7�ç�pj5�c�={��38�e��uO�_�_�:������@-���7�~��o~7�b��CI�фbcc���t�0��իt���\;!� L�^�;�x� 
���d��9��N�_�gp�����k<mȁ��-+��M��r%������P����)R6�A�:g�0! �XQ�%���ݛ��f�xo������H��Ԫ��UC�+�~��������.���*���L���2#.w�&��۰���K�̸�e�^}�Ks�$Z��V�jp��:��s/B�ѳ$I��CPX^B�P��Q�],í�L�͠����J18�\�ܚ��~��J�����wǨ{��@ί6 �QR�$�X"K�YƳ�\%��t��c6����p������L87$���Q>������G�pC��	P�<��.��5WuX�b]�B�t�3,a-PG�:����G��n>���T������V^Xn��n2����y�,\�t�;3�H�]`��!�>fʰ8R�
i�������<���Cc �#Ƒ++����u���ى�ǘ��yƼ��������9^�����f���v��b��ܜ�/7�v�}�|1_��$x��1Û�2`�k��Uڮi[?��y\>�e�=�c`v������i�z�M{_4��;dS,Tʂ�S�זҴ�`�    f����=����I'���~����òR�+�}a���i*,�x�z���1uS#�u5?����65;�S:�a���K���*5�$*��̍�H���#��^d��܉/�[BG"�!����R Hc�,r��V
pK�ʎ߫=��v��������C-%��ZUX�
p�''��֖��?`�����[��2�r�,t��;/Ҵ�Ts�A�wV��w�%��Ȫ��'��(�=���g!u#�p�R��$am]踄u�baN%��O�7v��^�,��R�w%�J)���XLb�D�K61�w������߯����w	voe-%�r}r�} �x+#~/|*W3�8@��<�C�1,�p�L
�X�\�C��K�x�2'rT�{���p�j��FM���t�N�IU���{B�D�𚕲�pi�)�>v��nGyr���(]Cǟ<G��0m,p�PH`clY��m��b@U&u�tdY��5q� s �E��p���k�OS�P�"�JT��JOE�|��8\�P�m��˿n_^�1���v�Qc���)<^`"5pn��^�f�H�g����f������Q>�����!|{Z��B]�Ҹ�JsVDPLSB��`�S��Q�q�5��{X(F4q�IY%#�M�:�P�U���Y��LO���乺'tdk�'kU��sߚC����Pһ ��pG���p��;=ԘT�(j�%I��B�R��T̕�j	f&�I�c�����d���3��j������H��-S���+�n���Q!��㇮���dŐe�2�a�t���V`a&\z79��wt����6`깥����b���t�PM����3P
�#bMۚ*P�����p�e���Ck*�t;rU�7o[���W���0MX�4��F�NI���y�<G;Ԉ���d�gus���3����׫�}mk�)�':��T���f���
_���#���J�@^�������פ髏��o���`����}M�Gl��,���Ci��C��fe��~q(�D�-�x�ZR�g��~P�w��}�Ü�E��V&�prXQ�dL�CJIP>ܔ��qF�A��rEF2���b�XM�lB,���,��.e7�P��`بz3LŴ�;6j:���.1W�����Ǜ�c�wf8�0`�����u��VFj����îD�`�� \�A�I
Qzn���FkF`�m�KUY"S��bЗ��&0p>�h���AZ����c���$�'%�+Ӏ�,�JёlbѦ�)��wlt�vw��mq��r�2��XS����'���#m��Y=mR�@��CbҞ�o�֮W�A�_�����<�v�_���]�׋
?b?��P��{Eh�\�^����P5���\���9_%���w�3�΂kq�6Qi�(�%/pC�Y����6k��@�]ɶ	g^�^��D��d�;<�U Z���V���R,��5*/-���Ӛ�@w.ʉ���J��\�65�"��Ѳ��d����>���~8�{�|��� LՒtqt�H,�R�j�9�J���6:8l�x�(����᢫JJU��Ƚ��y�5ˊj�e�S�t�co?�����؏$n�ʋ�F��(��`�%K����Z&_��x'���C�!�P�c2ZG{���D���n:�)Q��Tal���:B?�� J��נ�x��u�b����Ū�}ۈ;qlT���"-��Ab/W��.V��ꋸ�"I�I�^,15R�e����~S�n	ɆɥHE��T3����d���l��x7b�f=aA��p��c�{��KwhP!�\u���ńg�w�����
ׇ�ۯT�4�ı��؈Ht��s2��$дp}Oa����I/$�VÄ1�P��LU68�����t�!Nxr蚇N��@�#ev4�TfL�V�ܵ���y�Fx�E'��wj��B�,�|� �P��&P66g���Z���dhL��tM���;=}*u���\���Q`!�BN��.�x��g~��0��#S�ܼ����P18��e�UEO�&V��Gc���ʎ2�ٹ�H�m�CO�k�Ū���"9,'嚨�/��w������۽��.����M��v3'��|�S�э��!�f�/�܇���t�>����E\�T���y��}����gXw��:�}r~�~7�B�G�2A��$\�#�3�`�@G ��p��W�L8���ٕ�S��;��P����R0gd�L�Е��jXTM�i�� Sm�]	�-�J�T�9(��tiՕ����x]�!?�G.A�%�m���
&����t�4�j1ܶC�O	����Z�4S �5�c2c��H��h���,S(?�O���Tʈ�'<��K�R@O��i�2J6R���I�14�j]k��i��@�����
9"ע�d��]�"��Q�}.ͤ�̴�p��v�1x�Fⅹi�]���dR`�
+��9���<��ԣ��zdmI�`_�P^&V�4*y[��G����
[�8�JGjȒ�',��
���)�Y��
�3e���Wt���Fn��RD�;R�c�G���	������sy�f;��Zm7���Dȃm2t8�y �.7#Ga9�~�N��/�[}(ա9'0~ֆ�T1j8M��jm2��㓤��DC��H���,@G#�A)�
�7��&i���P[5>0dZ+')IR��Lz�0"��U��	�l-� 2*A�W�l�b���k�tЏ�}�R�B���(���æj0���K�Ƃw��^)�(,@O��k���e.T%UT���ջ�"���{��������D��9Ri�_�d3�@94mYp	�� �r�#�eT$�ׂ ��kڴ���m�r���T)2�� �^�e�6r�|uc���S�م�vQ-x���0�M���uus�e3���S	�я�2[�r�P�%�!�K�&��Րd��L���p|�u��XA�~T�@b4�t���ʳ@;�ȾpZ����đ&o��(��Й��=g�p!3�jR�y��gc�8Ul�6V3ԟ�C5�Gcu8R&����O�3m,���@�X&����`p�,���A�l��ʓ�E+H*J���#EHW���?�T����N9���q��UQdø0)q�E�X�r]`,��gX�FhӇ�W���TѱBѢb�S�k�Y�2!����ȸ~�����,��Y�[Bx��U[o�����^�HIJ�(��bj�f�N��+t���ߴH[�	FO9�'�0��oe. x�5ܒ�;�r�ڎh<\��2.��C��.�+��Q���x�SV�ّ�{1�;e����0j]*y�"%�Ԕae)a����
bºNה���j��xhjkR��fs���,Ea]�Z�������Vѝn����Yz1rELq>i��"҂N0�ca��
��$Ty����cҩ�w��GO;Q��ؑ�1�c������R:�
��)�-�en8�󞰑Jvf8��xhNř%\�f<�łú���cg�,C�i��������')&�����8�{=�Qi�:3]�ecVRc&Z�����NT��v2�߇CƷĎ謔���A1 ��f��-6����eF���~���=ƨS֍�p%a�I��[c���h���-�Z�PzK��a�[�y��j�
Ŝ��/3�*Y��O�e	~�=�e)N�q O���H���L	��<�ae',�� %?��7����T�N`*ú��1��S��y�l��"�.$M�#�Ƀ�tkL�Le� �L�S^h9P��S]Q;�F���"�B��
s�)�
>��V��pm�;�uG����O0�:�z�Qj])g�U��h����T����'<OzMYp�	�ȡ�yk��а�ٳD��F��>�e~T`q�Nw���:�ҏ�쩜F��#t����:�I+mXs`@��B�t����\��0��Z���kBG��[��X(�1-����I�EQ��g�a����JU��ބ�%��x/8dSQjuc���y }!+p��jR�O�I�����r�٬���9��J�TX�K��Z��N W  �	�Z��3'^����C!-	 ǚ��R=Td�ͱ(e����x��v��lM*c"ԉn*�B#��l��
� AF.FP�u�(2)u�AA�4_���|Cx ��\�B�3��8����v�����!����~/�V6��a�j�W��w��]���m������������c���mы��^���7�0M��͌m�ￌKX��=��_~�`{�J�9	^�n\���NX�����r��9]+�����Ң�>ָ�V3p�M��=�}�z�{���<��H�q�J{�r�L[�X,V�%�p`J��y�njGSM��T��ad/�dU�U��l�@�Y��ařh5]�S�ǩpO�8�D/��6���'����\�h]1(�����|ȁV�1���dq��O��$�4�����x�q���زh�-��ST
J�U�<�)=��S��7�9���2�w�x�<�dI�1o�pcb`Iy

+����G��hU�5"�:�S�|���mD��k�-še�[k`J�(�^�T��7�i�פ��_�i,��;+�f�wt�B|���n�f�\}d�;���(��re�����ҚFw�ct'��!�{�M�]�������zЙJs�0U��e����|��H�^q�Qm�l�Mrw��OJU��Ƈ!�wP��τ탛���k=��@����y�6 V�`Q]��GW���1�	E�(��J�L��i��h�V�$�X)���]̠�(�7QI�x{;R�L��6���)�c���+�h@s��d���}��Q�XrtU�;��*�BZ�g.x�Se��̨�΄�V��=� �P�6r*]�Kb�e�	��w��L�^��8��Z��628�e��}Z:�ɣ`
�|��+��������$��B���9TGף4��Ғa!X@cnM�%s-�a�x=ٟӚܜϿэ�o(�u�tV;�j����?/��^\�<az0�?�S*���7�mYR�pY�VT���'���S�w�1ε���̊$�v��!� �����4VR,\�*��*W�2����h�p=�,�*�KΙ�j �N,jX�1Hc�&<��C��0���	L�Kڴ�&rf��|�=>r�K��LI���%������Yǡ/L�S�?��,��Q�	����m�)dg���#��+h�+���)��ê�>X;���C�S݋}���,�N��(��DT�����Z/ڵ�.ix�0�N���W	)�޼ׂ.��;vf�7rF��C,���վ��w�z���7"j�'����J|�u�K7u�U5�$�m����$���N�ؒ�]��<8y�I7�:��t��:7����-����ʩ5����L���ua���s��wN
��Ԋ�	ӯ��̀��?����ns�      ~      x������ � �         L   x�m��� �7���\��	��������w�k��T��6N�l��/�����]��p]����p�uw&��E�V{      F   q   x�3�tI,I,K-*N��/J�4202�50�52S00�25�2�г41�L��r�M����K,�/�K����C�����P���!n�`hde`jeb�gnf�阒��%Kv��b���� �+�      d   &   x�3�L*��)���LI,I,K-*NuL�r�b���� ��	�      K   U   x�K*��)���,�t��KK2R�J2�K2�����2SR�89]K�R���<�JR��sP�*���*��''�p��qqq 0)&       u   ]   x�3�T1JT14PIwNq+�3*�(�7�+�M�0�3��.���6J-�v
N6�
�N��7I-q��7�4�LI,I,K-*NuL�������� K��      �      x������ � �      ^      x������ � �      �   L   x�U��� �s��`���ҋ���=6}ǇKE+���[0�&F�����9�lk����2�W.a��{x��@O!��K|      p   *  x�U�]k�0���������.#um�*��X��i�1A�P��~��-�|����M�e]��B �(ľC!qj;��0������S��H5�8���uQ#v�A}�N]{v�O:�X ��Y�hh0Y��FnO#�n=�#ja�c�#�"C�%w%�{���K�� b�1�H`��	Xh�
��*�m�͒g��G��r�d��%ơ�LM��!�?9ʝ(���ŅPc����з"�b�šE��ߑ������fێ����.n5�&�W�jl�x��eĻ
M����-˳x�~����5f�      Y      x��}�n#I��9�)��Y@f7�s�&���ĠT��!�S�R���E�ԭ�s~��\�[�������yp�R�s�������m�/�ȢSp�c���J���N�!Y�f���"0��I�RᇲS�ӊ���7K�*[�� �n�)9]H'im��NX�j��%�B��N�閜v��h3C�?��٤�9�[v:+� �#��T�n��D�m��X����Q��� ��$ké9݊���t%|��S�����4��ӭ:���b�`�@j��4�n�����4�n��)z��-�Z)��tk��,�Z��^?�O_�);�-Bdr�J������E���UB]0�хXH5L��ǏN��C��i��]�$�̃s�/��B:w�Q��R�u��A��,B��	�d#�%h�Y�㡈��P�$�z��8{�*��t!W5j�	�w��&�R.��]��&��l�8�e��@N����ECv�{Po�W�l�́w��w;Q�E�N��C�B(�6�V�
��Sj���-���N�\d���ߠN��$Ŋ�2��4�2��MjhG������V�R��r���*E*mì�-�D�MM�f�NL��*eQ��$Ə+�\m�D�2���ܨ�^���
6y�ywj�`ome�.:��������U�ŏ��_<���cj��u��Z����N����P-R�}oԗ�u=�ZrU��o����P×#�R�ݖJը��`m�u*�[D�,��ݺ\��N]i�٭�~̫Z��n}��G��$B*��G#W%v���]YJ��h�W>|�*�I+���u�}��CGe�T�T�b����:'��$�:�i������6e�ZO&IU�^�9k��~��(��z6���>
�$����9_Yf��'��@^����[&��c=��m,�.�>��A�����n��<��"��!�yHHB�,MN�iGI>�����c�FJ(:p�����LX�}�i���k���[?��˹;0���_Gq		�['�`](Ś% ���������*}m�xr�S�h8p.�dOКP�1�No�4�)p�ڟ&VFԉ���,9p0����-8G���uŁ_��ٷ�H��w�'��λ+�a���)o�C�f�m����8��h�.���� �-78�����M*�*��K$bNl�E��
=�7��0::?��v��2���׽L�F�&H�Pu�<���e)�����������X������\b�-��÷b4�&����W��R`Ap'�%���~X#�ś���t��$6����JN��%��4P̛N�8a����ŌF�����,� Ǆq^���|;{ĺ­���,������`��OD�Q !�a�fJD��Ю���2�00�#��A&"�d�xX��K:�=3"r�Y;{��r�q>I06�'��p�����9A.��oJ��� �K�Qw������X(���=9}��H���ңB!¨��������Zf�����G9�a�~���]N��虰4�-�l6�Ruk��")S�T���Y����AN�9�W�=���X���y�6�a]pW���1�ex���;M~w6;?����akp]��]��{V
8��9Z�Saf	&����5��(6Ve0�����|~`f�O���~t?g�I�"�`$,_�B݁�r�w$QcI`c�>�{\��Z"̰I{:����y9�`}����4��*��d�T�φ���`�pl�HW�>ta��n�ܽ��3�9ĕ^q��8��=+�D��w��9ph�^���Q����@�?�)����DKA$�KS
���
��g#5�Wl������]+5f���G��>������������kL����X��!���9��{j�f��]��A�9g�Ű��sa�r�g�.6�"�(O��B��T�L�1���y��-ͽ�>J�yd�0H!1{`�0���ޙ?0�@�ݪێ׿��P�b�L$wG�bݣ��v�ztW��71�Q%:&�,�({�M&�0ƋE��Mp�!��aO$m�`&.�3&�^�?a=,>�_��$�(���+�q�U�&T%R��>�M錓�h �O:k0p�Kg¼�>`̒z
a�2��߭�ܜ1�G�N�}@M]4��L��<:a�t�h=Y��_��0A�`�3�r��`�t��u�d�F�wHL�#E�2,�>+���d�X�|��`�t��4K��fM'�xh�1R�����O������:�:�*x��q�ɩG�[٧r{�8Z��o�#���M��\�c
�'[�	c�[u<$��)���%����t/}�����<,3om|�0I�H�`�p���j�'@��xa��?*	cd�C��X6��"�{mͬ��s=�w/J�bK�8ĭ${�C}l��@���p1G�@X��ӹ:�7�g���aIK-�[_��#G���T*�� �jfB�"%aT�ff������ә�ʷmcDLbf�C̠�D��y�,�7�\�KI��G�R0:�Ic�>cc�3��ǵf�"w�E>Q$z��י%�w�$�,]�3��r?�~�< �Q9�ӯh���a�t�h(�v��<2�T�̕֙}ӑ�`�3���|�D@�����.�{��¨���<��~ٗ�Q0񹉗�c�Lzn���HS�[c�o�h���������un������4�,�g�HwR�2�o��&��=�ab�F_���0��;J��$�y�a�t���*Jl�0&:_��~I���/Q��$�i�/��[��������B���o��N�^#A	����ׇm���Q �*�u�~+�&;��HN�ˆ�7a���ѐ�;��8�����r� s�	!T���kdA�N�%��o� I��sm?�ϖ�nY6�H������n�uϯ��n�EuB��~>Kh'9W]��$椆l��|�6��{_?S�կ��T�}��ܗ�(Ԓn�1Y�n�PRE7�&|�������k}6J��㴏��۲\C0*�ԯ�|faQ�m�?�|v!����D1S?5.�-Yaa��m�	b#�:u{��3�=ߪvǨ���B�&~6�S>10D�v���ZY���({2��-z�"(@;���BA���҉L���2��2���c�/�ֻ3�w�YȠ�8l�KM'���ͺ�y֢�� m����^�I���à�Dt�`�����ҊÀ�A��3���;�욄R���o�{k�N,L�ѷ��!�W�TH��%~Fӛ�mvϐ+<5�:+_U���� f�o�@����)�Bg��bIO2��N����gc����SHh�;pw�{;|�3��$|�]�Hg�;�BE�!|t�ݮYG"����yK�;t���5:օ;�]�jy)�!�C'��j��?���|�UY�rg���XFð,�щ���e�;����/��v�w�6t�fM�_H��Ȫ��J�
���Nuc�]F�@��6g����[d���8�v�T	M�z0g?|����h@��2��|gq��O��d@��d�T��TJ*��~,�洊 ~��[���B?ra�
(!X����8��h�u]@��`�/�2\&C�E��P��@(��qX�R��d��7�����{EA$�}��;
��������m��T˗w��U�����N(&�SRM���վsu&.�{X/s!!6� �b��`�G]�wH���{����P\b)�0ʶ*7GdԵ^���uj�~hE+�BdP@b��pk"����|jp��ި�p�����w�N	M��rS;���p�d�Y���;�W�.�3��p+��6n'Hw�t�����6K�.	BڃK�G�e(�����	��)���D���أzJ�+>я�`���S'�\�,�����P���#�E'�#-�<)���D?��RRIa	�{:�jYa���z��S���RU�'���2�a��S/s������1�̤�Y�g�-�P��8`��v~��0���래h��$/�Ô�9�yq������V���
I(���"�G?:<���UE�RRMᇁA~k������Id�(�����\��hhV=    �v�(Z� ��r|M�ʄy���8��n8@�J.+�0�6�)��7��r����=DX�O/�H�,�ے����B>e���o:�D|��>�/ub=e������DB8e��B%�ä� ���)�h܉��)�#S��K�e��>��t�!�7�BNl&rS�q��4������B�FȆ	�0X�j���4���_��"��\h����5IP���>˶OL�)Q� *��x�X�!��%�$HNf|]�Dv��-�f+
B�gƙ\C�r���i�v&��0��	��(�E0��PB�H�4����T�0��on�u�面B���sV!���g�|"ԲB��x�P*�>%o����(�!V�0�E��(|<�>+nj�#�j(����*�oj.�wJj*1^�Ǩ�a~3�2��r�{J����BȆ���[k�	�0ՙ�[lF��C���a�3Q�h?��0����>���Ä��v˷�Jo(
1	�6[��M� ���
!L��F�H��
�&6D�4b)��@ĵos�
��2{TZE=��_��ab3�7.B�)1��?�͞��p��s���a���34kUf9z�ʄ�b>��dw��@�f�l��%O�lV�YME.T�s�ڃL#����4j9� [�q�az�tu<���mq���qG���&��h�B��5�9�m�<�F��I�~2	5QU
�����u	ot��1���f�Z�;��E��\��QS��-W�:��P&\��]��s)H+$�F̬<�[�_�(�i
@L���ހ6�Ly|ô�bK%B�*5	��Rށi�BТ�C�y�A`��ĚC��e�N��xQ��ٵ�<�P�Ю��ꍦC(�ް��~Z�
�/����S�i	[A/�9Q��h1���RJbǋw�o��p���#I��( 2ᔵ*�JІ���{&���O�v��AE�������閊V��9�-H��}+��=��]�����³6E�_�o�^'1A��$�{��LlY��=�R�c&���ٗ�f0��E�
�4�eA��}#��Dm���Ӏ�ҡ�d�H���`Y���G�{h�Y�V
T�|�b,}U�,���V�
�f3�%��Tb1;#F��p�X�2��K���o��� ˎ���C̊y�,äjOṉ5;7{	�M��"�:j8n�͎ՠ�To01�M�+�>���Zoa����-Mc�������&��q��;9w4 �b�vg�@%��)?(�g�����lu�<Ĝ���KB�D��/��	1�#��tKZ�I!fr��uo�hGq<偲�ٝ������2@Y��~�c
2[Y���� �Y9@�c{
cN��X�gM|��e�ï�[�v~	����7��&�HA���c�Co�1���0�� ��Q�d)r��7��bK�����,�8[[�o�d�ySr�q&���H��ˊ�T-�i�Ov���X�e�ujDW�d��8�+[�<�ŏ��'[�`},��'�I��$X��6� c7Zdrr�HF2�D��)���Ε�g�r­ch�ĶL藸��H�u�Ԣ@�WPeĀZrI���=����N����y�Ӓ*���6��e�<�Rk��{ԫ�,�Spz�y�P(2�頷ni~�ܒ�c<bi���<<^�v˅��;�^l0�N�Bj+Ζ;�@��Ψӟw`���W4=����&�����zƳ��t��y�ˑ���
�fi�JXR�v^��)`꘶"=���i�e�6��@
�O�f1��z�����E8�yW�n)9����gvX���3�|��͜Y�s�wv�M�y���>i�v�y��ڢ�Uʸ�����xؚ~�M=�D�]M���<`��s�fz����C��l�?���5s�#n��ΟS.U���sI�f����|з�T�Ǵ���ЮyB���O��~��r1�=�IX�$\��-�u����Z��E¼M���tg9y����x�sv���}Oc�'���,�0o�G��rcv	�M��CǸ���!�p�r��.����u���1V�6P�v�Z�>Z����"�~`��<�$k{_Η�������#�]9n>iy^���?I���Sr=�V�3�[cM�ޯȡ�|j��no�	u{�J(�K�U�ޕ�`�	�q'�]����Ӟ�5��I�Y
�����
���b㧜�eQ�YZN��W?�<jO��T����Zp�-�O�� ~�j�L�UaJ�����?W��"�h+/�@���]$V�����-����d<�J������� �?�J�/,���M�څ���A��^���~hI~E~��3��h�i"�?�@���t��caZ�����4�����J��n痽Q����1'%*0%�jx�O>w������`O���^��1�X���[R�!G�V�#1��Zu����0Z��/T:�S�-y��:����	;���+��wQB��l�jbby�	�B��=�Լ���f���x�����e��
�ʀ,$���[f�,��إ�t��}.,y( ���Lǳ^4�r����nt�K}���	a,��cz��߼�|�����ÿ�zw	�.������a�J�G}�0=�5n���'V�F�3�M�3kM/{�^W����a��B��;-����Iq���#8"�:��lqouX|����
�l��b���9�tn��3���ׁ~f��h�^�%�'�Ǳ��{^�a�}����H�q<�
O,�ٓ�t@�kWZ��}��@�F�a�7��F�}$��������f^�#��gm1�n��#�>!kp����M�s[Ք pby��<5��:>�/^��K�\��,�Q�������:��_��i�čO���4T�A��7!��1���l��Ů�G+@��`S���]��6����E�u������=���.��h�
B.۰���F�
л�Yz	����*�Cü����b�/����H�t\x�\���#�א5_A-n�o���!���B��0K�5bK�[�~��r;��n�k2=�z�c���Gzh��ر1�G'>��/u,�S���݊�}@H^o	��F�B��O־��`^���X~��G�Lx�}(&��rm�s?��7lQ
���,�8lS�Q�u��<{�K89��2l�g?V;_NN�4��ޟ���⿏�n��x�b���w��ML��t?����I����.㦸�6�xX^�����������{͹�f�c�5{��8���1y'ō�|�{��bD�/�2�?� ��_���)���|f��1�����"<O�f0�W�w�7��Yϛ�=D�A���b��c��t_ɓ�Tޠ<|���<�&�x���Qb�������N����Ķ^��e�W�޿��t�"d���l���r�\����ٲS�"i�F�h{V�s�
�]6�݇#�T=J��X�_�蛻إH�XO�L�<_�IZ��2��^H�6��&L��a�^  ��6�Mc:i�7�Ϸ���Ӝ-a�oٚ��#�j�&[�&J�O
���5���ܧc�C&zs�|0wl�B7�}Wgj�J�$�s��`|���D�.�d~˂XP�%�u~�W:9x�.m>��~�4��ˎ����bˣ'29}���,������dK�ꞿ��<C[��ۯ�Q�<Z[.X���ϔ�-󱰷��C�o ����mY�11��^��~����&/��V���+�^嵼�n��vx��Q(t�?��O&
�[r���S8����3ۙ]����#'��#����r*N�-ϛw�;��t%��c��Й�"rf��0��iuu\�t�b�zB�()G���O%KBR�c��J��X�,��a���?!)���0g����:,����s��H��br N��(&����D��br��V��f�MzV�[���#'�k��y�?߄�ݮUj�M��|rֻVi�7���M���Z�kk>_��\\�p��TEΉת�3���Rrb�Fg|,U��ߔ�3�5:���{2r�.�L����?�
�\���@(�_���m���V�s3ϻ���i-�l���K���t�`P�Ɓ>9� �  ��|�3>9���\��g_��u7������q��wv�;{�[�s����;W;Z{K���[s�nUu��������*'�sqr����f.�o�"���ձ�������%$��[_�=������u�$)�n��}k��N�7��{^����/�*�tqy��q�h�m9�oE������I�n��vښ__�/fX��|��l6������{��'�9o@N��&�y	+�\~����=5�s>9�O�r�������|�k�n�|)#U���}��և�T
�|Gm�mK)e�y��Wۖ
��|����� �;�p��):hM&�~�;o���o��$�X_��F;��T�:����B?�ڄ�u_;�ި��x-R�7	)��,�fñd��t%[�2\yUʝ�ĉ�֤��E?1�*���Hiݾ�?.�,���滋;��?�b!եbߎ7���al��L@j%( ��|2����ӂ�@������Qu��h������w�b7���_��o���s��H���LzӋ� �����uS<�"����^mJ*3ZsD�֨5��{�	q�E`���mm�cr~��h͙��G�����ܱ?��9��s�[�Y�b0��i��~cV��&�V�,��׫�G��m��&�-�T��&�_h��}����4t=���h� �JrI��Z)9h�^4kV�!#����q.��d֦��_���R��zO����{���-q�X�#���wmH�������KG�����ց�8�I}��o�+�:|�~�5�&�3hMo�y�SW�uG��\P�n��&�M/\��z�H�{!��#-E-V��Y\�#)U/���Ŭ7�7$��'_�b��^�%���%��t��FNgǊ����"�$�V�P��m>���m8@xjo��I�����.)�4{�r�>�sJeM��lܾqدv����ɕ��͞Y�k����	�G���T��M[���7X�,�#��	w���ޒ����n�#��6y�� %;�;Z�m��}��>����������ܱ|t;��Y�)OHL~�����dJGB����(H�<�����7$���b�� �?�D��L�^�B"���b��Ok��Fl����\�V���zR*�gN7�>)�%�ɹ����H�{!�!)�J���>���둤^�&�����+Y
��k��x:q.�d'���<R�D���ݝ0�F߿ۛR�t9��Cs.7<��!eN�7��ּ��`��$*����w{~��R5<���0	�0�Z�ߢ>���^N�U3/ĥJ�=8����Ԋ����+޴e��Ҏ�P��Μ�{��O��+�I��Uo�� i�Ʈ��Q���;�n�E���7PZ��a���juߏN{���OH�����k��z�mmy�A��t-]|���V��hI׾��ek:�_5���a�\��>f�i���]�h�Zv� &��n�X�Mj�؋&��Mm�Z|�]n��M����G�=������֧�G3������_k��f�=g�)�����zNn�N��Y/i}�����.�V���X���������S-s�M��ր�OBp�m����G^��t$bS�� ���]-�#���O����*i��e-z�93?�d��;aGv�lV���O�d���V��tj� ��w�Z�7�_�
w�kMy����Z<L��L��C
"�H=���IH��z��'���x�w�w�3\��A�z��uZ�	��;^�]��ݻ	r�篬�~���7ɋИ�-��]��&`8��wصp�E�D���~v��%	2۷�`�rw��í����ƞܚ�U�o�h�!e��v_wq�)�?�kEKOZ���7�^�+Z�x"��{��mo�崙._�?�x�NkZ y��A)���@;������)�����)q	�"��Zʜ�t�]z�[K(�̶dK"u+"�.5�]�3ka��?�/��d6�,ͯ�p���T�{YrI<3��a���"�RTK5OD_>��gj9������|�<�t<��"�v�ޝKhI(,��9k����1\P�jY�0\V,�e�K�D呂Cf�p�<^ ���8�GXWz��1np����ݦ���1����ԫZ�*�PM�<�0�iL�	��?�:׽�u.~}}�§k�Ƨ��>�Ҍ��J3�7 �Ak��=�a�<O���vt\[~������n;̰k�M�?���G���������h!�Л)�1L�!��[��ڡw�90>���-'PӺ�Q�����V5-�%�0��Fm'h���*�[,��[��5��������q
42R%q�Y	�����A�I�(X߇�!�jZ�;��O�s��x�;���S��_�x�J�x�p~�/-���:��~�dD�G���E��'���@�/gYg����'�����tx�Z������/;
Q�}bNqo�P�����j�18g��Xȼ5�;�LS�u"�]O�H]˓O/;gr�h���˹�Qƒ���Ե���u���ÿ���:O{���35O���Z�<w�z�4Z���kճ�C��u<���ZF]˟��5��ͯ������O�Џ��w��z]ˤ�1���ъœrR��M��K�c)��R˦)�@>���ۼ'���gQ�����/n:�l�Ĵ�VjG���XC������jn}�GoY�(}�G���s��z�ܑ$7C]�h.��u����Z~�F�c�Ni-�zz��#يdӯ��nR��"�����܋���mj�q�0��h�oJk������TE�~[��e�%�|��["��9���Ye��T�iF ����R��z/�7�����q�,��m�����?��b����fq͠}g�"�ŵ�%��:}a������E�|�7�n_ؑh��H�_�j=κ���Qk����D���x�K���D*���A�/���K�Y����������>j��#�t� ��/B�i��������&�=���4�,Y~�d�O^�������B ���;O,]~)`��_����O,X�u�*���_��w/B��XDq|B�_X��+���ئ���<֜I�%����8����;F~�B*優�%l\�%��	,�[fG])��
�&M���Xc�̃�ǣ,�
l̷��W"lŲ�����Q|�ג�� ���(���=���C[��ɴ�����C\�Tg�}Q���_@7C����� (q������@��Ά];������N�hg�$�����[��A�K��rA~{Ǚb����?��-����kK���);�	�L~���"���rr/E�B��D����f��J~�����b��/�;�k�;<qحS.��%8Z$�x��ېrHd�\L<�)�h����7�@FuP����͍~E�+2P,��|�b�Aձ���RF캖\�#�T�<�6�<�S�a�ݙ'�v�`����K%d������o�J���v<��ĺ�7�H�jCětJ�,]Kf�m���EGt��UЋ{�~l��?����(�ګ      2      x������ � �            x������ � �      �      x������ � �      Q      x������ � �      �      x������ � �      q      x������ � �      �      x������ � �      b      x������ � �      \   d   x�uλ�0�:����M�Cd���?H\$����^�2�;�u:�'�'PV��U�&-�Lv�e���?�ɜj ;Ē��bM� �� � ���܉�P~MG      �      x������ � �      $   v	  x�UYK��8[�f*�ۗ����1A���^H&�����2׳�������+s?�$x������`yZ1P+q}�n���o2��pMx<�g�������e��3Mu}�L�ߗ�	���������ݞ����<��lw�of#�t��fz~���;�Og��	�`5�6,Z��ZB#\4�gL��2��|����\�ם2K��"�p�̛�T���o�aۭ�i�%�xy����S�@7]4�?}XX΅��qW�~������#d/��.�s�"p�}n�z/�Z/ܾ\��@018_W>g���`u�«���X>�\4l�.2��o,z�^�}��1���'�
q��|qm�|��G_]�P}Q��5�7���g��\�$�n�<���!�m��4��J�Z@/}�"zI"j��i�"�8������Xp�����o�azBDn�L�w0�r`��(��J-8k��;����BX1\�8�O2�i����t���'$-�L}���'x ���O�@��[$�B���CvP��Ď/hZxC��b���Тp�r�+�&L�w�Ux@���#��l������϶N�t�ӷđU'q1�0��l&���X(�Y{�#ӶJ��!�8� �3�h�(�g?���)�Z���W������ L�	�H2�x[�i� �.n/$,��^0��gӚ�w�a�M-A��+��iT�w�v�'w��m�wb|[��D������Jp��	F��wmwak��\x�-5�4�/9�XXXz�vH�-���;�q��\�	���MA�E_��dki��>��</_�Y�|g�H�<t�'�K�m��N�'�o�2��-e�����ټ�t�%͞�|(��F����95a���%'c_g� ,u�ц�%�;��8?:���� ��(��x$��S�J�qq��m=P%�g��Q�0��	�6$��j���\V|�Ybm[8&��7��������8r~_Oɐ�{"p����ׁ|��蛘׊��E�E,n��ؑ��=���ƽ�DI�*](ܬ�H�n�vz&8�a��a	��L�A=!��G#��itb ��g��)���'B"X$b�,1�	2��1�Ag��*��D0T����,S1C:�	ު��F����JL�����=��q�"��Y[�<�Kܽ��x��LLs�X���qP߉���H�>��}��F%n�P��a��.aK�	.(Z�.��_�kX�o����~���)1,��
+˗=��\�9<K�Z��,v�r����2���F�V�$��"�T�LF�4,�X"E}�/���ĉֆOٮk�Ac�`���A	��.�(̂¼u_������n�ղAe`��Bb��x�.FD�&������J�_{\�F%qaa%!\ Ya(+aף���@�0�ׄ����eu?�Ή����F��g\�\q�+�����+H�`��\(b1E�G�LV�
�^�?�
�PD��E4�E�������r_jcѣ���q\N)�w���Q��{�$�;=���^����3N�b����"�qw�`P��b�f��+�P	w(^x@�¬��ܫ�%��Kx���Mw�9�L3��ͫd�#R��m"∌�����H��?"#�������_v��+��� #kq�W���T���.�Mx3�D
����G���-����44�ID�$"n3�g�vI� ��׵��CwE^��r��(%'���`o�輸C����&���ݢܐ��oum��q�ZD4*T���"��O���D��A�f��`�W���f~��kf�W��د�2��^�xRP2�>�b�>��Z���Ae�\�5���	,���mE�5����X"��ߌ&�����é>�6+	bX����{<��|£FD��}N��ìu�Y�
�H�2�	\�^��`�5^���t(?�$q�+��ep\�?�^���3����l��E��%<\��r���^#bs�D����%�wD~��C��ƣ��q�̦ܦ_��@���fٟ/F��?����8I�뗟�"O$q��G�Wi2�<�DD�#f�z\�@��尶�ȘŮ0�]at���q��b1�yXᗧ?�;���K�i�(���fd��bj�xi�&�~cMpq�DЍ~b��pd��߸g�E�(X=࿺r���J���+4�G�1��G��
�oS�����p=�l�і>�F�6��_������]�Y�Ga���fQ!�n�p��L������D�}A���^ܢy
�_`e}�ӈ�5޹�"��-"�D>�<܇�7/=p�n�^�G�ϧ�Z�c���hC�Tᕮ��`�Gr�u��+�����O��F
{�#���"��/2�<nDx���o�"ʓV��?����v�      �   �  x�-SK�e!�e��^������@�e������U�U������g��jC��Xm��������g�{œ��6�dEn�Ik����¹K'.*�����r��a�줈��Ś�����D�|DQ8��4I��e夋��QW�o�>�A���v�����?
.&�0`�/N�'Γ<���l��:E�,��~^|��M�i�Kc�i���6��R5���d��2�2����T��}�����r�;����L={k}6�sR=�z�\��M��n�d/M��-V�~��{�0af�ÆA�#L��a��n�Y�k�s��j�l�����C�6l<���|y@��X�cU�W��~y�*�Xq�����;�:ftPӨ�I6ld���Lx��j4{+���.�f@g[���f�;B�F��2Ö��߇��G��?�R8]�O��Z�jf��      �   =  x�%�ˍDA��`F�r����\2��D����+��P���F:�]D6{S/b��ˆĦ�-���ې,��1�@oI�A���pk�)�@�����=�`0%8��j�8a� ,		;��6M؆�(8��p�k�k�k�4���<ۜ��6Ex~fSA<�"�`%8��pB"�l{��y�4�h�c�{̤y��g��|*aGF�љ]2��[���;��AQ��?��(��tE����ͳ#�'Q4O�h�F�9�	�
-�F+a�gh'�̱��3�^����&(��6��3��̩c�8A1Aح$8�� ~7�q�      A      x������ � �      �      x��=ko�ȵ��_Ad?�dٲ,?�Q����['Nm�(i$��H-I�Q}�sx��+���m����9�9s�3���v��Q�T����y��Q5u�U\ť������9���C�����Z�<x��U5���`�(�N^LFÃ���_��}�ML��iu�����.���lKAdQ�QT�Q<���x�ETVq墡+�8ɢ4�%� ɳ2�3�w��@�*��b�X�[�z	�����b���90�g�<K�Q�Ʈ(ܨ�8�Y�{J�(�G5G�D��������Q�.��k��=�?�� ʮp}$�6�.zJ�3�[.�����h�2��)��?ݰ��ݠL*׉���q4*x���7?�yUq1q��>�8{|�G~��A�G�����@���'H\	ԕé��L_RVE2X �j�<�m��J�I��T�H�������u��@s-��ׅ���˪d���M㪾/��Qez�u&�6R?Z�H�����
7ρy����b6p�^��-�C���}��E/^����>��
D�D��}<s(��eC+�v��Q�Q��a_�F ]� �U����;��i2`����sX\%�'����8]��^��,�3����n��FP�	��h�<��EB(�}ĸ�� ��~.�ֵFJ�T�/�i^ �|�q��8yQ���(7đG��|�X�8+��G�,�*~&���0z�%��e��z-���;ġ�	���c��B�5� �����?���B��j�x<N����e��`���y[͝�`�ޥ���!ɢ%��ۻ��vt}���~�P��O��N0�Z����@�"y֜�r�͆��P�q<�jK~"E �l�>(�$%O�hZOXF��ێ�!H���1���"���Z�Y�v7�.�������6^�`u�;D�H���K� ���J]�f�_�%=eI����kV@����l?���Ϭ"|~/X�ȉA�탛24�R(wQ�	oV&�{P��g�9�&�2X�y/�o޼���A,�`�	�|� �7;��T� �����+�`TU����5v�)^�o��@���@�N�D�W4�\�c��:M�{`PKԩ���ۿ���i���>���t�e��3p}JX������%�0�rr�@-�ti�h��}B��_g�dJSV.������P�,�@M�?�����ƛ�S�p�"xp�_�L�� �W�9m���g�.�r
XU�α�[=疒�ne�q���sI\��"G�P�������w�WW��A{u�А	�*.n�����g����*G�|���!h�an89����$/�;g9Q��d��i��)�*�[r��Z�c�����I�W��ue����L�;��0�}M�8Ĉ|U�[3G��f�|�
�"Wv��J�jh�0r�IPR�$%�%��̹Od���a�%�5'>.H06Յ	�rAk� 送��a<X���%�p�rTV$S�{(����
R:�AH�~|��46����S;z����>�r*ԟ�`�X��\ ���8b-\�h@D�����>���w��9�8񭌿�N���B�]|G>�T��h���	P��}(�����E����DCF��W���Z��	"��&H��j�FQ���K/���0�����R�2�iƧQ�q��N�E�7�}���eC���~�]"5*Ġ�s��և�(��Z	p���=���2��i��s���A*����z��E>�A���L
I�s)E��P��X�g_\��U<`�x�<��Gk�ݬ����-@���������@t��"��c%9T�ͅ�5�X5pn��ʥ���^nD6@��.ss���1d��%�?�d/�6��ڝ�6�h��J��eq7������ޞ��m�z>3#]_= |���"��|�r��|Q݆�i;2�ahQ]\�*"� �nX��E�=�]E��I����${T�r���y<q���P�!����~��b8�tV�0R������_ʜ���*����\�L�I&��ř��9{�����(��Q��O2���x�|Q��<��Y.�����qX�xfW�����"�C�m�#
8��p��r�z�/��NT�QZ��3'�7H�8&��G�$Cfr��g{ ���=�0�&��^�I��/3u&���L�n��&�"��b�0$�O�$Bs�S&��"��靊P.P�6���c���gz';=e뗲>B۔ �4���� 1�8��:@PB��2WT@�|�D���oGח�����V�2@1{k1;>�����6ϓ�*���sߤ�@��̶�d�s�u^ �:�:�<E�;�74�0I�̔DX���;�%�㗔>�0�Ua
���Nz�a]Mi�ai>��2���@g���x8'�r���UPQ[q���%|<�7A�W�I2U��&QYk��)��������^����߽:����� �J�c�z�3g�*��^���yF���y$?�!E�^B"��r)`��a��-<�F�.&Ҽ����r�i��z�GU�c��(��ߛ��� ڔ��R[Ϭt��y�>g���֓���@�x�u�C8�#k_��M�(B��l�/\Bx)�٤�e񄮔��I)!�0���������'����\j�qĤd�SK�Ǣ�Υ��\�1/������MţF4���Ά�F�a��s��x������I���s�D���58|�=DD5�c�.�u���,��������kM�`4�˟�h��&k"O�H�2��f9��t�ؖ��K����Y~��*{�|Mn$�Re�EnT�8��lB�[R|����ȕ�$��-�޺��>�-�s��w
.��.�l�.(���#shF�'s�S��}I�]R�:�^�ں2wVW���|�nZ�Pyd��z�����2�%O� �bM�a���~bd��&� [�V|7���"x���8p��hv�V}83�ov�V�z�'��������֕C�i�ɓ���9gn�_�ϭ����t$L��^���zu>QLj�9��V�S���� 6{q�R[IVQ��f�Ӓ�y�9��jֹ�B�����@�V#u���H�c]�c"|�v�? ��:P�φT ��6��z���k0��X@�@�[�-��~1�%@Y�QM/?$3bi�SQ�(q�u��6@Uo@x�R�!`w\�-U�Ji�j�Z-ٹ#��c8��W�|�@�%���DeK�q��9���b�"-s����r��}��Ik��!y�8�\"��0ҧk�%��Rz%�O�h���Wg�w�kj�j�6�����
�
k��j�b���b��W�Ӥ�'ha�6}$��R[����oǓn�n��}�CL�Tw��Ğ�(#m����F�6��|q�O�vN�_�e���{�����O�VQ0G%��5�NI ��[��œ[�l]V.�������dR�	�!/�I�=
r밅� ������3� ΘE������PV�S�^MAc��T �pI�P{��r9��`�	�gGZ�7�H��_m^j���4��16a@�?(]�T�~PPwfIĠ��0E�d~N|d+q�^������S���&�=Rp��q��-��7f�Z��!��s��HI�s�����(�|,�a۾�Q0\h����9��v��t7�B���율���~΅t.���qh[��� ����if>F�ۼ�A@�E��T�6���V=��|\=c뎶(�x7(�o^�#��TS���s���� {K��o��Q;�m)���6����/Z��H����S��Τ)���Ur0��a��[C��5�Ȗ>�賋+��k�\^|'��R�d�i�@�AM���uT3��[hѷ�|,w
$�?�1<Z�P�����+}[�ۑ�cC@�mB�s�HG�\@���x�8)0,��&�9�Bѝ�l^�^��JJз* �܎o}s�N��v��H3� �˶֣��Tr�]��Q�0qB-�9BBY\� �V��̔�i�����q��_\�W�&�~[�3C�*pl����#;���5hxo��e�t���hh�s�#[z��1    U�U?)�4�������}C7C�״�z��,X1o^�%�J͉�1f.��&Ot:�J0�>1�Ï,��/���a��Z�Lӓ3$@ШĄ�{k.8	�1B�.�\(k��ΈH���Ս;3Y��D��I���d�	z����we�o��l����܆i���{�5Yh�z�Y�'�$�蘨D1�D?�����x�܃�[p�J�8�ޅ���'� �轇6��G�}�8�qO8D����3�~����?�l�W3 \�Z��!~��&��E������u\7�'D�XP�SS]�:��W#��捳�OI�RRl6�Z���L|��W��?e��1BGO��=�c0D�8�0�[v�A�����-�������-q�����y��yPw���3��?����e(
.Fށ��T� �Y�r�j��ӯ�dM��M15�� H1�C���:����K�W��a]C�㒬�5��Kg�{슈F�}8;b&���C��=����P�1�����HP@ƚ��t9�BB�	_Ҩ�C-�'��L���S(�C��r���o�DWd����0i�5V�F.��ϋ�)NayC��k�	+b0wwb?/swfr�ѥ�5�?y�ݳ��a��"�Hߨ�DT^�7�U6,�|Q���BQ�iM�Y�LM���jD�D�V\@�hc�j����oS}.D2�jY�5��J���HAX�y�4$Z���Q���Mȼ��	�!�<�Z���:��K�dց8e�2�ү�͈E7��� ����X���� ��M�t1♓�]"Nd�lѣ\�L!f%o��]T�]��W�(74���fѺ�h���p��?W�ug.Pl
e͌Q��+%��jIY��v|!|m�~Qb�$��Ce{ޕi1��|�>�/ҵ��$}��;Td6~<w�����$,�{��'��nu@b����?^�U�e��	ﵣ�����Sb_6%"��=u�ǣ%�9�*M�$l�p��;�G�}��b���w�3`�h�R��	Ӟ���7������j���g(��̱B��@�Ǚ�faF�
n]K�*�^�{R�	�!6>q���@.�U����:�wE��	�!��i)NgL��/]
����~eB�y.�ckp�u�E��Pf�#�<u��N���������zbj�u�۵QJ�5� |�`ݗ�����9I���+r�F��hL^Z|,)�P��iNy�a��f��	�a�3�����_����pX^���%#��T��
�yG�[Rޓ� e�^����H�f�W����O@C,֯`|��,�1"�	��1��4�'����`��C���ܩlӞ���M�R.M|��O�M�< $����1��,���E�Wg����^]j� ݚ m���U-��|�F����kqY�]$��@3�ᘦ�q~]`!���@V|8���zDP�{���4�4x[��bV|�=d>q��dX�smJN�pҥR8�h,�N�.^*��l�Ν�[Z&�r>kF�p��E\' m.J���5�т���U�0�\��{��k}�夅���YT�j<�q  ���6V�#���\Ƨ�	[w� Y��E�0@]������=���������7A;@Q�	�T�`�Ow���}���Ƅnu�6��� vuS��46Ð�����)���!�`φXJ�{����h7`Mۍ�$I��=h�%��[�k����D��>YW}�����z�sP�Tf�h����+�
! 3-/ٹ�jE�վ��^}|G>ra2�ͬ���}w�)�*�Ց�$�~�mɳ���ֽ�)p�UMDO��4����o(ĩ�G�4W�.N\
u;]�s`Ka7�	wg�:��4�PC{����^���T̝�y�`��Vn�%�Ӝ�����١����a&|��-ۛN�zh�:�=��j�3���I&f b�@�����Ϋ��,�XNǒ7�mbN�Bkg�3�J��S9á�Z�;'#�6@�S"���VKk�5#�8U ��͒�r�>��Kl������b�N�S�y�$��y5�E��.�7$Hͤ�]�k����;����E߰zŸ����+�,Ċ5��F�Y��!�ؓʱm�8kh�\�E��Ć�	��
���YB|�'s�n�>ý��jVtJ�0�=Q�z�2u���6�0��#��s�h�])H�gO�;��r�ki��b�9Es�9��V����aK��6�ޒ����$�w�C�NP��؂2	y��D��+�k��%G���\:wJ��4L9�����H`���q;����B�'qŽ�6���EL�?�M����ũ��=VhQ������U�r �f��z[ ��H��� R�;��ZP��7��(@i�Nt��ᒊ�d*9����d�8��Ĭ��M�ō�ƍ��KPq�*���u�̹!0�u|�'�P�'�8���i�c�B(��c��%��z|)ݬ�Ἠ�"�}���k���F�P���Z���t���<
"�Q�@�� ��͒T�a�53����M���@��{|BL����s0��e�n��/z٤�����Ymi��2����eK�Pq��~��-�B�n����!zX-qv�s����<<79	���N��6��{�r��Ov�E�Bk��x��rx��3L�g��,��h���f�����&����?��
�������I	�,����$\�Q::qR�i���U��tӎ�,��S�q�Rx4HbJ��s��G�3,�����Z���!o4����Ckm߅�	Ɛ�6���!�ԉ�N1:n͕>'�h�9���9�p�*k�Tt�j�����|�fu�5�{���xj�i�ھ������AWc�UcTr��Tթ�W��]>������Y�fP-85qYlx4UnB21�2��3���װ�9~j@j	��$5�+��5��TU �|��^�@��Fܱ.:s�#p�W=^�s.��$�gd�o�%����D�.�Z"�߽������z|g��1�c��${hq�U���q:�'�sPs��.��˕p��N��K:��7�u*����\T���:���F�����1h����`�f+�&�F���i��/���`p@���m�0f�-�sq�� u��W�����2��Y�BK���ꉨ_�� cg�5Q������~e�����ky��!��A�Ѽ#��1X�M �T�B9��Ixf�+%�V5�K�o~T��T�0ڝ��4)A�۞m��Z��Y^@�O���&���;�Vo��ݪ��~����M|~��H˳m���O-�/��
���!����փ�����S��"ᤛE�u{�c�ZgS]b}�w���=�,Ȟ���;�&b�ڸC	³�@po�q�9�\ �݈��w��)�k[�l��F�~&�U����̬�խ��@�"N^�H�vbi�J��Ƽ�J֟�u�ؐ�+�E�)a�./Z���L-J�0"�FZ�ENK͘Z�VW���`���M��bZ���c��ZNlom6cG�����A��!О1͝��s`#mLƆ�sWK.|/�_c˷�.��=TZ^^�<.�9]��."��A�w��`W���ľ���l�U�+����˴������y�k{.!�zhN�"�g�^F����p���SN���ţ$�=�b�Z^�}�+�~���0�G%�v���8�5��"dp[u�^6�~3���'
6�U�T��P�)�[ �O�������D�3�N|�UՉ�������x��i��aѮ?M�1�0��(R,�[!�3��~+u	�H|c�������7�F?6ql�s��l`��Q�խ�!��o?�{�F�٧�a���,���B���!��u�zq�Cyv(`�ߵ�����-�C�w9ݍ�dQ�[:�ط`��|}=0o����w{����aZr�Di��B&αՄ���8$��<K8p���s�#�-Ss��������:����
>�'��e{,9ǫ�K�eXd�<Y'H�_����+43/�U�'*�����u�Ӊ���Y�o�F�P��~����9V�$Un8�8)�9 �I� ]  ������h�a��E/��%��bSPB�9�{����AiN����s��gq���&�Y��	�4�w��c.ؿ.�x����/��u�@��&��?���l��lPrt�t暚FvȡϮ�R�r9[�����^�5�?�M�d�'���`�X�n�S��&������G �v&��L�_���˟��"vٖH=y��z`m>aX��^Еb���^��� �$zk�`���*r&�Q;�XT�Y��l���Y�4=>���0~�|)�����:OJ!���a1�3��i��#�PF%�5�+%z`a-x���`=d��6��?B���b�*����M���S�*:&�b�\�c���oS�g�"�h��7�x�o���5zj�私 i�'��6���]fO+��?����qe���4[���`��=p<Yk�O7�n�.�t�4va���-ĕ�+�ˈN��
.�ͻ�yD��3���m��� ���^�l�f��/��Kr7�h)���m �o���dO�t6ʔ���O��v���bI���6���B�u*��Xc��m�m�4��\�w���m;��	�����x�-ž�� ��#m�읽���֚�g��ϛ;>�j�'�2��#|%�%�;�����`�*�(\����֌��&K�qɚ��l�|k��|��/��|��2�� B��h�I���6l�Ԩ@�g���q-���n��֊��M>�54��6�l���/�Kcp��ntk=G�ud�������6���m��
R�[��6��lˈ:Kn�R2�Z����m��ڏ��6�_qV�<zrG|���m\��y����}k����������o�)�         #  x��[�r��}��v�Ia��D/�h�����D�*���p܅�l ,%���!�����^1d^�
��b�}���=#�<y�բ�C5�|�W}���!k�j���P��e�W�2��u�����PoVUV7�z懶��M5��>�6�9�����W]_�y��U�Р�Y�N�L������n~�~܍Kt�j�y�:�-�m�H�K��7:��y�2��bI�Ku��i�R]L�2�D��/E.�_/�٪j�2�2��hM,dDb��n���
��w�c�6�-R��V�%֥�d�mھ��d����t�|;��*�bt���*�om{v�m�65:1IWϖ��cH@��m=�!��֯�sMj�K�'E����UR��K�����q�F�EJ�yMb�n�Z��"���7u;�3�4BCJ�Z�("s��͗����<�ԩ5�L6ˇ��K����H�̝�h�s�.��b[���Z��\�L �pS�j�J
���Ou���
b@$�H��7K�4��
8�I�9��v��}3�h��:��-6f�.O�"ځ-ʉa�X�����`6�W��!���ͼ�F�W������d��f�ݴ�*�T����e�鳡��6�u�6t.0�'?����R6,��f{K����^�f��>��Ȯ��ظN�'���i)N���i=�"���)w.-����ii"F�:��u����&صlIB������hd����ݡ|�����ހ��ؠ_g�ph_g��&$1�Gl%�ԑZn�Q�����OmW��\���?��İ�kʝR�ЅH��3(�I�c'���Cs�:R�Nk?�ںA�Pݒ9�i�Ed���1B��x��	�RGB��9(uq)���Ϥ�Y��HbM�,|��7�����T�jVo���\�]='���u��EY�/Ѝ�����T���Q��X�gن����g��j��öC��z>,��jC�tgAS"���Ɏ�Di�Bd��S�o`�Y�D�d�-�G�-��qgw��l<�,'A�(��}6<g�Rӛ���k�K���K��A%�'[ *Y>�DA���8\���VJB�(��>_��+%q�O�&sj4OI�C�t=G����	�("s�#��S�T0r�'������󮽨N����_~�w��컷�e��� w�|p_����V PpTq6����c���|���_Z��y֍��)��(D�A���H�4(Q��Ħ�&�٬F�F��l�U������ZQ�������o}���8�-W�~�%�8�+ت<�k��-��U�!8h]�F�T?m�
^AO�["x�ƆE{yv��Y��[6�0Q�"������8�&z�����b���H`nog{ �.H�ç���]�KOB��ʯi|�?}�7N> &־�R�~
��,��}�ݢ���v��~�������Dj��ܯPTa�&<C��^]*�S�b�2�Aći"�=iQe�G~*8;��,>�n�|O��m�=�&a�[�H�u�JO��.q����s.j�	eI��\�q ?6�dv��Rc<�X�9�R;a���(X�v/�)��wup@�p��\�5��<��%AN���(!�"~LH���H�D�#�@��yn�����,���	�,��'��D�(8��g�}p��o�M RO�x{~�>V�>�����f���k�(��V!��>ʵ�!�H��r贌ւ�D�֦]���i�Q^�3p���O�D)�����oW��<k�= ��s���,���%ǩ�8\�8̫6焱�M�z�q�J)٠I<�n����}�:*#?�	R�5�N߄f�2F|	���99	L�,S���.�TҡE@���@��s���.�+*��5D��CJ���܄�ڠ��g�\t��"��ou3W-�������҇"??&��`k�N
�����j�
��������/�"��:� n6�Ə����
0mR$�ix YF#��P�<+;)`$)erR�m�x/ɤ.3De�L��29-���q���`O��+�e�a��h(�S�I�3�)9y�%��1���+�������~�$:
i�Dn�cr(p��i����Wr�|0ǒ�:����F�i5�h\×lZ$,�}�4�H�?o������ �jt�Ѓ��6p��EH����:�G�<W�/CЁ����
���z
r4r|��X́k�W�c8��hD��4�P{��)PKӲ�*�]<�҈�Ҍ��Iδ�>A>JήvE�jV�K�`8:���+줮C�şz����K�������!>N4����7�:��u���׾Z�B���ۇvKeM�4A#���
	L��A4���}�hhr˜/��-�;������NSԱQ\��ow����4ͤ5y5K��ʖ�p� ����d,���ކ[��� �]��\Mj
c)�@K��zq�\�z���=)/����#e�ښB0P���b�1��F��=��z|螺�JF��ڋW���_乹ȝS�b�ǋ � VF�+���^E1��C�P�ed������QH]S��)l1~A� t8n�z[��1�$ۏW qG=�G��pz�
������|�]�|�7 |U����R�	�H�0s,+]I�����=s�a�� ��]u(ƴ/���˪<\�j�L�� ����(`E�5y��h7ˇ���B$@�v��fKj<��1^@k�L����*��Q�u{�<E�<��"/o�`��o
�8 s��j|ih|��:f������H��t^(Q𑶴d_8�>��L-��h'����H�"䣦x����ǀ>�SQDO ����4���v��Q z��,$��8���xC	k�AJ����-m�M����&|4���� 8,�Z?�����.�p�BF#�V|!�2NNЫ�@�3���ZaXn��;q��<9��<�l�l2�_|�-D��]��O�Bibĥ)�F��6Xbvt	mrO��4���2���I��A��kȝ��B U�8����#�n vCO�D\D���q�i0����(�^�����Ks�h�3Wp��t�q`����W7��
��!p�����Q������01�I���A�0���oL���6l�pM�SYV�MW��y2b ���g-�b�1�5���[�i�oI]O����R��]"�f��%nc�SqV�0v����O#�6�(/_�����οZU�j,�g`��6��W�ƕ�?%�,uqk��.�]
b���*�@�g?V_��ݗ��i�r�j� �Z���&�5 X��r�f��@��"n�m�Tk�5>�K��K@�$�/��gU�~������cQA�0Sƙ!S�gV����M`�Mo2z��~ �@j`
��X�� �*���! 2��1�]Ю���e!�A?��4�����"\�Ad�&�C�̽�
k�P��9}H8���I�iNh��:l^��x�=ݳp:����C���#Kg�~��h�����q��ţ���G�@�Z\�`V�8^ܵp�Z�����U]�U~OC�͉ �W�x�����Z/`.�����Je�3�>�B�8�j�p��Z��U(�ƙ�o0�A�����b����6���a�͗�1���q+�8T"����&+h*�A,����]W�g�A��g�N����fH{(��*�wXC]q��ьb#�,���;�m%ģ�������U�c�ǋ�V����O_*Z�&��>�*O@���l��#K/����G�8� J�0��>�4�*�`�FA"���&�I�w%VӰ���<G���/#�`䭭U$!R*��E����� r����xuk5��<yam��(��|$M=�VM�cᱲ���e����E�Q      [      x������ � �      �      x������ � �      +      x������ � �      '   �  x���KnB1E��*� V�8�tTu@;���Q���'N����(�r��~���^��$-f� �Qj����������r���]qx!Ӄ�bLq(�9�d7�:Yvq*K-�IoYǨb��� ��Ȼi�M��UEV���\�<���}#���1aH��=�c���|�a�1�G�������U�t��^�8r�	9���L�0����-0�`ʹ#E�(<cL��P�O�g�F?1l�B�Z�aph>~�Q�:#���dO�}�������Ġ�d�X�T��٤��E6�^���l6kπ&;"HOs���d��V
h�n��`햝E6[�<@���84�X��m���9�@�Z���W�[,��d���o�C�|�fZ[�9�A&�8��� �{�UY      �   �   x�e��!��RE�D���_GpOYs�t�d�����_�2/'.\J���Qh8�fr�����,K6itZ\5F	X=Z�(M�s�&a�,5��������H ��Z#��AxF���m�a!�ɽ �Ӷ+�����S�z�QjNv�?7	~z����p�:\�$9b��E��}�Xt�|��j;��E҇���M\�      H      x������ � �      n      x������ � �         �   x�}�MNA��=����{�u�f�!!%]h'2E��Yx!��v.f5t����ש����s7yr��a������a9�n�����}��G�I��S7��/����'�%
�h#g㍉����,�fCTZ�A�&���yv& �$��|����Y/��3�]vʾ�>Q3�S0�R�YWV�䩗�-�x9���l]m�u�v��dQ�mn���(����K�&A���4����I�(�_���      �      x������ � �      �   /   x��� 0��7�D���s�뜑�0�̛/,llt\�#�� L      j   E   x�3�,��/q�M����K,�/�K���4�4�2�LI,I,K-*NŔ6�2�'m�e�Oڄ���)W� �f2a         ,   x�3�4�42�4�2�4���Ɯ�@��������� h�            x������ � �      s      x������ � �      �      x������ � �      �   =  x���=o�0���W��
��$t�ej��|����~m�Vi�vA����}d�x#��J�j�}��f��!�k�V/� g�u���c�-91��"$���UdO�_���Q�Jj��|��B>�!�k[JakX)���fۀ\å��3�l���d��m��k48��^�Z�����S�x
�`��:����?���3��6��]����W��j=��w�]��p�,*Rq
�~��j]M*���7�u�����ȃ��ְk���|y���<>q^z��8�j�[W�b�]�����I�e���@=�I�| ��      �      x�3�44�21z\\\ �      �      x������ � �      D      x������ � �      y      x������ � �         �  x����N1@�7_��x���[J
RS����jA���TP�����lֳY%O�c�_��n��������cwѡFs��ݑ�dc"���'�?���K��
b�N�F1�/��x�	&��(@�	��
BS��b�tۥ�9"�52
�(�v�ge�Yr�
�8��M�qT�F1c���!r3X;&�Bc?�������j�h�w�q���z�l���dTtq����8l�w��:qRژ����N�����s�G�� �⼋�h��p}�����ަI�W>�q<$0	H�ӽ��Oݯ��2	������sZ���zD�l��R"�w���Ǡ��Y�������D67�^�q��7b��yI�v�D�
V\�V���-hf��`�������RZXΉ����>�\�6�j�~:�����Q�zѶ�U[<h��
�[�yj�l[to.���:�-I�Nuy++^�w`f!Z��(dH����e]��4nr��Z��y~ry�����IF���b���,��LqB�-(�m%���dɀjV��\�C9�v��>������-�1!q��b>�fUѴ�h�BU��j�U��w��\�]~��]�8t-��$��&aT!4c�|aZ����`�W�rUU�����!����*R9��ݗ��;ɕ���̮��A�ߛC:��e`��e�䅭d�6,\=�秪k���-:_���n���4��{�eM~���������/�=����Q��/��Vl��j���\a.      ;      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      ?      x������ � �      �      x������ � �      �      x������ � �      0      x������ � �      O      x������ � �      �      x������ � �      �     x��V�n�8}���?@���(
l�-P�(��b�
r�,dɕd����uͼ�5�9:3�9��������zZ��F߆ί߽#�������׏x��+���:�a�D0!)*���7J��q`���i%l8'JqI��CO��]��~����/�X��ޮ܌?Zb���Y�J4�G Y��b�6��Vt��0�_��a��S?<Ѷ��v<3�őͭ�Ć
`��D�Y.8��"���IyW�������)-pq���0����"�8$2RE���j��bȌ~�4�q�5�FhU�f�%<΄����a������k���\�I��qg"�m�\GE��&b��-H:�0�f7�)��3����j���)eN"/�P�Bp�u~q�$����=�;:�t�����z��fu���V8(v���h��>�(&l�^�n�ᒅ@Wj�!�a΂.I��/��ؙV8�Œh�4����>��?���qG?<�����nK��A�j�@�����Sr���q���Ϣ��߫�y4�ܗ�U���`J�580�fU��@D/��oz�w������` �'�Te�0)E�)J*��9x�I��(���}�M������ݱm/f3�a7�T8��&�bE4ǹ�*�xt��Z�����H�܀�x{~�tށ��on�&9���� KS}�^:�(pՆj� ���,����bxј�b���@�H�rL	x{�^Π�B�{ya��at��ܬt�y�����ڹYH�fl���q?�C��ǘT}��([�~�!�Қ")eq�&Rv!�������}wA$fɕ��6�&�Ѳ�-���Nj��B[�������< �ժD evJJL������<��\�_�h9�+$Y۾���~w	���_)�Ã9|1̯<�H�WFM\�ɶ8˴��t4:3fS=�xM�^���̇���N������2[��B�6���bj!Ct�P>��1����m�,�xN���w1�j��P���5.S�354��nI���%���
f��ǥ�EXk�%
a�mV����,Jq      M   K  x�U�OO�0���A���6	M�!ƉK���Y�Ti��풮\R���W�<y���>r�����NJX$�����%b2�Һ����Joq
��:(O��Jπ�Ψ�����uɼ	�oT>�s����ޏ��u� ��}�+���u�!K��ɐ��WqM�stX)�Om�Wc�xx��MU�;��,3q?fvۏ�F�����}��85.l"b��h'�����c�1Uq$1�3U�-�%��\�����w�S�A���<�9��[��n�I&�l���vykn�1�_��3�L,�1Z�	4��o+0�*Bɡ���]�e���      =   j   x�3�LI.I-�-�Rpq��T�M-ILI,IT	rf��X��������$�U��dRJ�r2��R����������9���@�P��*�S8S�J�*�b���� �)      4   ;   x�3�4202�50�52S00�25�20�347433�L�,b�Դ��+�3Ə+F��� ;8�      �      x������ � �            x������ � �      |      x������ � �      J      x������ � �      f      x������ � �      %      x������ � �            x������ � �      7      x������ � �      �   �   x����N�0���S�	���.�NB!�V�5��l�ޞ$K��8����������`:�B�a��։�������'K��Wd#0ǥ�af�I�=l�&ek	�Ee\��N�qeIJ��j��<K��x��\���"d���h	���8ͬ��;��~���'��?�^A��G�w���:r�׳�M{Ӯ�k+��,$!>��g��JP(�T�����3���9�U�4�ǧA      )      x������ � �            x������ � �      �      x������ � �            x������ � �      W      x������ � �      B      x������ � �      �      x������ � �            x������ � �      �   j   x�mϫ�0�a}W�yIh�
b2�`��ů���o����w\�X���R711�<`f0� �" 3Ȓ�0( s����(�O4+��`� � ���(%P�T�kjX      9      x������ � �            x������ � �      �      x�v�ww��4������ T      h     x���QO�0ǟ�OQ�M�2F�4M�+ڄ���&ʃq��U���tѴ�>'T���x������_�����+K�Z��ژE��,ɄXO`㟹+�GȔ��>̮�ӛy[�U,��G,C�Ʈ,:���;6��Óq��]�V����q����u��g�ӋN�� Q�&|��E؜�y��2����|�4J�s$7@���,Ķ�MKu�Zɚ�2#�� ɝ+۔E�Qd�ʈ���P�tr:9�
o���5�+���F�����zQ�F���RəDj�d0A��4You�iL)M���ka� �*�@��|R�ae�Ȁ�$�0/6�<ʶ"�����.�|�����H�~��3I{�{�/�������H����ݭ�� x ����E�⧛���^$����IZ��\�� �aS �aɄ��v;�U�k3L$��A&R��a�pװ٭�<tV��"�>��Ô��/ZG��S����7�ur���r��S#tM��zK�o�����3��ⅣM6<��;[^�Ь�*����             x������ � �      	      x������ � �      S      x������ � �      �      x������ � �      w   T   x�3��Î�8���Jq��ɔMf�h2'G�9�,��d�]��.C�t����64!KY���aHV�0$+i��6b���� t��      -      x������ � �      {      x������ � �      �      x������ � �      l      x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      "      x������ � �      /      x������ � �      �      x������ � �      �      x������ � �      U      x������ � �      `   �   x���M�0@�u9�`�N[�Y��6.ݔ2B�Z��/`ܾ�K��+�%��`�}s\�8
BR9��;����j��ȋ[�]��Y���1�'L6�m�����t	Rn�J1�����d������OBUm�dO�����͕�F�+tD�~ϧ�ص��x
�1�B�eE�H�     