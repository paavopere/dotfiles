def get_engine(user, password, host, port, database='', connect_args=None):
    from sqlalchemy import create_engine
    if connect_args == None:
        connect_args = dict()
    protocol = 'mysql'
    connect_string = '{}://{}:{}@{}:{}/{}'.format(protocol, user, password, host, port, database)
    return create_engine(connect_string, connect_args=connect_args)

def engine_from_json_file(config_path):
    import json
    with open(config_path) as f:
        config = json.load(f)
    return get_engine(**config)

def paavosql():
    return engine_from_json_file('/home/paavo/.mysql/reportingdb.json')

dbe = db_engine = paavosql
