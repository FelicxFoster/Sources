# 导入:
from sqlalchemy import Column, Integer, String, create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

# 创建对象的基类:
Base = declarative_base()

# 定义User对象:
class User(Base):
    # 表的名字:
    __tablename__ = 'user'

    # 表的结构:
    id = Column(Integer, primary_key=True)
    name = Column(String(20))

# 初始化数据库连接(test已存在):
engine = create_engine('mysql+mysqlconnector://root:sqd11147214@localhost:3306/test')


# 创建数据表
Base.metadata.create_all(engine)


# 创建DBSession类型:
DBSession = sessionmaker(bind=engine)

session = DBSession()

#session.add(User(id=3, name='Bob'))
#session.add_all([
#	User(id=1, name="zoro"),
#	User(id=2, name="luffy"),
#	User(id=4, name="sanji"),
#	User(id=6, name="nami")
#])

result = session.execute('select * from user')
print result.fetchall()
print '*****'

for user in session.query(User).order_by(User.id):
	print user.id, user.name


session.commit()
session.close()
