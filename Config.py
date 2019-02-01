class Config(object):
    ACCOUNT = 'admin'
    PASSWORD = 'admin123'


class ProductionConfig(Config):
    DB = '127.0.0.1'
    PORT = 27017
    DBUSERNAME = 'scan'
    DBPASSWORD = '123456'
    DBNAME = 'xunfeng'
