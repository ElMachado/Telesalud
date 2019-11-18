--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2019-11-18 00:02:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16394)
-- Name: antecedentesfamiliares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecedentesfamiliares (
    idantecedentesfamiliares integer NOT NULL,
    hipertension character varying(10) NOT NULL,
    cardiopatias character varying(10) NOT NULL,
    cualcardiopatias character varying(10),
    trastornosmentales character varying(10),
    cualtranstornomental character varying(100),
    epilepsia character varying(10) NOT NULL,
    neoplasia character varying(10),
    cualneoplasia character varying(100),
    tuberculosis character varying(10) NOT NULL,
    preeclampsia character varying(10),
    eclampsia character varying(10),
    gestacionesmultiples character varying(10) NOT NULL,
    enfermedadescongenitas character varying(10) NOT NULL,
    cualesenfermedadescongenitas character varying(100),
    otracondicionmedicaespecial character varying(10),
    cualcondicionespecial character varying(100)
);


ALTER TABLE public.antecedentesfamiliares OWNER TO postgres;

--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 196
-- Name: TABLE antecedentesfamiliares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.antecedentesfamiliares IS 'TRIAL';


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.idantecedentesfamiliares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.idantecedentesfamiliares IS 'TRIAL';


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.hipertension; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.hipertension IS 'TRIAL';


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cardiopatias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cardiopatias IS 'TRIAL';


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cualcardiopatias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cualcardiopatias IS 'TRIAL';


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.trastornosmentales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.trastornosmentales IS 'TRIAL';


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cualtranstornomental; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cualtranstornomental IS 'TRIAL';


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.epilepsia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.epilepsia IS 'TRIAL';


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.neoplasia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.neoplasia IS 'TRIAL';


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cualneoplasia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cualneoplasia IS 'TRIAL';


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.tuberculosis; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.tuberculosis IS 'TRIAL';


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.preeclampsia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.preeclampsia IS 'TRIAL';


--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.eclampsia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.eclampsia IS 'TRIAL';


--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.gestacionesmultiples; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.gestacionesmultiples IS 'TRIAL';


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.enfermedadescongenitas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.enfermedadescongenitas IS 'TRIAL';


--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cualesenfermedadescongenitas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cualesenfermedadescongenitas IS 'TRIAL';


--
-- TOC entry 3223 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.otracondicionmedicaespecial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.otracondicionmedicaespecial IS 'TRIAL';


--
-- TOC entry 3224 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN antecedentesfamiliares.cualcondicionespecial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesfamiliares.cualcondicionespecial IS 'TRIAL';


--
-- TOC entry 234 (class 1259 OID 16810)
-- Name: antecedentesfamiliares_idantecedentesfamiliares_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.antecedentesfamiliares ALTER COLUMN idantecedentesfamiliares ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.antecedentesfamiliares_idantecedentesfamiliares_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 197 (class 1259 OID 16402)
-- Name: antecedentesgos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecedentesgos (
    idantecedentesgo integer NOT NULL,
    edadmenarquia integer NOT NULL,
    cirugiagenitourinaria character varying(10) NOT NULL,
    cualcirugiagenitourinaria character varying(100),
    infertilidad character varying(10) NOT NULL,
    enfermedadpelvicainflamatoria character varying(10) NOT NULL,
    cualenfermedadpelvicainflamatoria character varying(100),
    conizacion character varying(10),
    resultadoconizacion character varying(50),
    embarazosprevios integer NOT NULL,
    fechapartoanterior date,
    numeropartos integer,
    "númerocesareas" integer,
    motivocesarea character varying(50),
    "númeronacidosvivos" integer,
    "númeronacidosmuertos" integer,
    numeroabortos integer,
    muertosprimerasemana integer,
    muertosdespuesdelaprimerasemana integer,
    recuerdapesoultimohijoalnacer character varying(10),
    pesoultimohijo integer,
    embarazoectopico character varying(10),
    numeroembarazosectopicos integer,
    placentaprevia character varying(10),
    abrupcioplacentario character varying(10),
    restriccioncrecimientointrauterino character varying(10),
    rupturaprematuramembranasovulares character varying(10),
    hijocondefectoscierretuboneural character varying(10),
    antecedentesgemelares character varying(10),
    sindromepartopretermino character varying(10),
    diabetesgestacional character varying(10),
    preeclampsia character varying(10),
    eclampsia character varying(10)
);


ALTER TABLE public.antecedentesgos OWNER TO postgres;

--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 197
-- Name: TABLE antecedentesgos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.antecedentesgos IS 'TRIAL';


--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.idantecedentesgo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.idantecedentesgo IS 'TRIAL';


--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.edadmenarquia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.edadmenarquia IS 'TRIAL';


--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.cirugiagenitourinaria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.cirugiagenitourinaria IS 'TRIAL';


--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.cualcirugiagenitourinaria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.cualcirugiagenitourinaria IS 'TRIAL';


--
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.infertilidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.infertilidad IS 'TRIAL';


--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.enfermedadpelvicainflamatoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.enfermedadpelvicainflamatoria IS 'TRIAL';


--
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.cualenfermedadpelvicainflamatoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.cualenfermedadpelvicainflamatoria IS 'TRIAL';


--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.conizacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.conizacion IS 'TRIAL';


--
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.resultadoconizacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.resultadoconizacion IS 'TRIAL';


--
-- TOC entry 3235 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.embarazosprevios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.embarazosprevios IS 'TRIAL';


--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.fechapartoanterior; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.fechapartoanterior IS 'TRIAL';


--
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.numeropartos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.numeropartos IS 'TRIAL';


--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos."númerocesareas"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos."númerocesareas" IS 'TRIAL';


--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.motivocesarea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.motivocesarea IS 'TRIAL';


--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos."númeronacidosvivos"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos."númeronacidosvivos" IS 'TRIAL';


--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos."númeronacidosmuertos"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos."númeronacidosmuertos" IS 'TRIAL';


--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.numeroabortos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.numeroabortos IS 'TRIAL';


--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.muertosprimerasemana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.muertosprimerasemana IS 'TRIAL';


--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.muertosdespuesdelaprimerasemana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.muertosdespuesdelaprimerasemana IS 'TRIAL';


--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.recuerdapesoultimohijoalnacer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.recuerdapesoultimohijoalnacer IS 'TRIAL';


--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.pesoultimohijo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.pesoultimohijo IS 'TRIAL';


--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.embarazoectopico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.embarazoectopico IS 'TRIAL';


--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.numeroembarazosectopicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.numeroembarazosectopicos IS 'TRIAL';


--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.placentaprevia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.placentaprevia IS 'TRIAL';


--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.abrupcioplacentario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.abrupcioplacentario IS 'TRIAL';


--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.restriccioncrecimientointrauterino; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.restriccioncrecimientointrauterino IS 'TRIAL';


--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.rupturaprematuramembranasovulares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.rupturaprematuramembranasovulares IS 'TRIAL';


--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.hijocondefectoscierretuboneural; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.hijocondefectoscierretuboneural IS 'TRIAL';


--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.antecedentesgemelares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.antecedentesgemelares IS 'TRIAL';


--
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.sindromepartopretermino; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.sindromepartopretermino IS 'TRIAL';


--
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.diabetesgestacional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.diabetesgestacional IS 'TRIAL';


--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.preeclampsia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.preeclampsia IS 'TRIAL';


--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN antecedentesgos.eclampsia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesgos.eclampsia IS 'TRIAL';


--
-- TOC entry 235 (class 1259 OID 16812)
-- Name: antecedentesgo_idantecedentesgo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.antecedentesgos ALTER COLUMN idantecedentesgo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.antecedentesgo_idantecedentesgo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 198 (class 1259 OID 16407)
-- Name: antecedentesinmunologicos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecedentesinmunologicos (
    idantecedentesinmunologicos integer NOT NULL,
    vacunaantirubeola character varying(10) NOT NULL,
    vacunaantitetanica character varying(10) NOT NULL,
    vacunaaplicadaultimolustro character varying(10)
);


ALTER TABLE public.antecedentesinmunologicos OWNER TO postgres;

--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 198
-- Name: TABLE antecedentesinmunologicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.antecedentesinmunologicos IS 'TRIAL';


--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN antecedentesinmunologicos.idantecedentesinmunologicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesinmunologicos.idantecedentesinmunologicos IS 'TRIAL';


--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN antecedentesinmunologicos.vacunaantirubeola; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesinmunologicos.vacunaantirubeola IS 'TRIAL';


--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN antecedentesinmunologicos.vacunaantitetanica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesinmunologicos.vacunaantitetanica IS 'TRIAL';


--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN antecedentesinmunologicos.vacunaaplicadaultimolustro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentesinmunologicos.vacunaaplicadaultimolustro IS 'TRIAL';


--
-- TOC entry 236 (class 1259 OID 16814)
-- Name: antecedentesinmunologicos_idantecedentesinmunologicos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.antecedentesinmunologicos ALTER COLUMN idantecedentesinmunologicos ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.antecedentesinmunologicos_idantecedentesinmunologicos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 199 (class 1259 OID 16412)
-- Name: antecedentespersonales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecedentespersonales (
    idantecedentespersonales integer NOT NULL,
    lupuseritematososistematico character varying(10),
    hipertension character varying(10) NOT NULL,
    cardiopatias character varying(10) NOT NULL,
    "cualcardiopatía" character varying(100),
    nefropatia character varying(10),
    cualantecedentenefropatias character varying(100),
    enfermedadesautoinmunes character varying(10) NOT NULL,
    cualenfermedadautoinmune character varying(100),
    anticuerposantifosfolipidos character varying(10),
    tuberculosis character varying(10) NOT NULL,
    enfermedadestransmisionsexual character varying(10) NOT NULL,
    cualets character varying(100),
    paludismo_malaria character varying(20),
    chagas character varying(20),
    antecedentesquirurgicos character varying(100),
    alergia character varying(10) NOT NULL,
    cualalergia character varying(100),
    hipotiroidismo character varying(10),
    otracondicionmedicaespecial character varying(10),
    cualcondicionmedicaespecial character varying(100),
    medicamentosactuales character varying(100) NOT NULL
);


ALTER TABLE public.antecedentespersonales OWNER TO postgres;

--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE antecedentespersonales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.antecedentespersonales IS 'TRIAL';


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.idantecedentespersonales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.idantecedentespersonales IS 'TRIAL';


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.lupuseritematososistematico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.lupuseritematososistematico IS 'TRIAL';


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.hipertension; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.hipertension IS 'TRIAL';


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cardiopatias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cardiopatias IS 'TRIAL';


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales."cualcardiopatía"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales."cualcardiopatía" IS 'TRIAL';


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.nefropatia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.nefropatia IS 'TRIAL';


--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cualantecedentenefropatias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cualantecedentenefropatias IS 'TRIAL';


--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.enfermedadesautoinmunes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.enfermedadesautoinmunes IS 'TRIAL';


--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cualenfermedadautoinmune; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cualenfermedadautoinmune IS 'TRIAL';


--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.anticuerposantifosfolipidos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.anticuerposantifosfolipidos IS 'TRIAL';


