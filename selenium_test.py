import time
import xlsxwriter

from selenium import webdriver
from selenium.webdriver.support.select import Select
from time import sleep
from selenium.webdriver.common.keys import Keys
from selenium.webdriver import ActionChains


browser = webdriver.Chrome('C:\\Users\\marli\\Downloads\\chromedriver_win32\\chromedriver.exe')
browser.get('https://www.kfzteile24.de')


# Brand Selection
brand = Select(browser.find_element_by_class_name("brandSelector"))
brand.select_by_visible_text("AUDI")
sleep(2)

# Model Selection
model = Select(browser.find_element_by_class_name("modelSelector"))
model.select_by_index(1)
sleep(2)

# Type Selector
ctype = Select(browser.find_element_by_class_name("typeSelector"))
ctype.select_by_index(1)
sleep(4)


'''
# Confirm Button
browser.find_element_by_id('confirmKfzButton').click()
sleep(2)

# Breaking System selection
braking=browser.find_element_by_xpath("//*[contains(text(), 'Bremsanlage')]").click()
sleep(2)

# Break Disc selection
braking=browser.find_element_by_xpath("//*[contains(text(), 'Bremsscheiben')]").click()
sleep(2)

# Scroll down to the bottom of the page
l=browser.find_element_by_xpath("//*[contains(text(), 'Copyright © 2021 kfzteile24.de - Alle Rechte vorbehalten')]")
# action object creation to scroll
a = ActionChains(browser)
a.move_to_element(l).perform()
sleep(10)




# Create a workbook and add a worksheet.
workbook = xlsxwriter.Workbook('test.xlsx')
worksheet = workbook.add_worksheet()

# Start from the first cell. Rows and columns are zero indexed.
row = 0
col = 0 

# Writing the fetched content in Excel file
names  =  browser.find_elements_by_class_name("art-nr")
price = browser.find_elements_by_class_name("preis")
for i in names:
    s=i.text
    s=s.strip('Art.-Nr. ')
    worksheet.write(row, col,s)
    print(s)
    row +=1
row = 0
col +=1
for i in price:
    i = i.text
    worksheet.write(row, col,i)
    print(i)
    row +=1

row = 0
col +=1
image = browser.find_elements_by_class_name('art-name')
for i in image:

    n=i.find_element_by_tag_name('img')
    n=n.get_attribute('alt')
    worksheet.write(row, col,n)
    print(n)
    row +=1

workbook.close()


'''





















'''
# Code for printing Brand,Model,Type 
m = browser.find_element_by_class_name("typeSelector")
options = [x for x in m.find_elements_by_tag_name("option")]
l=[]
for element in options:
    l.append(element.get_attribute("value"))
       
print(l)
'''













'''
browser.find_element_by_link_text('Sign in').click()
sleep(2)
browser.find_element_by_id('username').send_keys('marlinshah124@gmail.com')
sleep(1)
browser.find_element_by_id('password').send_keys('Marlinshah@124')
sleep(1)
browser.find_element_by_xpath("//button[@type='submit']").click()
sleep(2)
names=['Abhi kevadiya']
ctr=0
for name in names:

    browser.find_element_by_xpath("//input[@type='text']").send_keys(name)
    browser.find_element_by_xpath("//input[@type='text']").send_keys(Keys.RETURN)
    sleep(3)
    browser.find_element_by_xpath("//button[text()='Message']").click()
    message='hey dummy mssg from bot!'
    sleep(1)
    if ctr==0:
        browser.find_element_by_xpath("//div[@role='textbox']").send_keys(message)
    else:
        browser.find_elements_by_xpath("//div[@role='textbox']")[ctr].send_keys(message)
    sleep(1)

    if ctr==0:
        browser.find_element_by_xpath("//button[@type='submit']").click()
    else:
        browser.find_elements_by_xpath("//button[@type='submit']")[ctr].click()

    ctr = ctr+1
    sleep(1)
    browser.find_element_by_xpath("//input[@type='text']").clear()
'''