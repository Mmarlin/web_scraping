import requests
import csv

from datetime import datetime
from bs4 import BeautifulSoup

URL = 'https://www.kfzteile24.de/ersatzteile-verschleissteile/bremsanlage/bremsscheiben?ktypnr=1157'
page = requests.get(URL)

soup = BeautifulSoup(page.content, 'html.parser')
title = soup.find('div',class_='posRel inlineBlock')
title = "".join(title.div["title"])
print(type(title))
'''
data = []

for d in soup.findAll('div', attrs={'class':'art-name'}):
    #print(d)
    part_id_elem = d.find('span', attrs={'class':'art-nr'})
    price_id_elem = d.find('span',attrs={'class':'priceTypeGross'})
    part_id = part_id_elem.text.split()
    p=""
    
    print(p.join(part_id[1:]))
    print(price_id_elem.text.split())
    '''