--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.tuberculosis; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.tuberculosis IS 'TRIAL';


--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.enfermedadestransmisionsexual; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.enfermedadestransmisionsexual IS 'TRIAL';


--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cualets; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cualets IS 'TRIAL';


--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.paludismo_malaria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.paludismo_malaria IS 'TRIAL';


--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.chagas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.chagas IS 'TRIAL';


--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.antecedentesquirurgicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.antecedentesquirurgicos IS 'TRIAL';


--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.alergia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.alergia IS 'TRIAL';


--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cualalergia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cualalergia IS 'TRIAL';


--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.hipotiroidismo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.hipotiroidismo IS 'TRIAL';


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.otracondicionmedicaespecial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.otracondicionmedicaespecial IS 'TRIAL';


--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.cualcondicionmedicaespecial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.cualcondicionmedicaespecial IS 'TRIAL';


--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN antecedentespersonales.medicamentosactuales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentespersonales.medicamentosactuales IS 'TRIAL';


--
-- TOC entry 237 (class 1259 OID 16816)
-- Name: antecedentespersonales_idantecedentespersonales_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.antecedentespersonales ALTER COLUMN idantecedentespersonales ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.antecedentespersonales_idantecedentespersonales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 200 (class 1259 OID 16420)
-- Name: antecedentessociodemograficos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecedentessociodemograficos (
    idantecedentessociodemograficos integer NOT NULL,
    alfabeta character varying(10),
    nivelestudiosalcanzado character varying(20),
    etnia character varying(20) NOT NULL,
    vivesola character varying(10) NOT NULL,
    estadocivil character varying(10) NOT NULL,
    violenciaintrafamiliarreciente character varying(10) NOT NULL,
    ocupacion_profesion character varying(50),
    otro character varying(50)
);


ALTER TABLE public.antecedentessociodemograficos OWNER TO postgres;

--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE antecedentessociodemograficos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.antecedentessociodemograficos IS 'TRIAL';


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.idantecedentessociodemograficos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.idantecedentessociodemograficos IS 'TRIAL';


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.alfabeta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.alfabeta IS 'TRIAL';


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.nivelestudiosalcanzado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.nivelestudiosalcanzado IS 'TRIAL';


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.etnia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.etnia IS 'TRIAL';


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.vivesola; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.vivesola IS 'TRIAL';


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.estadocivil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.estadocivil IS 'TRIAL';


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.violenciaintrafamiliarreciente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.violenciaintrafamiliarreciente IS 'TRIAL';


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.ocupacion_profesion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.ocupacion_profesion IS 'TRIAL';


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN antecedentessociodemograficos.otro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.antecedentessociodemograficos.otro IS 'TRIAL';


--
-- TOC entry 238 (class 1259 OID 16818)
-- Name: antecedentessociodemograficos_idantecedentessociodemografic_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.antecedentessociodemograficos ALTER COLUMN idantecedentessociodemograficos ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.antecedentessociodemograficos_idantecedentessociodemografic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 16425)
-- Name: atencioncontrolprenatal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atencioncontrolprenatal (
    idatencioncontrolprenatal integer NOT NULL,
    idusuario integer NOT NULL,
    iddatosiniciales integer NOT NULL,
    idantecedentesgo integer NOT NULL,
    idantecedentespersonales integer NOT NULL,
    idantecedentesfamiliares integer NOT NULL,
    idantecedentesinmunologicos integer NOT NULL,
    idantecedentessociodemograficos integer NOT NULL,
    idsintomas integer NOT NULL,
    idhabitos integer NOT NULL,
    idexamenfisico integer NOT NULL,
    idexamenes integer NOT NULL
);


ALTER TABLE public.atencioncontrolprenatal OWNER TO postgres;

--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE atencioncontrolprenatal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.atencioncontrolprenatal IS 'TRIAL';


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idatencioncontrolprenatal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idatencioncontrolprenatal IS 'TRIAL';


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idusuario IS 'TRIAL';


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.iddatosiniciales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.iddatosiniciales IS 'TRIAL';


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idantecedentesgo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idantecedentesgo IS 'TRIAL';


--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idantecedentespersonales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idantecedentespersonales IS 'TRIAL';


--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idantecedentesfamiliares; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idantecedentesfamiliares IS 'TRIAL';


--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idantecedentesinmunologicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idantecedentesinmunologicos IS 'TRIAL';


--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idantecedentessociodemograficos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idantecedentessociodemograficos IS 'TRIAL';


--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idsintomas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idsintomas IS 'TRIAL';


--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idhabitos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idhabitos IS 'TRIAL';


--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idexamenfisico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idexamenfisico IS 'TRIAL';


--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN atencioncontrolprenatal.idexamenes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.atencioncontrolprenatal.idexamenes IS 'TRIAL';


--
-- TOC entry 239 (class 1259 OID 16820)
-- Name: atencioncontrolprenatal_idatencioncontrolprenatal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.atencioncontrolprenatal ALTER COLUMN idatencioncontrolprenatal ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.atencioncontrolprenatal_idatencioncontrolprenatal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 261 (class 1259 OID 16865)
-- Name: autenticacions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autenticacions (
    nombre character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);


ALTER TABLE public.autenticacions OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16430)
-- Name: ciudad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciudad (
    idciudad integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.ciudad OWNER TO postgres;

--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE ciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.ciudad IS 'TRIAL';


--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN ciudad.idciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudad.idciudad IS 'TRIAL';


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN ciudad.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.ciudad.descripcion IS 'TRIAL';


--
-- TOC entry 240 (class 1259 OID 16823)
-- Name: ciudad_idciudad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ciudad ALTER COLUMN idciudad ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ciudad_idciudad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 16435)
-- Name: contacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacto (
    idcontacto integer NOT NULL,
    idtipocontacto integer NOT NULL,
    idzona integer NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(20) NOT NULL,
    idpais integer NOT NULL,
    iddepartamento integer NOT NULL,
    idciudad integer NOT NULL
);


ALTER TABLE public.contacto OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE contacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.contacto IS 'TRIAL';


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.idcontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.idcontacto IS 'TRIAL';


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.idtipocontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.idtipocontacto IS 'TRIAL';


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.idzona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.idzona IS 'TRIAL';


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.direccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.direccion IS 'TRIAL';


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.telefono IS 'TRIAL';


--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.idpais IS 'TRIAL';


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.iddepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.iddepartamento IS 'TRIAL';


--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN contacto.idciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contacto.idciudad IS 'TRIAL';


--
-- TOC entry 241 (class 1259 OID 16825)
-- Name: contacto_idcontacto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.contacto ALTER COLUMN idcontacto ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contacto_idcontacto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 16440)
-- Name: contactoadicional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contactoadicional (
    idcontactoadicional integer NOT NULL,
    idtipocontactoadicional integer NOT NULL,
    telefono character varying(20) NOT NULL,
    celular character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    idpais integer NOT NULL,
    iddepartamento integer NOT NULL,
    idciudad integer NOT NULL,
    otros character varying(50) NOT NULL
);


ALTER TABLE public.contactoadicional OWNER TO postgres;

--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE contactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.contactoadicional IS 'TRIAL';


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.idcontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.idcontactoadicional IS 'TRIAL';


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.idtipocontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.idtipocontactoadicional IS 'TRIAL';


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.telefono IS 'TRIAL';


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.celular; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.celular IS 'TRIAL';


--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.email IS 'TRIAL';


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.direccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.direccion IS 'TRIAL';


--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.idpais IS 'TRIAL';


--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.iddepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.iddepartamento IS 'TRIAL';


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.idciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.idciudad IS 'TRIAL';


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN contactoadicional.otros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.contactoadicional.otros IS 'TRIAL';


--
-- TOC entry 242 (class 1259 OID 16827)
-- Name: contactoadicional_idcontactoadicional_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.contactoadicional ALTER COLUMN idcontactoadicional ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contactoadicional_idcontactoadicional_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 16445)
-- Name: datosiniciales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datosiniciales (
    iddatosiniciales integer NOT NULL,
    embarazoplaneado character varying(10) NOT NULL,
    fracasoelmetodoanticonceptivo character varying(10),
    gruposanguineo character varying(10) NOT NULL,
    rh character varying(20) NOT NULL,
    recuerdapesoantesdelembarazo character varying(10),
    pesoantesdelembarazo integer,
    talla integer
);


ALTER TABLE public.datosiniciales OWNER TO postgres;

--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE datosiniciales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.datosiniciales IS 'TRIAL';


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.iddatosiniciales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.iddatosiniciales IS 'TRIAL';


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.embarazoplaneado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.embarazoplaneado IS 'TRIAL';


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.fracasoelmetodoanticonceptivo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.fracasoelmetodoanticonceptivo IS 'TRIAL';


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.gruposanguineo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.gruposanguineo IS 'TRIAL';


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.rh; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.rh IS 'TRIAL';


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.recuerdapesoantesdelembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.recuerdapesoantesdelembarazo IS 'TRIAL';


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.pesoantesdelembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.pesoantesdelembarazo IS 'TRIAL';


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN datosiniciales.talla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.datosiniciales.talla IS 'TRIAL';


--
-- TOC entry 243 (class 1259 OID 16829)
-- Name: datosiniciales_iddatosiniciales_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.datosiniciales ALTER COLUMN iddatosiniciales ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.datosiniciales_iddatosiniciales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 16450)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE departamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.departamento IS 'TRIAL';


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN departamento.iddepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamento.iddepartamento IS 'TRIAL';


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN departamento.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamento.descripcion IS 'TRIAL';


--
-- TOC entry 244 (class 1259 OID 16831)
-- Name: departamento_iddepartamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.departamento ALTER COLUMN iddepartamento ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.departamento_iddepartamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 16455)
-- Name: departamentoxciudad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentoxciudad (
    iddepartamento integer NOT NULL,
    idciudad integer NOT NULL
);


ALTER TABLE public.departamentoxciudad OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE departamentoxciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.departamentoxciudad IS 'TRIAL';


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN departamentoxciudad.iddepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamentoxciudad.iddepartamento IS 'TRIAL';


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN departamentoxciudad.idciudad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamentoxciudad.idciudad IS 'TRIAL';


