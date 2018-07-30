def get_engine(user, password, host, port, database='', connect_args=None, url_params=None):
    from sqlalchemy import create_engine
    if connect_args is None:
        connect_args = dict()
    protocol = 'mysql'
    param_str = url_params_str(url_params)
    connect_string = '{}://{}:{}@{}:{}/{}{}'.format(
        protocol, user, password, host, port, database, param_str)
    return create_engine(connect_string, connect_args=connect_args)

def url_params_str(url_params: {dict, None} = None) -> str:
    """
    >>> url_params_str(dict(a='lol', b=123))
    '?a=lol&b=123'
    >>> url_params_str()
    ''
    """
    if not url_params:
        return ''
    return '?' + '&'.join('{0}={1}'.format(k, v) for k, v in url_params.items())

def engine_from_json_file(config_path, **kwargs):
    import json
    with open(config_path) as f:
        config = json.load(f)
    return get_engine(**config, **kwargs)

def paavosql(**kwargs):
    return engine_from_json_file('/home/paavo/.mysql/reportingdb.json', **kwargs)

dbe = db_engine = paavosql
