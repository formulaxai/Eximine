import pandas as pd
from eximine import settings
from app.models import importexportdata
from sqlalchemy import create_engine

def importer(request):
    df=pd.read_excel("datafile.xlsx")
    # df.columns=["id", "name", "address", "kind"]
    df.set_index("id", inplace=True)
    print(df.dtypes)
    user = settings.DATABASES['default']['root']
    password = settings.DATABASES['default']['']
    database_name = settings.DATABASES['default']['dummy']

    database_url = 'mysql://{user}:{password}@localhost:5433/{database_name}'.format(
        user=user,
        password=password,
        database_name=database_name,
    )
    engine = create_engine(database_url, echo=False)
    df.to_sql(importexportdata, con=engine,  if_exists='append')