--
-- TOC entry 208 (class 1259 OID 16460)
-- Name: eps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eps (
    ideps integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.eps OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE eps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.eps IS 'TRIAL';


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN eps.ideps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.eps.ideps IS 'TRIAL';


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN eps.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.eps.descripcion IS 'TRIAL';


--
-- TOC entry 245 (class 1259 OID 16833)
-- Name: eps_ideps_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.eps ALTER COLUMN ideps ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.eps_ideps_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 209 (class 1259 OID 16465)
-- Name: examenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.examenes (
    idexamenes integer NOT NULL,
    traeexamenhemoglobina character varying(10),
    hemoglobina integer,
    fechatomahemoglobina date,
    hematocrito character varying(10),
    resultadohematocritos integer,
    hemoclasificacion character varying(10),
    gruposanguineohemoclasificacion character varying(10),
    rhhemoclasificacion character varying(20),
    traepruebavdrl character varying(10),
    resultadovdrl character varying(20),
    valorvdrl character varying(10),
    fechapruebavdrl date,
    pruebarapidatreponemicadisponible character varying(10),
    resultadopruebarapidatroponemica character varying(20),
    indagarpresenciadeantecentes character varying(10),
    traepruebaantigenohepatitisb character varying(10) NOT NULL,
    resultadoantigenohepatitisb character varying(20),
    "fechatomaantígenosuperficiehepatitisb" date,
    traepruebavih character varying(10) NOT NULL,
    resultadoelisa_vih character varying(20),
    fechapruebaelisa_vih date,
    examencitologiareciente character varying(10) NOT NULL,
    observacioncitologia character varying(50),
    resultadocitologia character varying(10),
    citologiaanormal character varying(50),
    frotisvaginal character varying(10),
    observacionfrotisvaginal character varying(50),
    traepruebaurocultivo character varying(10),
    realizoantibiograma character varying(10),
    resultadourocultivo character varying(20),
    aislamiento character varying(50),
    unidadesformadorascolonia character varying(50),
    traepruebaglicemia character varying(10),
    resultadoglicemia integer,
    fechapruebaglicemia date,
    pruebatoxoplasma character varying(10),
    toxoplasmaigg character varying(20),
    toxoplasmaigm character varying(20),
    observacionpruebatoxoplasma character varying(50),
    tieneexamenodontologico character varying(10),
    valoracionodontologica character varying(10),
    otrosparaclinicos character varying(50)
);


ALTER TABLE public.examenes OWNER TO postgres;

--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE examenes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.examenes IS 'TRIAL';


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.idexamenes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.idexamenes IS 'TRIAL';


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traeexamenhemoglobina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traeexamenhemoglobina IS 'TRIAL';


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.hemoglobina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.hemoglobina IS 'TRIAL';


--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.fechatomahemoglobina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.fechatomahemoglobina IS 'TRIAL';


--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.hematocrito; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.hematocrito IS 'TRIAL';


--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadohematocritos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadohematocritos IS 'TRIAL';


--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.hemoclasificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.hemoclasificacion IS 'TRIAL';


--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.gruposanguineohemoclasificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.gruposanguineohemoclasificacion IS 'TRIAL';


--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.rhhemoclasificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.rhhemoclasificacion IS 'TRIAL';


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traepruebavdrl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traepruebavdrl IS 'TRIAL';


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadovdrl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadovdrl IS 'TRIAL';


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.valorvdrl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.valorvdrl IS 'TRIAL';


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.fechapruebavdrl; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.fechapruebavdrl IS 'TRIAL';


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.pruebarapidatreponemicadisponible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.pruebarapidatreponemicadisponible IS 'TRIAL';


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadopruebarapidatroponemica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadopruebarapidatroponemica IS 'TRIAL';


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.indagarpresenciadeantecentes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.indagarpresenciadeantecentes IS 'TRIAL';


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traepruebaantigenohepatitisb; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traepruebaantigenohepatitisb IS 'TRIAL';


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadoantigenohepatitisb; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadoantigenohepatitisb IS 'TRIAL';


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes."fechatomaantígenosuperficiehepatitisb"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes."fechatomaantígenosuperficiehepatitisb" IS 'TRIAL';


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traepruebavih; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traepruebavih IS 'TRIAL';


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadoelisa_vih; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadoelisa_vih IS 'TRIAL';


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.fechapruebaelisa_vih; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.fechapruebaelisa_vih IS 'TRIAL';


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.examencitologiareciente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.examencitologiareciente IS 'TRIAL';


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.observacioncitologia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.observacioncitologia IS 'TRIAL';


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadocitologia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadocitologia IS 'TRIAL';


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.citologiaanormal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.citologiaanormal IS 'TRIAL';


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.frotisvaginal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.frotisvaginal IS 'TRIAL';


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.observacionfrotisvaginal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.observacionfrotisvaginal IS 'TRIAL';


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traepruebaurocultivo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traepruebaurocultivo IS 'TRIAL';


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.realizoantibiograma; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.realizoantibiograma IS 'TRIAL';


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadourocultivo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadourocultivo IS 'TRIAL';


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.aislamiento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.aislamiento IS 'TRIAL';


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.unidadesformadorascolonia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.unidadesformadorascolonia IS 'TRIAL';


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.traepruebaglicemia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.traepruebaglicemia IS 'TRIAL';


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.resultadoglicemia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.resultadoglicemia IS 'TRIAL';


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.fechapruebaglicemia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.fechapruebaglicemia IS 'TRIAL';


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.pruebatoxoplasma; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.pruebatoxoplasma IS 'TRIAL';


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.toxoplasmaigg; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.toxoplasmaigg IS 'TRIAL';


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.toxoplasmaigm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.toxoplasmaigm IS 'TRIAL';


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.observacionpruebatoxoplasma; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.observacionpruebatoxoplasma IS 'TRIAL';


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.tieneexamenodontologico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.tieneexamenodontologico IS 'TRIAL';


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.valoracionodontologica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.valoracionodontologica IS 'TRIAL';


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN examenes.otrosparaclinicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenes.otrosparaclinicos IS 'TRIAL';


--
-- TOC entry 246 (class 1259 OID 16835)
-- Name: examenes_idexamenes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.examenes ALTER COLUMN idexamenes ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.examenes_idexamenes_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 16473)
-- Name: examenfisico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.examenfisico (
    idexamenfisico integer NOT NULL,
    pulso integer,
    frecuenciarespiratoria integer NOT NULL,
    presionarterialsistolica integer NOT NULL,
    presionarterialdiastolica integer NOT NULL,
    saturacionoxigeno integer,
    fio2ambiente character varying(10),
    temperatura integer,
    peso integer,
    examenmamas character varying(20) NOT NULL,
    inspeccionvisualcervix character varying(50) NOT NULL,
    pielyfaneras character varying(50),
    cabezaycuello character varying(50),
    torax character varying(50),
    abdomenypelvis character varying(50),
    extremidades_osteoarticular character varying(50),
    neurologicos character varying(50),
    tactovaginal character varying(50) NOT NULL,
    observacionesexamenfisico character varying(100) NOT NULL,
    fcfdisponible character varying(10),
    fcf integer,
    alturauterina integer
);


ALTER TABLE public.examenfisico OWNER TO postgres;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 210
-- Name: TABLE examenfisico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.examenfisico IS 'TRIAL';


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.idexamenfisico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.idexamenfisico IS 'TRIAL';


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.pulso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.pulso IS 'TRIAL';


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.frecuenciarespiratoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.frecuenciarespiratoria IS 'TRIAL';


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.presionarterialsistolica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.presionarterialsistolica IS 'TRIAL';


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.presionarterialdiastolica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.presionarterialdiastolica IS 'TRIAL';


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.saturacionoxigeno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.saturacionoxigeno IS 'TRIAL';


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.fio2ambiente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.fio2ambiente IS 'TRIAL';


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.temperatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.temperatura IS 'TRIAL';


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.peso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.peso IS 'TRIAL';


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.examenmamas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.examenmamas IS 'TRIAL';


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.inspeccionvisualcervix; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.inspeccionvisualcervix IS 'TRIAL';


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.pielyfaneras; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.pielyfaneras IS 'TRIAL';


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.cabezaycuello; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.cabezaycuello IS 'TRIAL';


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.torax; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.torax IS 'TRIAL';


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.abdomenypelvis; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.abdomenypelvis IS 'TRIAL';


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.extremidades_osteoarticular; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.extremidades_osteoarticular IS 'TRIAL';


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.neurologicos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.neurologicos IS 'TRIAL';


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.tactovaginal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.tactovaginal IS 'TRIAL';


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.observacionesexamenfisico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.observacionesexamenfisico IS 'TRIAL';


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.fcfdisponible; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.fcfdisponible IS 'TRIAL';


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.fcf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.fcf IS 'TRIAL';


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 210
-- Name: COLUMN examenfisico.alturauterina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.examenfisico.alturauterina IS 'TRIAL';


--
-- TOC entry 247 (class 1259 OID 16837)
-- Name: examenfisico_idexamenfisico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.examenfisico ALTER COLUMN idexamenfisico ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.examenfisico_idexamenfisico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16481)
-- Name: habitos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habitos (
    idhabitos integer NOT NULL,
    fumadoraactiva character varying(10) NOT NULL,
    cigarrillosdia integer,
    fumadorapasiva character varying(10) NOT NULL,
    consumedrogas character varying(10) NOT NULL,
    cualesdrogas character varying(10),
    consumoalcohol character varying(10) NOT NULL
);


ALTER TABLE public.habitos OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE habitos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.habitos IS 'TRIAL';


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.idhabitos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.idhabitos IS 'TRIAL';


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.fumadoraactiva; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.fumadoraactiva IS 'TRIAL';


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.cigarrillosdia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.cigarrillosdia IS 'TRIAL';


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.fumadorapasiva; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.fumadorapasiva IS 'TRIAL';


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.consumedrogas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.consumedrogas IS 'TRIAL';


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.cualesdrogas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.cualesdrogas IS 'TRIAL';


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 211
-- Name: COLUMN habitos.consumoalcohol; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.habitos.consumoalcohol IS 'TRIAL';


--
-- TOC entry 248 (class 1259 OID 16839)
-- Name: habitos_idhabitos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.habitos ALTER COLUMN idhabitos ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.habitos_idhabitos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16486)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    idpais integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE pais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.pais IS 'TRIAL';


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pais.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pais.idpais IS 'TRIAL';


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN pais.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pais.descripcion IS 'TRIAL';


--
-- TOC entry 249 (class 1259 OID 16841)
-- Name: pais_idpais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.pais ALTER COLUMN idpais ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pais_idpais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16491)
-- Name: paisxdepartamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paisxdepartamento (
    idpais integer NOT NULL,
    iddepartamento integer NOT NULL
);


ALTER TABLE public.paisxdepartamento OWNER TO postgres;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE paisxdepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.paisxdepartamento IS 'TRIAL';


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN paisxdepartamento.idpais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.paisxdepartamento.idpais IS 'TRIAL';


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN paisxdepartamento.iddepartamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.paisxdepartamento.iddepartamento IS 'TRIAL';


--
-- TOC entry 214 (class 1259 OID 16496)
-- Name: sexo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sexo (
    idsexo integer NOT NULL,
    descripcion character varying(20) NOT NULL
);


ALTER TABLE public.sexo OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE sexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.sexo IS 'TRIAL';


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN sexo.idsexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sexo.idsexo IS 'TRIAL';


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 214
-- Name: COLUMN sexo.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sexo.descripcion IS 'TRIAL';


--
-- TOC entry 250 (class 1259 OID 16843)
-- Name: sexo_idsexo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sexo ALTER COLUMN idsexo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sexo_idsexo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16501)
-- Name: sintomas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sintomas (
    idsintomas integer NOT NULL,
    cefalea character varying(10) NOT NULL,
    trastornosvisuales character varying(10) NOT NULL,
    trastornosauditivos character varying(10) NOT NULL,
    edemacara character varying(10),
    epigastralgia character varying(10),
    edemamiembros character varying(10),
    actividaduterina character varying(10),
    leucorrea character varying(10),
    amniorrea character varying(10),
    sangradovaginal character varying(10) NOT NULL,
    "síntomasurinarios" character varying(10) NOT NULL,
    movimientosfetales character varying(10) NOT NULL,
    "náuseas_vómito" character varying(10),
    disnea character varying(10),
    otros character varying(100)
);


