import requests
import csv

from bs4 import BeautifulSoup

#car_manufacture = ['AUDI', 'BMW', 'CITROËN', 'FIAT', 'FORD', 'HONDA', 'HYUNDAI', 'KIA', 'MAZDA', 'MERCEDES', 'BENZ', 'MITSUBISHI', 'NISSAN', 'OPEL', 'PEUGEOT', 'RENAULT', 'SEAT', 'SKODA', 'TOYOTA', 'VOLVO', 'VW', 'ABARTH', 'AC', 'AIXAM', 'ALFA', 'ROMEO', 'ALPINA', 'ALPINE', 'AMC', 'APOLLO', 'ARO', 'ARTEGA', 'ASIA', 'MOTORS', 'ASTON', 'MARTIN', 'AUDI', 'AUSTIN', 'AUSTIN', 'HEALEY', 'AUTO', 'UNION', 'AUTOBIANCHI', 'BARKAS', 'BEDFORD', 'BENTLEY', 'BERTONE', 'BITTER', 'BIZZARRINI', 'BMW', 'BORGWARD', 'BRILLIANCE', 'BRISTOL', 'BUGATTI', 'BUICK', 'CADILLAC', 'CALLAWAY', 'CATERHAM', 'CHEVROLET', 'CHRYSLER', 'CITROËN', 'CUPRA', 'DACIA', 'DAEWOO', 'DAF', 'DAIHATSU', 'DAIMLER', 'DE', 'LOREAN', 'DE', 'TOMASO', 'DFSK', 'DODGE', 'DONKERVOORT', 'DS', 'e.GO', 'FERRARI', 'FIAT', 'FISKER', 'FORD', 'FORD', 'USA', 'FSO', 'GAZ', 'GEELY', 'GENESIS', 'GERMAN', 'E-CARS', 'GLAS', 'GMC', 'GOUPIL', 'GUMPERT', 'HONDA', 'HUMMER', 'HYUNDAI', 'INFINITI', 'INNOCENTI', 'IRMSCHER', 'ISDERA', 'ISO', 'ISORIVOLTA', 'ISUZU', 'IVECO', 'JAGUAR', 'JEEP', 'KIA', 'KOENIGSEGG', 'KTM', 'LADA', 'LAMBORGHINI', 'LANCIA', 'LAND', 'ROVER', 'LANDWIND', '(JMC)', 'LDV', 'LEVC', 'LEXUS', 'LIGIER', 'LINCOLN', 'LLOYD', 'LOTUS', 'LTI', 'MAHINDRA', 'MAN', 'MARCOS', 'MASERATI', 'MAXUS', 'MAYBACH', 'MAZDA', 'MCLAREN', 'MEGA', 'MERCEDES-BENZ', 'METROCAB', 'MG', 'MIA', 'ELECTRIC', 'MICROCAR', 'MINELLI', 'MINI', 'MITSUBISHI', 'MITSUOKA', 'MORGAN', 'MORRIS', 'MOSKVICH', 'NISSAN', 'NSU', 'OLDSMOBILE', 'OPEL', 'PAGANI', 'PEUGEOT', 'PIAGGIO', 'PININFARINA', 'PLYMOUTH', 'POLARIS', 'POLESTAR', 'PONTIAC', 'PORSCHE', 'PROTON', 'PUCH', 'RENAULT', 'RENAULT', 'TRUCKS', 'REVA', '(MAHINDRA)', 'RILEY', 'ROLLS-ROYCE', 'ROVER', 'RUF', 'SAAB', 'SANTANA', 'SEAT', 'SHUANGHUAN', 'SKODA', 'SMART', 'SPYKER', 'SSANGYONG', 'STEYR', 'STREETSCOOTER', 'SUBARU', 'SUZUKI', 'TALBOT', 'TATA', 'TAZZARI', 'TESLA', 'THINK', 'TOYOTA', 'TRABANT', 'TRIUMPH', 'TVR', 'UAZ', 'VAUXHALL', 'VECTOR', 'VOLVO', 'VW', 'WARTBURG', 'WIESMANN', 'ZASTAVA', 'ZAZ', 'ZUENDAPP']
# audi_model_option = ['100 (43, C2), 06/76 bis 09/82', '100 (44, 44Q, C3), 08/82 bis 07/91', '100 (4A2, C4), 12/90 bis 07/94', '100 (C1), 11/68 bis 07/76', '100 Avant (43, C2), 07/77 bis 02/83', '100 Avant (44, 44Q, C3), 08/82 bis 11/90', '100 Avant (4A5, C4), 12/90 bis 11/94', '100 Coupe (C1), 01/70 bis 12/76', '200 (43), 10/79 bis 09/82', '200 (44, 44Q), 06/83 bis 12/91', '200 Avant (44, 44Q), 09/83 bis 12/91', '50 (86), 08/74 bis 07/78', '60, 09/68 bis 08/72', '60 Variant, 09/68 bis 08/72', '75, 09/68 bis 08/72', '75 Variant, 09/68 bis 08/72', '80, 09/66 bis 08/68', '80 (80, 82, B1), 05/72 bis 07/78', '80 (81, 85, B2), 08/78 bis 03/87', '80 (89, 89Q, 8A, B3), 06/86 bis 10/91', '80 (8C2, B4), 09/91 bis 07/95', '80 Avant (8C5, B4), 09/91 bis 01/96', '80 Variant, 09/66 bis 08/68', '90 (81, 85, B2), 08/84 bis 03/87', '90 (89, 89Q, 8A, B3), 04/87 bis 09/91', 'A1 (8X1, 8XK), 05/10 bis 10/18', 'A1 CITY CARVER (GBH), ab 07/19', 'A1 Sportback (8XA, 8XF), 09/11 bis 10/18', 'A1 Sportback (GBA), ab 07/18', 'A2 (8Z0), 02/00 bis 08/05', 'A3 (8L1), 09/96 bis 09/06', 'A3 (8P1), 05/03 bis 12/13', 'A3 (8V1, 8VK), ab 04/12', 'A3 Cabriolet (8P7), 04/08 bis 05/13', 'A3 Cabriolet (8V7, 8VE), ab 10/13', 'A3 Limousine (8VS, 8VM), ab 05/13', 'A3 Limousine (8YS), ab 04/20', 'A3 Sportback (8PA), 09/04 bis 12/15', 'A3 Sportback (8VA, 8VF), ab 09/12', 'A3 Sportback (8YA), ab 11/19', 'A4 (8D2, B5), 11/94 bis 12/01', 'A4 (8E2, B6), 11/00 bis 12/05', 'A4 (8EC, B7), 11/04 bis 06/08', 'A4 (8K2, B8), 08/07 bis 12/15', 'A4 (8W2, 8WC, B9), ab 05/15', 'A4 Allroad (8KH, B8), 04/09 bis 05/16', 'A4 Allroad (8WH, 8WJ, B9), ab 01/16', 'A4 Avant (8D5, B5), 11/94 bis 12/02', 'A4 Avant (8E5, B6), 02/00 bis 12/05', 'A4 Avant (8ED, B7), 11/04 bis 06/08', 'A4 Avant (8K5, B8), 11/07 bis 12/15', 'A4 Avant (8W5, 8WD, B9), ab 08/15', 'A4 Cabriolet (8H7, B6, 8HE, B7), 01/02 bis 12/09', 'A5 (8T3), 06/07 bis 01/17', 'A5 (F53, F5P), ab 06/16', 'A5 Cabriolet (8F7), 02/09 bis 01/17', 'A5 Cabriolet (F57, F5E), ab 11/16', 'A5 Sportback (8TA), 07/07 bis 01/17', 'A5 Sportback (F5A, F5F), ab 06/16', 'A6 (4A2, C4), 06/94 bis 10/97', 'A6 (4A2, C8), ab 02/18', 'A6 (4B2, C5), 01/97 bis 08/05', 'A6 (4F2, C6), 04/04 bis 08/11', 'A6 (4G2, 4GC, C7), 11/10 bis 09/18', 'A6 Allroad (4AH, C8), ab 11/18', 'A6 Allroad (4FH, C6), 03/06 bis 08/11', 'A6 Allroad (4GH, 4GJ, C7), 01/12 bis 09/18', 'A6 Avant (4A5, C4), 06/94 bis 12/97', 'A6 Avant (4A5, C8), ab 05/18', 'A6 Avant (4B5, C5), 11/97 bis 01/05', 'A6 Avant (4F5, C6), 11/04 bis 08/11', 'A6 Avant (4G5, 4GD, C7), 05/11 bis 09/18', 'A7 Sportback (4GA, 4GF), 07/10 bis 05/18', 'A7 Sportback (4KA), ab 10/17', 'A8 (4D2, 4D8), 03/94 bis 12/05', 'A8 (4E2, 4E8), 10/02 bis 12/10', 'A8 (4H2, 4H8, 4HC, 4HL), 11/09 bis 01/18', 'A8 (4N2, 4N8), ab 06/17', 'ALLROAD (4BH, C5), 05/00 bis 08/05', 'CABRIOLET (8G7, B4), 05/91 bis 08/00', 'COUPE (81, 85), 07/80 bis 10/88', 'COUPE (89, 8B), 10/88 bis 12/96', 'E-TRON (GEN_), ab 09/18', 'E-TRON Sportback (GEA), ab 09/19', 'F103, 08/65 bis 08/68', 'F103 Variant, 04/66 bis 08/68', 'Q2 (GAB), ab 06/16', 'Q3 (8UB, 8UG), 06/11 bis 10/18', 'Q3 (F3B), ab 07/18', 'Q3 Sportback (F3N), ab 06/19', 'Q5 (8RB), 11/08 bis 12/17', 'Q5 (FYB), ab 05/16', 'Q7 (4LB), 03/06 bis 01/16', 'Q7 (4MB, 4MG), ab 01/15', 'Q8 (4MN), ab 02/18', 'QUATTRO (85), 07/80 bis 07/91', 'R8 (422, 423), 04/07 bis 07/15', 'R8 (4S3, 4SP), ab 07/15', 'R8 Spyder (427, 429), 02/10 bis 07/15', 'R8 Spyder (4S9, 4SR), ab 05/16', 'SUPER 90, 09/66 bis 11/71', 'TT (8J3), 07/06 bis 01/15', 'TT (8N3), 10/98 bis 06/06', 'TT (FV3, FVP), ab 07/14', 'TT Roadster (8J9), 03/07 bis 06/14', 'TT Roadster (8N9), 10/99 bis 06/06', 'TT Roadster (FV9, FVR), ab 11/14', 'V8 (441, 442, 4C2, 4C8), 10/88 bis 02/94']
# audi_model_option_value = ['10', '13', '19', '53', '25', '30', '36', '48', '172', '176', '1940', '433', '1500', '1501', '1502', '4553', '8554', '14', '26', '31', '1', '6', '8555', '78', '84', '8604', '40147', '9730', '38933', '4382', '1557', '4955', '10253', '6724', '11611', '11282', '40796', '5143', '10459', '40531', '253', '4731', '5376', '6418', '14695', '8031', '36378', '3485', '4797', '5377', '6988', '14696', '4840', '6243', '36928', '8030', '37293', '8159', '37116', '258', '38843', '1891', '5110', '9154', '39591', '5546', '10161', '3468', '38844', '3395', '5381', '9627', '8986', '38471', '265', '4935', '8627', '38219', '4632', '438', '194', '202', '39213', '40160', '8552', '8553', '36543', '9731', '38997', '40155', '7534', '37161', '5461', '14159', '38836', '3910', '6244', '14514', '8262', '36765', '4554', '5544', '3851', '12912', '5608', '4089', '13274', '485']
# audi_type_option = ['1.6, 85 PS, 63 kW, 08/76 bis 07/82', '1.9, 100 PS, 74 kW, 08/80 bis 07/82', '2.0, 115 PS, 85 kW, 06/76 bis 08/78', '2.0 D, 70 PS, 51 kW, 08/78 bis 07/82', '2.1, 115 PS, 85 kW, 10/77 bis 07/82', '2.1, 136 PS, 100 kW, 03/77 bis 07/82']
# audi_type_option_value = ['1157', '1160', '1297', '1966', '1298', '1299']







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
    




    
