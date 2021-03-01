from selenium import webdriver
from time import sleep
from selenium.webdriver.common.keys import Keys
browser = webdriver.Chrome('C:\Users\marli\Downloads\chromedriver_win32\chromedriver.exe')
browser.get('http://linkedin.com')
sleep(1)

browser.find_element_by_link_text('Sign in').click()
sleep(2)
browser.find_element_by_id('username').send_keys('marlinshah124@gmail.com')
sleep(1)
browser.find_element_by_id('password').send_keys('Marlinshah@124')
sleep(1)
browser.find_element_by_xpath("//button[@type='submit']").click()
sleep(2)
names=['Abhi kevadiya','Kaushal doshi','Ravi Savaliya']
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