ALTER TABLE public.sintomas OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE sintomas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.sintomas IS 'TRIAL';


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.idsintomas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.idsintomas IS 'TRIAL';


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.cefalea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.cefalea IS 'TRIAL';


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.trastornosvisuales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.trastornosvisuales IS 'TRIAL';


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.trastornosauditivos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.trastornosauditivos IS 'TRIAL';


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.edemacara; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.edemacara IS 'TRIAL';


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.epigastralgia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.epigastralgia IS 'TRIAL';


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.edemamiembros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.edemamiembros IS 'TRIAL';


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.actividaduterina; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.actividaduterina IS 'TRIAL';


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.leucorrea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.leucorrea IS 'TRIAL';


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.amniorrea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.amniorrea IS 'TRIAL';


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.sangradovaginal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.sangradovaginal IS 'TRIAL';


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas."síntomasurinarios"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas."síntomasurinarios" IS 'TRIAL';


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.movimientosfetales; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.movimientosfetales IS 'TRIAL';


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas."náuseas_vómito"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas."náuseas_vómito" IS 'TRIAL';


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.disnea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.disnea IS 'TRIAL';


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN sintomas.otros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sintomas.otros IS 'TRIAL';


--
-- TOC entry 251 (class 1259 OID 16845)
-- Name: sintomas_idsintomas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sintomas ALTER COLUMN idsintomas ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sintomas_idsintomas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16507)
-- Name: terminoembarazo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terminoembarazo (
    idterminoembarazo integer NOT NULL,
    razonterminacionembarazo character varying(20) NOT NULL,
    otros character varying(50),
    conocecausaausenciamaternaencontroles character varying(10),
    cualcausa character varying(50),
    comunicacionconmaterna character varying(10),
    observaciones character varying(50),
    fechaaborto date,
    fechayhoraterminaciondeembarazo timestamp(3) without time zone,
    tipodeparto character varying(20),
    tipocesarea character varying(20),
    tiempolactanciarupturamembrana integer,
    episiotomia character varying(10),
    episiorrafia character varying(10),
    desgarroenparto character varying(10),
    tipodedesgarro character varying(10),
    tiempopinzamientocordon character varying(10),
    tipodealumbramiento character varying(20),
    placentacompleta character varying(10),
    presentohemorragiaobstetrica character varying(10),
    requiriotransfusiondehemoderivados character varying(10),
    glublosrojos integer,
    plaquetas integer,
    plasmafrescocongelado integer,
    madreingresouci character varying(10),
    antibioticobacteria character varying(10),
    muertematerna character varying(10),
    edadgestacional integer,
    sexodelbebe character varying(10),
    talladelbebe integer,
    pesodelbebe integer,
    perimetrocefalico integer,
    perimetrotoracico integer,
    perimetroabdominal integer,
    tshtomada character varying(10),
    fechatomatsh date,
    rhtomado character varying(10),
    apgar1minuto integer,
    apgar5minuto integer,
    reanimacionneonatal character varying(10),
    rningresoauci character varying(10),
    muertefetalparto character varying(10),
    muertefetalparto28dias character varying(10),
    nivelatencionparto character varying(10)
);


ALTER TABLE public.terminoembarazo OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE terminoembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.terminoembarazo IS 'TRIAL';


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.idterminoembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.idterminoembarazo IS 'TRIAL';


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.razonterminacionembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.razonterminacionembarazo IS 'TRIAL';


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.otros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.otros IS 'TRIAL';


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.conocecausaausenciamaternaencontroles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.conocecausaausenciamaternaencontroles IS 'TRIAL';


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.cualcausa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.cualcausa IS 'TRIAL';


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.comunicacionconmaterna; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.comunicacionconmaterna IS 'TRIAL';


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.observaciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.observaciones IS 'TRIAL';


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.fechaaborto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.fechaaborto IS 'TRIAL';


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.fechayhoraterminaciondeembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.fechayhoraterminaciondeembarazo IS 'TRIAL';


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tipodeparto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tipodeparto IS 'TRIAL';


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tipocesarea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tipocesarea IS 'TRIAL';


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tiempolactanciarupturamembrana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tiempolactanciarupturamembrana IS 'TRIAL';


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.episiotomia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.episiotomia IS 'TRIAL';


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.episiorrafia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.episiorrafia IS 'TRIAL';


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.desgarroenparto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.desgarroenparto IS 'TRIAL';


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tipodedesgarro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tipodedesgarro IS 'TRIAL';


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tiempopinzamientocordon; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tiempopinzamientocordon IS 'TRIAL';


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tipodealumbramiento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tipodealumbramiento IS 'TRIAL';


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.placentacompleta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.placentacompleta IS 'TRIAL';


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.presentohemorragiaobstetrica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.presentohemorragiaobstetrica IS 'TRIAL';


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.requiriotransfusiondehemoderivados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.requiriotransfusiondehemoderivados IS 'TRIAL';


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.glublosrojos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.glublosrojos IS 'TRIAL';


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.plaquetas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.plaquetas IS 'TRIAL';


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.plasmafrescocongelado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.plasmafrescocongelado IS 'TRIAL';


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.madreingresouci; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.madreingresouci IS 'TRIAL';


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.antibioticobacteria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.antibioticobacteria IS 'TRIAL';


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.muertematerna; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.muertematerna IS 'TRIAL';


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.edadgestacional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.edadgestacional IS 'TRIAL';


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.sexodelbebe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.sexodelbebe IS 'TRIAL';


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.talladelbebe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.talladelbebe IS 'TRIAL';


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.pesodelbebe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.pesodelbebe IS 'TRIAL';


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.perimetrocefalico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.perimetrocefalico IS 'TRIAL';


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.perimetrotoracico; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.perimetrotoracico IS 'TRIAL';


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.perimetroabdominal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.perimetroabdominal IS 'TRIAL';


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.tshtomada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.tshtomada IS 'TRIAL';


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.fechatomatsh; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.fechatomatsh IS 'TRIAL';


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.rhtomado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.rhtomado IS 'TRIAL';


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.apgar1minuto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.apgar1minuto IS 'TRIAL';


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.apgar5minuto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.apgar5minuto IS 'TRIAL';


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.reanimacionneonatal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.reanimacionneonatal IS 'TRIAL';


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.rningresoauci; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.rningresoauci IS 'TRIAL';


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.muertefetalparto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.muertefetalparto IS 'TRIAL';


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.muertefetalparto28dias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.muertefetalparto28dias IS 'TRIAL';


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 216
-- Name: COLUMN terminoembarazo.nivelatencionparto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.terminoembarazo.nivelatencionparto IS 'TRIAL';


--
-- TOC entry 252 (class 1259 OID 16847)
-- Name: terminoembarazo_idterminoembarazo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.terminoembarazo ALTER COLUMN idterminoembarazo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.terminoembarazo_idterminoembarazo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16512)
-- Name: tipoafiliacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipoafiliacion (
    idtipoafiliacion integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipoafiliacion OWNER TO postgres;

--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE tipoafiliacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipoafiliacion IS 'TRIAL';


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tipoafiliacion.idtipoafiliacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoafiliacion.idtipoafiliacion IS 'TRIAL';


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tipoafiliacion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoafiliacion.descripcion IS 'TRIAL';


--
-- TOC entry 253 (class 1259 OID 16849)
-- Name: tipoafiliacion_idtipoafiliacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipoafiliacion ALTER COLUMN idtipoafiliacion ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipoafiliacion_idtipoafiliacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16517)
-- Name: tipocontacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipocontacto (
    idtipocontacto integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipocontacto OWNER TO postgres;

--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE tipocontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipocontacto IS 'TRIAL';


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN tipocontacto.idtipocontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipocontacto.idtipocontacto IS 'TRIAL';


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN tipocontacto.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipocontacto.descripcion IS 'TRIAL';


--
-- TOC entry 254 (class 1259 OID 16851)
-- Name: tipocontacto_idtipocontacto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipocontacto ALTER COLUMN idtipocontacto ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipocontacto_idtipocontacto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16522)
-- Name: tipocontactoadicional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipocontactoadicional (
    idtipocontactoadicional integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipocontactoadicional OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE tipocontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipocontactoadicional IS 'TRIAL';


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tipocontactoadicional.idtipocontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipocontactoadicional.idtipocontactoadicional IS 'TRIAL';


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tipocontactoadicional.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipocontactoadicional.descripcion IS 'TRIAL';


--
-- TOC entry 255 (class 1259 OID 16853)
-- Name: tipocontactoadicional_idtipocontactoadicional_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipocontactoadicional ALTER COLUMN idtipocontactoadicional ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipocontactoadicional_idtipocontactoadicional_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16527)
-- Name: tipoidentificacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipoidentificacion (
    idtipoidentificacion integer NOT NULL,
    descripcion character varying(20) NOT NULL
);


ALTER TABLE public.tipoidentificacion OWNER TO postgres;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE tipoidentificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipoidentificacion IS 'TRIAL';


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN tipoidentificacion.idtipoidentificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoidentificacion.idtipoidentificacion IS 'TRIAL';


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN tipoidentificacion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoidentificacion.descripcion IS 'TRIAL';


--
-- TOC entry 256 (class 1259 OID 16855)
-- Name: tipoidentificacion_idtipoidentificacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipoidentificacion ALTER COLUMN idtipoidentificacion ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipoidentificacion_idtipoidentificacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16532)
-- Name: tipoocupacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipoocupacion (
    idtipoocupacion integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipoocupacion OWNER TO postgres;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE tipoocupacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipoocupacion IS 'TRIAL';


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tipoocupacion.idtipoocupacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoocupacion.idtipoocupacion IS 'TRIAL';


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tipoocupacion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipoocupacion.descripcion IS 'TRIAL';


--
-- TOC entry 257 (class 1259 OID 16857)
-- Name: tipoocupacion_idtipoocupacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipoocupacion ALTER COLUMN idtipoocupacion ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipoocupacion_idtipoocupacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16537)
-- Name: tipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipousuario (
    idtipousuario integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipousuario OWNER TO postgres;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE tipousuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tipousuario IS 'TRIAL';


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tipousuario.idtipousuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipousuario.idtipousuario IS 'TRIAL';


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tipousuario.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tipousuario.descripcion IS 'TRIAL';


--
-- TOC entry 258 (class 1259 OID 16859)
-- Name: tipousuario_idtipousuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tipousuario ALTER COLUMN idtipousuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipousuario_idtipousuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16542)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    primernombre character varying(20) NOT NULL,
    segundonombre character varying(20) NOT NULL,
    identificacion character(20) NOT NULL,
    fechanacimiento date NOT NULL,
    email character varying(50) NOT NULL,
    imagen bytea
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuario IS 'TRIAL';


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.idusuario IS 'TRIAL';


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.primernombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.primernombre IS 'TRIAL';


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.segundonombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.segundonombre IS 'TRIAL';


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.identificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.identificacion IS 'TRIAL';


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.fechanacimiento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.fechanacimiento IS 'TRIAL';


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.email IS 'TRIAL';


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN usuario.imagen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.imagen IS 'TRIAL';


