create database prova;
use prova;

SHOW INDEXES FROM comex_mun_sc;
ALTER TABLE comex_mun_sc DROP INDEX cd_mun_idx;



ALTER TABLE comex_mun_sc
ADD id INT PRIMARY KEY auto_increment;

ALTER TABLE comex_mun_sc ADD CONSTRAINT FOREIGN KEY (cd_mun) REFERENCES dim_mun_BR_case(cd_mun);
ALTER TABLE comex_mun_sc ADD CONSTRAINT FOREIGN KEY (cd_sh4) REFERENCES dim_cnae_sh4(cd_sh4);
ALTER TABLE comex_mun_sc ADD CONSTRAINT FOREIGN KEY (cd_pais) REFERENCES dim_pais(cd_pais);


select * from comex_mun_sc;
select * from dim_mun_br_case;
select * from  dim_cnae_sh4_case;
select * from dim_pais;



select a.cd_mun, b.nm_mun
from comex_mun_sc as a
INNER JOIN dim_mun_br_case as b
ON a.cd_mun = b.cd_mun;


select a.cd_mun,  a.nr_valor, d.nm_pais, a.nm_atividade, a.dt_mes, a.dt_ano, b.nm_mesorregiao, b.nm_mun, b.nm_uf,  b.nm_microrregiao, c.produto, c.setor_economico, b.altitude, b.longitude, b.latitude
from comex_mun_sc as a
INNER JOIN dim_mun_br_case as b ON a.cd_mun = b.cd_mun
INNER JOIN dim_cnae_sh4_case as c ON a.cd_sh4 = c.cd_sh4 
INNER JOIN dim_pais as d ON a.cd_pais = d.cd_pais 
ORDER BY  dt_ano = 2022 DESC, nr_valor DESC;


select cd_sh4, produto, setor_economico from dim_cnae_sh4_case where cd_sh4 = ('6204');
select cd_sh4, produto, setor_economico from dim_cnae_sh4_case where cd_sh4 = ('4407');
select cd_sh4, produto, setor_economico from dim_cnae_sh4_case where cd_sh4 = ('1905');
select cd_sh4, produto, setor_economico from dim_cnae_sh4_case where cd_sh4 = ('3919');




select a.cd_mun, a.dt_ano, a.dt_mes, a.cd_sh4, a.cd_pais, a.nr_valor
from comex_mun_sc AS a
ORDER BY nr_valor DESC;