import pandas as pd

x = pd.read_html('~/Downloads/client.ovpn')
y = pd.read_html('~/Downloads/client.ovpn')

y.pop()