--
-- TOC entry 259 (class 1259 OID 16861)
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.usuario ALTER COLUMN idusuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16550)
-- Name: usuarioxcontacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxcontacto (
    idusuario integer NOT NULL,
    idcontacto integer NOT NULL
);


ALTER TABLE public.usuarioxcontacto OWNER TO postgres;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE usuarioxcontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxcontacto IS 'TRIAL';


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN usuarioxcontacto.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxcontacto.idusuario IS 'TRIAL';


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN usuarioxcontacto.idcontacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxcontacto.idcontacto IS 'TRIAL';


--
-- TOC entry 225 (class 1259 OID 16555)
-- Name: usuarioxcontactoadicional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxcontactoadicional (
    idusuario integer NOT NULL,
    idcontactoadicional integer NOT NULL
);


ALTER TABLE public.usuarioxcontactoadicional OWNER TO postgres;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE usuarioxcontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxcontactoadicional IS 'TRIAL';


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN usuarioxcontactoadicional.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxcontactoadicional.idusuario IS 'TRIAL';


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN usuarioxcontactoadicional.idcontactoadicional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxcontactoadicional.idcontactoadicional IS 'TRIAL';


--
-- TOC entry 226 (class 1259 OID 16560)
-- Name: usuarioxeps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxeps (
    idusuario integer NOT NULL,
    ideps integer NOT NULL
);


ALTER TABLE public.usuarioxeps OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE usuarioxeps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxeps IS 'TRIAL';


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN usuarioxeps.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxeps.idusuario IS 'TRIAL';


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN usuarioxeps.ideps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxeps.ideps IS 'TRIAL';


--
-- TOC entry 227 (class 1259 OID 16565)
-- Name: usuarioxsexo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxsexo (
    idusuario integer NOT NULL,
    idsexo integer NOT NULL
);


ALTER TABLE public.usuarioxsexo OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE usuarioxsexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxsexo IS 'TRIAL';


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN usuarioxsexo.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxsexo.idusuario IS 'TRIAL';


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN usuarioxsexo.idsexo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxsexo.idsexo IS 'TRIAL';


