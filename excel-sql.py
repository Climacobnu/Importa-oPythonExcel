import pandas as pd
from sqlalchemy import create_engine


df = pd.read_excel('dim_pais.xlsx')
 
# format: mysql://user:pass@host/db
engine = create_engine('mysql://root:root@127.0.0.1/prova')
df.to_sql('dim_pais', con=engine)



df = pd.read_excel('dim_cnae_sh4_case.xlsx')
 
# format: mysql://user:pass@host/db
engine = create_engine('mysql://root:root@127.0.0.1/prova')
df.to_sql('dim_cnae_sh4_case', con=engine)




df = pd.read_excel('comex_mun_sc.xlsx')
 
# format: mysql://user:pass@host/db
engine = create_engine('mysql://root:root@127.0.0.1/prova')
df.to_sql('comex_mun_sc', con=engine)



df = pd.read_excel('dim_mun_br_case.xlsx')
 
# format: mysql://user:pass@host/db
engine = create_engine('mysql://root:root@127.0.0.1/prova')
df.to_sql('dim_mun_br_case', con=engine)
