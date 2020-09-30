import yaml

config.set('auto_save.session', True)
config.set('colors.tabs.indicator.system', 'rgb')
config.set('statusbar.position','bottom')
config.set('downloads.location.directory', '/home/gabriel/Bibliotecas/Downloads')

config.bind('I','spawn --userscript qute-pass')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('x', 'tab-close')
c.fonts.default_family = 'SF Pro Display'

with (config.configdir / '/home/gabriel/.config/qutebrowser/qutebrowser.yml').open() as f:
    yaml_data = yaml.safe_load(f)

def dict_attrs(obj, path=''):
    if isinstance(obj, dict):
        for k, v in obj.items():
            yield from dict_attrs(v, '{}.{}'.format(path, k) if path else k)
    else:
        yield path, obj

for k, v in dict_attrs(yaml_data):
    config.set(k, v)