--
-- TOC entry 228 (class 1259 OID 16570)
-- Name: usuarioxterminoembarazo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxterminoembarazo (
    idterminoembarazo integer NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE public.usuarioxterminoembarazo OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE usuarioxterminoembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxterminoembarazo IS 'TRIAL';


--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN usuarioxterminoembarazo.idterminoembarazo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxterminoembarazo.idterminoembarazo IS 'TRIAL';


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN usuarioxterminoembarazo.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxterminoembarazo.idusuario IS 'TRIAL';


--
-- TOC entry 229 (class 1259 OID 16575)
-- Name: usuarioxtipoafiliacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxtipoafiliacion (
    idusuario integer NOT NULL,
    idtipoafiliacion integer NOT NULL
);


ALTER TABLE public.usuarioxtipoafiliacion OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE usuarioxtipoafiliacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxtipoafiliacion IS 'TRIAL';


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN usuarioxtipoafiliacion.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoafiliacion.idusuario IS 'TRIAL';


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN usuarioxtipoafiliacion.idtipoafiliacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoafiliacion.idtipoafiliacion IS 'TRIAL';


--
-- TOC entry 230 (class 1259 OID 16580)
-- Name: usuarioxtipoidentificacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxtipoidentificacion (
    idusuario integer NOT NULL,
    idtipoidentificacion integer NOT NULL
);


ALTER TABLE public.usuarioxtipoidentificacion OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE usuarioxtipoidentificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxtipoidentificacion IS 'TRIAL';


--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN usuarioxtipoidentificacion.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoidentificacion.idusuario IS 'TRIAL';


--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN usuarioxtipoidentificacion.idtipoidentificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoidentificacion.idtipoidentificacion IS 'TRIAL';


--
-- TOC entry 231 (class 1259 OID 16585)
-- Name: usuarioxtipoocupacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxtipoocupacion (
    idtipoocupacion integer NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE public.usuarioxtipoocupacion OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE usuarioxtipoocupacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxtipoocupacion IS 'TRIAL';


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN usuarioxtipoocupacion.idtipoocupacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoocupacion.idtipoocupacion IS 'TRIAL';


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN usuarioxtipoocupacion.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipoocupacion.idusuario IS 'TRIAL';


--
-- TOC entry 232 (class 1259 OID 16590)
-- Name: usuarioxtipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioxtipousuario (
    idusuario integer NOT NULL,
    idtipousuario integer NOT NULL
);


ALTER TABLE public.usuarioxtipousuario OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE usuarioxtipousuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.usuarioxtipousuario IS 'TRIAL';


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN usuarioxtipousuario.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipousuario.idusuario IS 'TRIAL';


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN usuarioxtipousuario.idtipousuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuarioxtipousuario.idtipousuario IS 'TRIAL';


--
-- TOC entry 233 (class 1259 OID 16595)
-- Name: zona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zona (
    idzona integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.zona OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE zona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.zona IS 'TRIAL';


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN zona.idzona; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.zona.idzona IS 'TRIAL';


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN zona.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.zona.descripcion IS 'TRIAL';


--
-- TOC entry 260 (class 1259 OID 16863)
-- Name: zona_idzona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.zona ALTER COLUMN idzona ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.zona_idzona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3136 (class 0 OID 16394)
-- Dependencies: 196
-- Data for Name: antecedentesfamiliares; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.antecedentesfamiliares (idantecedentesfamiliares, hipertension, cardiopatias, cualcardiopatias, trastornosmentales, cualtranstornomental, epilepsia, neoplasia, cualneoplasia, tuberculosis, preeclampsia, eclampsia, gestacionesmultiples, enfermedadescongenitas, cualesenfermedadescongenitas, otracondicionmedicaespecial, cualcondicionespecial) FROM stdin;
4	si	si	\N	\N	\N	si	\N	\N	si	\N	\N	si	si	si	\N	\N
5	si	si	\N	\N	\N	si	\N	\N	si	\N	\N	si	si	si	\N	\N
6	No	si	\N	\N	\N	si	\N	\N	si	\N	\N	si	si	si	\N	\N
7	No	No	\N	\N	\N	si	\N	\N	si	\N	\N	si	si	si	\N	\N
\.


--
-- TOC entry 3137 (class 0 OID 16402)
-- Dependencies: 197
-- Data for Name: antecedentesgos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.antecedentesgos (idantecedentesgo, edadmenarquia, cirugiagenitourinaria, cualcirugiagenitourinaria, infertilidad, enfermedadpelvicainflamatoria, cualenfermedadpelvicainflamatoria, conizacion, resultadoconizacion, embarazosprevios, fechapartoanterior, numeropartos, "númerocesareas", motivocesarea, "númeronacidosvivos", "númeronacidosmuertos", numeroabortos, muertosprimerasemana, muertosdespuesdelaprimerasemana, recuerdapesoultimohijoalnacer, pesoultimohijo, embarazoectopico, numeroembarazosectopicos, placentaprevia, abrupcioplacentario, restriccioncrecimientointrauterino, rupturaprematuramembranasovulares, hijocondefectoscierretuboneural, antecedentesgemelares, sindromepartopretermino, diabetesgestacional, preeclampsia, eclampsia) FROM stdin;
3	15	No	No	No	No	No	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	20	No	No	No	No	No	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3138 (class 0 OID 16407)
-- Dependencies: 198
-- Data for Name: antecedentesinmunologicos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.antecedentesinmunologicos (idantecedentesinmunologicos, vacunaantirubeola, vacunaantitetanica, vacunaaplicadaultimolustro) FROM stdin;
2	Si	No	No
\.


--
-- TOC entry 3139 (class 0 OID 16412)
-- Dependencies: 199
-- Data for Name: antecedentespersonales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.antecedentespersonales (idantecedentespersonales, lupuseritematososistematico, hipertension, cardiopatias, "cualcardiopatía", nefropatia, cualantecedentenefropatias, enfermedadesautoinmunes, cualenfermedadautoinmune, anticuerposantifosfolipidos, tuberculosis, enfermedadestransmisionsexual, cualets, paludismo_malaria, chagas, antecedentesquirurgicos, alergia, cualalergia, hipotiroidismo, otracondicionmedicaespecial, cualcondicionmedicaespecial, medicamentosactuales) FROM stdin;
1	\N	No	No	\N	\N	\N	No	\N	\N	No	No	No	\N	\N	\N	No	No	\N	\N	\N	No
2	\N	Si	No	\N	\N	\N	No	\N	\N	No	No	No	\N	\N	\N	No	No	\N	\N	\N	No
4	\N	perri	No	\N	\N	\N	No	\N	\N	No	No	No	\N	\N	\N	No	No	\N	\N	\N	No
\.


--
-- TOC entry 3140 (class 0 OID 16420)
-- Dependencies: 200
-- Data for Name: antecedentessociodemograficos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.antecedentessociodemograficos (idantecedentessociodemograficos, alfabeta, nivelestudiosalcanzado, etnia, vivesola, estadocivil, violenciaintrafamiliarreciente, ocupacion_profesion, otro) FROM stdin;
1	\N	\N	perro	No	No	No	\N	\N
2	\N	\N	Si	No	No	No	\N	\N
3	\N	\N	Si	Si	No	No	\N	\N
5	\N	\N	qweqweq	Si	No	No	\N	\N
\.


--
-- TOC entry 3141 (class 0 OID 16425)
-- Dependencies: 201
-- Data for Name: atencioncontrolprenatal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atencioncontrolprenatal (idatencioncontrolprenatal, idusuario, iddatosiniciales, idantecedentesgo, idantecedentespersonales, idantecedentesfamiliares, idantecedentesinmunologicos, idantecedentessociodemograficos, idsintomas, idhabitos, idexamenfisico, idexamenes) FROM stdin;
\.


--
-- TOC entry 3201 (class 0 OID 16865)
-- Dependencies: 261
-- Data for Name: autenticacions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.autenticacions (nombre, password) FROM stdin;
KND	123\n
\.


--
-- TOC entry 3142 (class 0 OID 16430)
-- Dependencies: 202
-- Data for Name: ciudad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciudad (idciudad, descripcion) FROM stdin;
1	Sincelejo
2	Medellin
3	Leticia
4	Arauca
5	Barranquilla
6	Tunja
7	Manizales
8	Yopal
9	Popayan
10	Florencia
11	Valledupar
12	Quibdo
13	Cartagena
14	Monteria
15	Bogota
16	PuertoInirida
17	SanJoseDelGuaviare
18	Neiva
19	Riohacha
20	SantaMarta
21	Villavicencio
22	Pasto
23	Cucuta
24	Mocoa
25	Armenia
26	Pereira
27	SanAndres
28	Bucaramanga
29	Ibague
30	Cali
31	mitu
32	puertoCarreño
\.


--
-- TOC entry 3143 (class 0 OID 16435)
-- Dependencies: 203
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacto (idcontacto, idtipocontacto, idzona, direccion, telefono, idpais, iddepartamento, idciudad) FROM stdin;
\.


--
-- TOC entry 3144 (class 0 OID 16440)
-- Dependencies: 204
-- Data for Name: contactoadicional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contactoadicional (idcontactoadicional, idtipocontactoadicional, telefono, celular, email, direccion, idpais, iddepartamento, idciudad, otros) FROM stdin;
\.


--
-- TOC entry 3145 (class 0 OID 16445)
-- Dependencies: 205
-- Data for Name: datosiniciales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datosiniciales (iddatosiniciales, embarazoplaneado, fracasoelmetodoanticonceptivo, gruposanguineo, rh, recuerdapesoantesdelembarazo, pesoantesdelembarazo, talla) FROM stdin;
\.


--
-- TOC entry 3146 (class 0 OID 16450)
-- Dependencies: 206
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (iddepartamento, descripcion) FROM stdin;
1	Sucre
2	Antioquia
3	Amazonas
4	Arauca
5	Atlantico
6	Boyaca
7	Caldas
8	Casanare
9	Cauca
10	Caqueta
11	Cesar
12	Choco
13	Bolivar
14	Cordoba
15	Cundinamarca
16	Guainia
17	Guaviare
18	Huila
19	Guajira
20	Magdalena
21	Meta
22	Nariño
23	NorteDeSantander
24	Putumayo
25	Quindio
26	Risaralda
27	SanAndresYProvidencia
28	Santander
29	Tolima
30	ValleDelCauca
31	Vaupes
32	Vichada
\.


--
-- TOC entry 3147 (class 0 OID 16455)
-- Dependencies: 207
-- Data for Name: departamentoxciudad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentoxciudad (iddepartamento, idciudad) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
24	24
25	25
26	26
27	27
28	28
29	29
30	30
31	31
32	32
\.


--
-- TOC entry 3148 (class 0 OID 16460)
-- Dependencies: 208
-- Data for Name: eps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eps (ideps, descripcion) FROM stdin;
1	Cafesalud
2	Coomeva
3	Coosalud
4	SaviaSalud
5	Sura
6	Sanitas
\.


--
-- TOC entry 3149 (class 0 OID 16465)
-- Dependencies: 209
-- Data for Name: examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.examenes (idexamenes, traeexamenhemoglobina, hemoglobina, fechatomahemoglobina, hematocrito, resultadohematocritos, hemoclasificacion, gruposanguineohemoclasificacion, rhhemoclasificacion, traepruebavdrl, resultadovdrl, valorvdrl, fechapruebavdrl, pruebarapidatreponemicadisponible, resultadopruebarapidatroponemica, indagarpresenciadeantecentes, traepruebaantigenohepatitisb, resultadoantigenohepatitisb, "fechatomaantígenosuperficiehepatitisb", traepruebavih, resultadoelisa_vih, fechapruebaelisa_vih, examencitologiareciente, observacioncitologia, resultadocitologia, citologiaanormal, frotisvaginal, observacionfrotisvaginal, traepruebaurocultivo, realizoantibiograma, resultadourocultivo, aislamiento, unidadesformadorascolonia, traepruebaglicemia, resultadoglicemia, fechapruebaglicemia, pruebatoxoplasma, toxoplasmaigg, toxoplasmaigm, observacionpruebatoxoplasma, tieneexamenodontologico, valoracionodontologica, otrosparaclinicos) FROM stdin;
\.


--
-- TOC entry 3150 (class 0 OID 16473)
-- Dependencies: 210
-- Data for Name: examenfisico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.examenfisico (idexamenfisico, pulso, frecuenciarespiratoria, presionarterialsistolica, presionarterialdiastolica, saturacionoxigeno, fio2ambiente, temperatura, peso, examenmamas, inspeccionvisualcervix, pielyfaneras, cabezaycuello, torax, abdomenypelvis, extremidades_osteoarticular, neurologicos, tactovaginal, observacionesexamenfisico, fcfdisponible, fcf, alturauterina) FROM stdin;
\.


--
-- TOC entry 3151 (class 0 OID 16481)
-- Dependencies: 211
-- Data for Name: habitos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.habitos (idhabitos, fumadoraactiva, cigarrillosdia, fumadorapasiva, consumedrogas, cualesdrogas, consumoalcohol) FROM stdin;
\.


--
-- TOC entry 3152 (class 0 OID 16486)
-- Dependencies: 212
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pais (idpais, descripcion) FROM stdin;
1	Colombia
\.


--
-- TOC entry 3153 (class 0 OID 16491)
-- Dependencies: 213
-- Data for Name: paisxdepartamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paisxdepartamento (idpais, iddepartamento) FROM stdin;
\.


--
-- TOC entry 3154 (class 0 OID 16496)
-- Dependencies: 214
-- Data for Name: sexo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sexo (idsexo, descripcion) FROM stdin;
1	Mujer
2	Hombre
\.


--
-- TOC entry 3155 (class 0 OID 16501)
-- Dependencies: 215
-- Data for Name: sintomas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sintomas (idsintomas, cefalea, trastornosvisuales, trastornosauditivos, edemacara, epigastralgia, edemamiembros, actividaduterina, leucorrea, amniorrea, sangradovaginal, "síntomasurinarios", movimientosfetales, "náuseas_vómito", disnea, otros) FROM stdin;
\.


--
-- TOC entry 3156 (class 0 OID 16507)
-- Dependencies: 216
-- Data for Name: terminoembarazo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.terminoembarazo (idterminoembarazo, razonterminacionembarazo, otros, conocecausaausenciamaternaencontroles, cualcausa, comunicacionconmaterna, observaciones, fechaaborto, fechayhoraterminaciondeembarazo, tipodeparto, tipocesarea, tiempolactanciarupturamembrana, episiotomia, episiorrafia, desgarroenparto, tipodedesgarro, tiempopinzamientocordon, tipodealumbramiento, placentacompleta, presentohemorragiaobstetrica, requiriotransfusiondehemoderivados, glublosrojos, plaquetas, plasmafrescocongelado, madreingresouci, antibioticobacteria, muertematerna, edadgestacional, sexodelbebe, talladelbebe, pesodelbebe, perimetrocefalico, perimetrotoracico, perimetroabdominal, tshtomada, fechatomatsh, rhtomado, apgar1minuto, apgar5minuto, reanimacionneonatal, rningresoauci, muertefetalparto, muertefetalparto28dias, nivelatencionparto) FROM stdin;
\.


--
-- TOC entry 3157 (class 0 OID 16512)
-- Dependencies: 217
-- Data for Name: tipoafiliacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipoafiliacion (idtipoafiliacion, descripcion) FROM stdin;
1	Cotizante
2	Beneficiario
3	Adicional
\.


--
-- TOC entry 3158 (class 0 OID 16517)
-- Dependencies: 218
-- Data for Name: tipocontacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipocontacto (idtipocontacto, descripcion) FROM stdin;
1	Casa
2	Trabajo
\.


--
-- TOC entry 3159 (class 0 OID 16522)
-- Dependencies: 219
-- Data for Name: tipocontactoadicional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipocontactoadicional (idtipocontactoadicional, descripcion) FROM stdin;
1	Laboral
2	Acudiente_Familiar
3	Emergencia
4	Otro
\.


--
-- TOC entry 3160 (class 0 OID 16527)
-- Dependencies: 220
-- Data for Name: tipoidentificacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipoidentificacion (idtipoidentificacion, descripcion) FROM stdin;
1	TarjetaDeIdentidad
2	CedulaCiudadania
3	CedulaExtranjeria
4	Pasaporte
5	RegistroCivil
\.


--
-- TOC entry 3161 (class 0 OID 16532)
-- Dependencies: 221
-- Data for Name: tipoocupacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipoocupacion (idtipoocupacion, descripcion) FROM stdin;
1	Ingeniero
2	Medico
3	Policia
4	Comerciante
5	Obrero
\.


--
-- TOC entry 3162 (class 0 OID 16537)
-- Dependencies: 222
-- Data for Name: tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipousuario (idtipousuario, descripcion) FROM stdin;
1	Contributivo
2	Subsidiado
3	Vinculado
4	Particular
5	Otro
\.


--
-- TOC entry 3163 (class 0 OID 16542)
-- Dependencies: 223
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (idusuario, primernombre, segundonombre, identificacion, fechanacimiento, email, imagen) FROM stdin;
\.


--
-- TOC entry 3164 (class 0 OID 16550)
-- Dependencies: 224
-- Data for Name: usuarioxcontacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxcontacto (idusuario, idcontacto) FROM stdin;
\.


--
-- TOC entry 3165 (class 0 OID 16555)
-- Dependencies: 225
-- Data for Name: usuarioxcontactoadicional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxcontactoadicional (idusuario, idcontactoadicional) FROM stdin;
\.


--
-- TOC entry 3166 (class 0 OID 16560)
-- Dependencies: 226
-- Data for Name: usuarioxeps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxeps (idusuario, ideps) FROM stdin;
\.


--
-- TOC entry 3167 (class 0 OID 16565)
-- Dependencies: 227
-- Data for Name: usuarioxsexo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxsexo (idusuario, idsexo) FROM stdin;
\.


--
-- TOC entry 3168 (class 0 OID 16570)
-- Dependencies: 228
-- Data for Name: usuarioxterminoembarazo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxterminoembarazo (idterminoembarazo, idusuario) FROM stdin;
\.


--
-- TOC entry 3169 (class 0 OID 16575)
-- Dependencies: 229
-- Data for Name: usuarioxtipoafiliacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxtipoafiliacion (idusuario, idtipoafiliacion) FROM stdin;
\.


--
-- TOC entry 3170 (class 0 OID 16580)
-- Dependencies: 230
-- Data for Name: usuarioxtipoidentificacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxtipoidentificacion (idusuario, idtipoidentificacion) FROM stdin;
\.


--
-- TOC entry 3171 (class 0 OID 16585)
-- Dependencies: 231
-- Data for Name: usuarioxtipoocupacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxtipoocupacion (idtipoocupacion, idusuario) FROM stdin;
\.


--
-- TOC entry 3172 (class 0 OID 16590)
-- Dependencies: 232
-- Data for Name: usuarioxtipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioxtipousuario (idusuario, idtipousuario) FROM stdin;
\.


--
-- TOC entry 3173 (class 0 OID 16595)
-- Dependencies: 233
-- Data for Name: zona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zona (idzona, descripcion) FROM stdin;
1	Rural
2	Urbana
\.


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 234
-- Name: antecedentesfamiliares_idantecedentesfamiliares_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecedentesfamiliares_idantecedentesfamiliares_seq', 9, true);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 235
-- Name: antecedentesgo_idantecedentesgo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecedentesgo_idantecedentesgo_seq', 6, true);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 236
-- Name: antecedentesinmunologicos_idantecedentesinmunologicos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecedentesinmunologicos_idantecedentesinmunologicos_seq', 2, true);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 237
-- Name: antecedentespersonales_idantecedentespersonales_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecedentespersonales_idantecedentespersonales_seq', 5, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 238
-- Name: antecedentessociodemograficos_idantecedentessociodemografic_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecedentessociodemograficos_idantecedentessociodemografic_seq', 5, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 239
-- Name: atencioncontrolprenatal_idatencioncontrolprenatal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atencioncontrolprenatal_idatencioncontrolprenatal_seq', 1, false);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 240
-- Name: ciudad_idciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciudad_idciudad_seq', 1, false);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 241
-- Name: contacto_idcontacto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacto_idcontacto_seq', 1, false);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 242
-- Name: contactoadicional_idcontactoadicional_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contactoadicional_idcontactoadicional_seq', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 243
-- Name: datosiniciales_iddatosiniciales_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datosiniciales_iddatosiniciales_seq', 1, false);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 244
-- Name: departamento_iddepartamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 245
-- Name: eps_ideps_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eps_ideps_seq', 1, false);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 246
-- Name: examenes_idexamenes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenes_idexamenes_seq', 1, false);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 247
-- Name: examenfisico_idexamenfisico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenfisico_idexamenfisico_seq', 1, false);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 248
-- Name: habitos_idhabitos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.habitos_idhabitos_seq', 1, false);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 249
-- Name: pais_idpais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_idpais_seq', 1, false);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 250
-- Name: sexo_idsexo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sexo_idsexo_seq', 1, false);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 251
-- Name: sintomas_idsintomas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sintomas_idsintomas_seq', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 252
-- Name: terminoembarazo_idterminoembarazo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.terminoembarazo_idterminoembarazo_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 253
-- Name: tipoafiliacion_idtipoafiliacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipoafiliacion_idtipoafiliacion_seq', 1, false);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 254
-- Name: tipocontacto_idtipocontacto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipocontacto_idtipocontacto_seq', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 255
-- Name: tipocontactoadicional_idtipocontactoadicional_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipocontactoadicional_idtipocontactoadicional_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 256
-- Name: tipoidentificacion_idtipoidentificacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipoidentificacion_idtipoidentificacion_seq', 1, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 257
-- Name: tipoocupacion_idtipoocupacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipoocupacion_idtipoocupacion_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 258
-- Name: tipousuario_idtipousuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipousuario_idtipousuario_seq', 1, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 259
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_idusuario_seq', 1, false);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 260
-- Name: zona_idzona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zona_idzona_seq', 1, false);


--
-- TOC entry 2972 (class 2606 OID 16874)
-- Name: autenticacions Autenticacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autenticacions
    ADD CONSTRAINT "Autenticacion_pkey" PRIMARY KEY (nombre, password);


--
-- TOC entry 2896 (class 2606 OID 16401)
-- Name: antecedentesfamiliares pk_antecedentesfamiliares; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecedentesfamiliares
    ADD CONSTRAINT pk_antecedentesfamiliares PRIMARY KEY (idantecedentesfamiliares);


--
-- TOC entry 2898 (class 2606 OID 16406)
-- Name: antecedentesgos pk_antecedentesgo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecedentesgos
    ADD CONSTRAINT pk_antecedentesgo PRIMARY KEY (idantecedentesgo);


--
-- TOC entry 2900 (class 2606 OID 16411)
-- Name: antecedentesinmunologicos pk_antecedentesinmunologicos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecedentesinmunologicos
    ADD CONSTRAINT pk_antecedentesinmunologicos PRIMARY KEY (idantecedentesinmunologicos);


--
-- TOC entry 2902 (class 2606 OID 16419)
-- Name: antecedentespersonales pk_antecedentespersonales; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecedentespersonales
    ADD CONSTRAINT pk_antecedentespersonales PRIMARY KEY (idantecedentespersonales);


--
-- TOC entry 2904 (class 2606 OID 16424)
-- Name: antecedentessociodemograficos pk_antecedentessociodemograficos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecedentessociodemograficos
    ADD CONSTRAINT pk_antecedentessociodemograficos PRIMARY KEY (idantecedentessociodemograficos);


--
-- TOC entry 2906 (class 2606 OID 16429)
-- Name: atencioncontrolprenatal pk_atencioncontrolprenatal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT pk_atencioncontrolprenatal PRIMARY KEY (idatencioncontrolprenatal);


--
-- TOC entry 2908 (class 2606 OID 16434)
-- Name: ciudad pk_ciudad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT pk_ciudad PRIMARY KEY (idciudad);


--
-- TOC entry 2910 (class 2606 OID 16439)
-- Name: contacto pk_contacto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT pk_contacto PRIMARY KEY (idcontacto);


--
-- TOC entry 2912 (class 2606 OID 16444)
-- Name: contactoadicional pk_contactoadicional; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactoadicional
    ADD CONSTRAINT pk_contactoadicional PRIMARY KEY (idcontactoadicional);


--
-- TOC entry 2914 (class 2606 OID 16449)
-- Name: datosiniciales pk_datosiniciales; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datosiniciales
    ADD CONSTRAINT pk_datosiniciales PRIMARY KEY (iddatosiniciales);


--
-- TOC entry 2916 (class 2606 OID 16454)
-- Name: departamento pk_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (iddepartamento);


--
-- TOC entry 2918 (class 2606 OID 16459)
-- Name: departamentoxciudad pk_departamentoxciudad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentoxciudad
    ADD CONSTRAINT pk_departamentoxciudad PRIMARY KEY (iddepartamento, idciudad);


--
-- TOC entry 2920 (class 2606 OID 16464)
-- Name: eps pk_eps; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eps
    ADD CONSTRAINT pk_eps PRIMARY KEY (ideps);


--
-- TOC entry 2922 (class 2606 OID 16472)
-- Name: examenes pk_examenes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes
    ADD CONSTRAINT pk_examenes PRIMARY KEY (idexamenes);


--
-- TOC entry 2924 (class 2606 OID 16480)
-- Name: examenfisico pk_examenfisico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenfisico
    ADD CONSTRAINT pk_examenfisico PRIMARY KEY (idexamenfisico);


--
-- TOC entry 2926 (class 2606 OID 16485)
-- Name: habitos pk_habitos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habitos
    ADD CONSTRAINT pk_habitos PRIMARY KEY (idhabitos);


--
-- TOC entry 2928 (class 2606 OID 16490)
-- Name: pais pk_pais; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (idpais);


--
-- TOC entry 2930 (class 2606 OID 16495)
-- Name: paisxdepartamento pk_paisxdepartamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paisxdepartamento
    ADD CONSTRAINT pk_paisxdepartamento PRIMARY KEY (idpais, iddepartamento);


--
-- TOC entry 2932 (class 2606 OID 16500)
-- Name: sexo pk_sexo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT pk_sexo PRIMARY KEY (idsexo);


--
-- TOC entry 2934 (class 2606 OID 16505)
-- Name: sintomas pk_sintomas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sintomas
    ADD CONSTRAINT pk_sintomas PRIMARY KEY (idsintomas);


--
-- TOC entry 2936 (class 2606 OID 16511)
-- Name: terminoembarazo pk_terminoembarazo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terminoembarazo
    ADD CONSTRAINT pk_terminoembarazo PRIMARY KEY (idterminoembarazo);


--
-- TOC entry 2938 (class 2606 OID 16516)
-- Name: tipoafiliacion pk_tipoafiliacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipoafiliacion
    ADD CONSTRAINT pk_tipoafiliacion PRIMARY KEY (idtipoafiliacion);


--
-- TOC entry 2940 (class 2606 OID 16521)
-- Name: tipocontacto pk_tipocontacto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipocontacto
    ADD CONSTRAINT pk_tipocontacto PRIMARY KEY (idtipocontacto);


--
-- TOC entry 2942 (class 2606 OID 16526)
-- Name: tipocontactoadicional pk_tipocontactoadicional; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipocontactoadicional
    ADD CONSTRAINT pk_tipocontactoadicional PRIMARY KEY (idtipocontactoadicional);


--
-- TOC entry 2944 (class 2606 OID 16531)
-- Name: tipoidentificacion pk_tipoidentificacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipoidentificacion
    ADD CONSTRAINT pk_tipoidentificacion PRIMARY KEY (idtipoidentificacion);


--
-- TOC entry 2946 (class 2606 OID 16536)
-- Name: tipoocupacion pk_tipoocupacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipoocupacion
    ADD CONSTRAINT pk_tipoocupacion PRIMARY KEY (idtipoocupacion);


--
-- TOC entry 2948 (class 2606 OID 16541)
-- Name: tipousuario pk_tipousuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipousuario
    ADD CONSTRAINT pk_tipousuario PRIMARY KEY (idtipousuario);


--
-- TOC entry 2950 (class 2606 OID 16549)
-- Name: usuario pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (idusuario);


--
-- TOC entry 2952 (class 2606 OID 16554)
-- Name: usuarioxcontacto pk_usuarioxcontacto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontacto
    ADD CONSTRAINT pk_usuarioxcontacto PRIMARY KEY (idusuario, idcontacto);


--
-- TOC entry 2954 (class 2606 OID 16559)
-- Name: usuarioxcontactoadicional pk_usuarioxcontactoadicional; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontactoadicional
    ADD CONSTRAINT pk_usuarioxcontactoadicional PRIMARY KEY (idusuario, idcontactoadicional);


--
-- TOC entry 2956 (class 2606 OID 16564)
-- Name: usuarioxeps pk_usuarioxeps; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxeps
    ADD CONSTRAINT pk_usuarioxeps PRIMARY KEY (idusuario, ideps);


--
-- TOC entry 2958 (class 2606 OID 16569)
-- Name: usuarioxsexo pk_usuarioxsexo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxsexo
    ADD CONSTRAINT pk_usuarioxsexo PRIMARY KEY (idusuario, idsexo);


--
-- TOC entry 2960 (class 2606 OID 16574)
-- Name: usuarioxterminoembarazo pk_usuarioxterminoembarazo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxterminoembarazo
    ADD CONSTRAINT pk_usuarioxterminoembarazo PRIMARY KEY (idterminoembarazo, idusuario);


--
-- TOC entry 2962 (class 2606 OID 16579)
-- Name: usuarioxtipoafiliacion pk_usuarioxtipoafiliacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoafiliacion
    ADD CONSTRAINT pk_usuarioxtipoafiliacion PRIMARY KEY (idusuario, idtipoafiliacion);


--
-- TOC entry 2964 (class 2606 OID 16584)
-- Name: usuarioxtipoidentificacion pk_usuarioxtipoidentificacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoidentificacion
    ADD CONSTRAINT pk_usuarioxtipoidentificacion PRIMARY KEY (idusuario, idtipoidentificacion);


--
-- TOC entry 2966 (class 2606 OID 16589)
-- Name: usuarioxtipoocupacion pk_usuarioxtipoocupacion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoocupacion
    ADD CONSTRAINT pk_usuarioxtipoocupacion PRIMARY KEY (idtipoocupacion, idusuario);


--
-- TOC entry 2968 (class 2606 OID 16594)
-- Name: usuarioxtipousuario pk_usuarioxtipousuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipousuario
    ADD CONSTRAINT pk_usuarioxtipousuario PRIMARY KEY (idusuario, idtipousuario);


--
-- TOC entry 2970 (class 2606 OID 16599)
-- Name: zona pk_zona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zona
    ADD CONSTRAINT pk_zona PRIMARY KEY (idzona);


--
-- TOC entry 2973 (class 2606 OID 16600)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_antecedentesfamiliares; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_antecedentesfamiliares FOREIGN KEY (idantecedentesfamiliares) REFERENCES public.antecedentesfamiliares(idantecedentesfamiliares);


--
-- TOC entry 2974 (class 2606 OID 16605)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_antecedentesgo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_antecedentesgo FOREIGN KEY (idantecedentesgo) REFERENCES public.antecedentesgos(idantecedentesgo);


--
-- TOC entry 2975 (class 2606 OID 16610)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_antecedentesinmunologicos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_antecedentesinmunologicos FOREIGN KEY (idantecedentesinmunologicos) REFERENCES public.antecedentesinmunologicos(idantecedentesinmunologicos);


--
-- TOC entry 2976 (class 2606 OID 16615)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_antecedentespersonales; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_antecedentespersonales FOREIGN KEY (idantecedentespersonales) REFERENCES public.antecedentespersonales(idantecedentespersonales);


--
-- TOC entry 2977 (class 2606 OID 16620)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_antecedentessociodemograficos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_antecedentessociodemograficos FOREIGN KEY (idantecedentessociodemograficos) REFERENCES public.antecedentessociodemograficos(idantecedentessociodemograficos);


--
-- TOC entry 2978 (class 2606 OID 16625)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_datosiniciales; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_datosiniciales FOREIGN KEY (iddatosiniciales) REFERENCES public.datosiniciales(iddatosiniciales);


--
-- TOC entry 2979 (class 2606 OID 16630)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_examenes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_examenes FOREIGN KEY (idexamenes) REFERENCES public.examenes(idexamenes);


--
-- TOC entry 2980 (class 2606 OID 16635)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_examenfisico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_examenfisico FOREIGN KEY (idexamenfisico) REFERENCES public.examenfisico(idexamenfisico);


--
-- TOC entry 2981 (class 2606 OID 16640)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_habitos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_habitos FOREIGN KEY (idhabitos) REFERENCES public.habitos(idhabitos);


--
-- TOC entry 2982 (class 2606 OID 16645)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_sintomas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_sintomas FOREIGN KEY (idsintomas) REFERENCES public.sintomas(idsintomas);


--
-- TOC entry 2983 (class 2606 OID 16650)
-- Name: atencioncontrolprenatal fk_atencioncontrolprenatal_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atencioncontrolprenatal
    ADD CONSTRAINT fk_atencioncontrolprenatal_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 2984 (class 2606 OID 16655)
-- Name: contacto fk_contacto_ciudad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT fk_contacto_ciudad FOREIGN KEY (idciudad) REFERENCES public.ciudad(idciudad);


--
-- TOC entry 2985 (class 2606 OID 16660)
-- Name: contacto fk_contacto_departamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT fk_contacto_departamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento);


--
-- TOC entry 2986 (class 2606 OID 16665)
-- Name: contacto fk_contacto_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT fk_contacto_pais FOREIGN KEY (idpais) REFERENCES public.pais(idpais);


--
-- TOC entry 2987 (class 2606 OID 16670)
-- Name: contacto fk_contacto_tipocontacto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT fk_contacto_tipocontacto FOREIGN KEY (idtipocontacto) REFERENCES public.tipocontacto(idtipocontacto);


--
-- TOC entry 2988 (class 2606 OID 16675)
-- Name: contacto fk_contacto_zona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT fk_contacto_zona FOREIGN KEY (idzona) REFERENCES public.zona(idzona);


--
-- TOC entry 2989 (class 2606 OID 16680)
-- Name: contactoadicional fk_contactoadicional_ciudad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactoadicional
    ADD CONSTRAINT fk_contactoadicional_ciudad FOREIGN KEY (idciudad) REFERENCES public.ciudad(idciudad);


--
-- TOC entry 2990 (class 2606 OID 16685)
-- Name: contactoadicional fk_contactoadicional_departamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactoadicional
    ADD CONSTRAINT fk_contactoadicional_departamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento);


--
-- TOC entry 2991 (class 2606 OID 16690)
-- Name: contactoadicional fk_contactoadicional_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactoadicional
    ADD CONSTRAINT fk_contactoadicional_pais FOREIGN KEY (idpais) REFERENCES public.pais(idpais);


--
-- TOC entry 2992 (class 2606 OID 16695)
-- Name: contactoadicional fk_contactoadicional_tipocontactoadicional; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactoadicional
    ADD CONSTRAINT fk_contactoadicional_tipocontactoadicional FOREIGN KEY (idtipocontactoadicional) REFERENCES public.tipocontactoadicional(idtipocontactoadicional);


--
-- TOC entry 2993 (class 2606 OID 16700)
-- Name: departamentoxciudad fk_departamentoxciudad_ciudad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentoxciudad
    ADD CONSTRAINT fk_departamentoxciudad_ciudad FOREIGN KEY (idciudad) REFERENCES public.ciudad(idciudad);


--
-- TOC entry 2994 (class 2606 OID 16705)
-- Name: departamentoxciudad fk_departamentoxciudad_departamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentoxciudad
    ADD CONSTRAINT fk_departamentoxciudad_departamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento);


