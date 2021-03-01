import requests
import csv

from bs4 import BeautifulSoup

#car_manufacture = ['AUDI', 'BMW', 'CITROËN', 'FIAT', 'FORD', 'HONDA', 'HYUNDAI', 'KIA', 'MAZDA', 'MERCEDES', 'BENZ', 'MITSUBISHI', 'NISSAN', 'OPEL', 'PEUGEOT', 'RENAULT', 'SEAT', 'SKODA', 'TOYOTA', 'VOLVO', 'VW', 'ABARTH', 'AC', 'AIXAM', 'ALFA', 'ROMEO', 'ALPINA', 'ALPINE', 'AMC', 'APOLLO', 'ARO', 'ARTEGA', 'ASIA', 'MOTORS', 'ASTON', 'MARTIN', 'AUDI', 'AUSTIN', 'AUSTIN', 'HEALEY', 'AUTO', 'UNION', 'AUTOBIANCHI', 'BARKAS', 'BEDFORD', 'BENTLEY', 'BERTONE', 'BITTER', 'BIZZARRINI', 'BMW', 'BORGWARD', 'BRILLIANCE', 'BRISTOL', 'BUGATTI', 'BUICK', 'CADILLAC', 'CALLAWAY', 'CATERHAM', 'CHEVROLET', 'CHRYSLER', 'CITROËN', 'CUPRA', 'DACIA', 'DAEWOO', 'DAF', 'DAIHATSU', 'DAIMLER', 'DE', 'LOREAN', 'DE', 'TOMASO', 'DFSK', 'DODGE', 'DONKERVOORT', 'DS', 'e.GO', 'FERRARI', 'FIAT', 'FISKER', 'FORD', 'FORD', 'USA', 'FSO', 'GAZ', 'GEELY', 'GENESIS', 'GERMAN', 'E-CARS', 'GLAS', 'GMC', 'GOUPIL', 'GUMPERT', 'HONDA', 'HUMMER', 'HYUNDAI', 'INFINITI', 'INNOCENTI', 'IRMSCHER', 'ISDERA', 'ISO', 'ISORIVOLTA', 'ISUZU', 'IVECO', 'JAGUAR', 'JEEP', 'KIA', 'KOENIGSEGG', 'KTM', 'LADA', 'LAMBORGHINI', 'LANCIA', 'LAND', 'ROVER', 'LANDWIND', '(JMC)', 'LDV', 'LEVC', 'LEXUS', 'LIGIER', 'LINCOLN', 'LLOYD', 'LOTUS', 'LTI', 'MAHINDRA', 'MAN', 'MARCOS', 'MASERATI', 'MAXUS', 'MAYBACH', 'MAZDA', 'MCLAREN', 'MEGA', 'MERCEDES-BENZ', 'METROCAB', 'MG', 'MIA', 'ELECTRIC', 'MICROCAR', 'MINELLI', 'MINI', 'MITSUBISHI', 'MITSUOKA', 'MORGAN', 'MORRIS', 'MOSKVICH', 'NISSAN', 'NSU', 'OLDSMOBILE', 'OPEL', 'PAGANI', 'PEUGEOT', 'PIAGGIO', 'PININFARINA', 'PLYMOUTH', 'POLARIS', 'POLESTAR', 'PONTIAC', 'PORSCHE', 'PROTON', 'PUCH', 'RENAULT', 'RENAULT', 'TRUCKS', 'REVA', '(MAHINDRA)', 'RILEY', 'ROLLS-ROYCE', 'ROVER', 'RUF', 'SAAB', 'SANTANA', 'SEAT', 'SHUANGHUAN', 'SKODA', 'SMART', 'SPYKER', 'SSANGYONG', 'STEYR', 'STREETSCOOTER', 'SUBARU', 'SUZUKI', 'TALBOT', 'TATA', 'TAZZARI', 'TESLA', 'THINK', 'TOYOTA', 'TRABANT', 'TRIUMPH', 'TVR', 'UAZ', 'VAUXHALL', 'VECTOR', 'VOLVO', 'VW', 'WARTBURG', 'WIESMANN', 'ZASTAVA', 'ZAZ', 'ZUENDAPP']

URL = 'https://www.kfzteile24.de/ersatzteile-verschleissteile/bremsanlage/bremsscheiben?ktypnr=1157'
URL1 = 'https://www.kfzteile24.de/ersatzteile-verschleissteile/bremsanlage/bremsscheiben?ktypnr=1160'
page = requests.get(URL1)



soup = BeautifulSoup(page.content, 'html.parser')

title = soup.find('div',class_='posRel inlineBlock')
title = "".join(title.div["title"])
with open('data.csv', 'a') as csv_file:
    writer = csv.writer(csv_file)
    writer.writerow(title)


all = []
manufactures = soup.find_all('div', class_='art-article')
print(len(manufactures))
for manufacture in manufactures:
    span_elem = manufacture.find('span',class_='art-nr')
    price_elem = manufacture.find('span',class_='priceTypeGross')
    logo_elem = manufacture.find('img')
    if None in (span_elem,price_elem):
        continue
    
    p=""
    p1=""
    part_id = span_elem.text[9:].split()
    part = p.join(part_id)
    price_id = price_elem.text.split()
    price = p1.join(price_id[0:])
    price = price.replace(",",".")
    img_name = logo_elem["alt"]
    all.append((part,price,img_name))
  
    #print(part,price,end="")


with open('data.csv', 'a') as csv_file:
    writer = csv.writer(csv_file)
    # The for loop
    for part, price, img_name in all:
        writer.writerow([part, price,img_name])
    




    
