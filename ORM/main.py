import sqlalchemy
import sqlalchemy as sq
from models import create_tables
from sqlalchemy.orm import declarative_base, relationship, sessionmaker

DSN = "postgresql://postgres:gbnjy,fps@localhost:5432/test_ORM"
engine = sqlalchemy.create_engine(DSN)

create_tables(engine)

Session = sessionmaker(bind=engine)
session = Session()




session.close()