--
-- TOC entry 2995 (class 2606 OID 16710)
-- Name: paisxdepartamento fk_paisxdepartamento_departamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paisxdepartamento
    ADD CONSTRAINT fk_paisxdepartamento_departamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento);


--
-- TOC entry 2996 (class 2606 OID 16715)
-- Name: paisxdepartamento fk_paisxdepartamento_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paisxdepartamento
    ADD CONSTRAINT fk_paisxdepartamento_pais FOREIGN KEY (idpais) REFERENCES public.pais(idpais);


--
-- TOC entry 2997 (class 2606 OID 16720)
-- Name: usuarioxcontacto fk_usuarioxcontacto_contacto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontacto
    ADD CONSTRAINT fk_usuarioxcontacto_contacto FOREIGN KEY (idcontacto) REFERENCES public.contacto(idcontacto);


--
-- TOC entry 2998 (class 2606 OID 16725)
-- Name: usuarioxcontacto fk_usuarioxcontacto_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontacto
    ADD CONSTRAINT fk_usuarioxcontacto_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 2999 (class 2606 OID 16730)
-- Name: usuarioxcontactoadicional fk_usuarioxcontactoadicional_contactoadicional; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontactoadicional
    ADD CONSTRAINT fk_usuarioxcontactoadicional_contactoadicional FOREIGN KEY (idcontactoadicional) REFERENCES public.contactoadicional(idcontactoadicional);


--
-- TOC entry 3000 (class 2606 OID 16735)
-- Name: usuarioxcontactoadicional fk_usuarioxcontactoadicional_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxcontactoadicional
    ADD CONSTRAINT fk_usuarioxcontactoadicional_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3001 (class 2606 OID 16740)
-- Name: usuarioxeps fk_usuarioxeps_eps; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxeps
    ADD CONSTRAINT fk_usuarioxeps_eps FOREIGN KEY (ideps) REFERENCES public.eps(ideps);


--
-- TOC entry 3002 (class 2606 OID 16745)
-- Name: usuarioxeps fk_usuarioxeps_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxeps
    ADD CONSTRAINT fk_usuarioxeps_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3003 (class 2606 OID 16750)
-- Name: usuarioxsexo fk_usuarioxsexo_sexo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxsexo
    ADD CONSTRAINT fk_usuarioxsexo_sexo FOREIGN KEY (idsexo) REFERENCES public.sexo(idsexo);


--
-- TOC entry 3004 (class 2606 OID 16755)
-- Name: usuarioxsexo fk_usuarioxsexo_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxsexo
    ADD CONSTRAINT fk_usuarioxsexo_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3005 (class 2606 OID 16760)
-- Name: usuarioxterminoembarazo fk_usuarioxterminoembarazo_terminoembarazo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxterminoembarazo
    ADD CONSTRAINT fk_usuarioxterminoembarazo_terminoembarazo FOREIGN KEY (idterminoembarazo) REFERENCES public.terminoembarazo(idterminoembarazo);


--
-- TOC entry 3006 (class 2606 OID 16765)
-- Name: usuarioxterminoembarazo fk_usuarioxterminoembarazo_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxterminoembarazo
    ADD CONSTRAINT fk_usuarioxterminoembarazo_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3007 (class 2606 OID 16770)
-- Name: usuarioxtipoafiliacion fk_usuarioxtipoafiliacion_tipoafiliacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoafiliacion
    ADD CONSTRAINT fk_usuarioxtipoafiliacion_tipoafiliacion FOREIGN KEY (idtipoafiliacion) REFERENCES public.tipoafiliacion(idtipoafiliacion);


--
-- TOC entry 3008 (class 2606 OID 16775)
-- Name: usuarioxtipoafiliacion fk_usuarioxtipoafiliacion_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoafiliacion
    ADD CONSTRAINT fk_usuarioxtipoafiliacion_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3009 (class 2606 OID 16780)
-- Name: usuarioxtipoidentificacion fk_usuarioxtipoidentificacion_tipoidentificacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoidentificacion
    ADD CONSTRAINT fk_usuarioxtipoidentificacion_tipoidentificacion FOREIGN KEY (idtipoidentificacion) REFERENCES public.tipoidentificacion(idtipoidentificacion);


--
-- TOC entry 3010 (class 2606 OID 16785)
-- Name: usuarioxtipoidentificacion fk_usuarioxtipoidentificacion_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoidentificacion
    ADD CONSTRAINT fk_usuarioxtipoidentificacion_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3011 (class 2606 OID 16790)
-- Name: usuarioxtipoocupacion fk_usuarioxtipoocupacion_tipoocupacion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoocupacion
    ADD CONSTRAINT fk_usuarioxtipoocupacion_tipoocupacion FOREIGN KEY (idtipoocupacion) REFERENCES public.tipoocupacion(idtipoocupacion);


--
-- TOC entry 3012 (class 2606 OID 16795)
-- Name: usuarioxtipoocupacion fk_usuarioxtipoocupacion_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipoocupacion
    ADD CONSTRAINT fk_usuarioxtipoocupacion_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


--
-- TOC entry 3013 (class 2606 OID 16800)
-- Name: usuarioxtipousuario fk_usuarioxtipousuario_tipousuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipousuario
    ADD CONSTRAINT fk_usuarioxtipousuario_tipousuario FOREIGN KEY (idtipousuario) REFERENCES public.tipousuario(idtipousuario);


--
-- TOC entry 3014 (class 2606 OID 16805)
-- Name: usuarioxtipousuario fk_usuarioxtipousuario_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioxtipousuario
    ADD CONSTRAINT fk_usuarioxtipousuario_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);


-- Completed on 2019-11-18 00:02:34

--
-- PostgreSQL database dump complete
--

