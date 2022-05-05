import self as self
from selenium import webdriver
from selenium.webdriver.common.by import By
driver = webdriver.Chrome(executable_path="C:\\Users\\SUSHMA\\OneDrive\\Documents\\Selenium\\drivers\\chromedriver.exe")
driver.get("http://127.0.0.1:5000")
driver.maximize_window()
print(driver.title)

# Sign Up into the application -1

driver.find_element(By.XPATH, "//*[contains(text(), 'Sign Up')]").click()
driver.implicitly_wait(1000)
driver.find_element(By.NAME, 'username').send_keys("SE-Users22")
driver.find_element(By.NAME, 'password').send_keys("SE-Users")
driver.find_element(By.XPATH, "//*[contains(text(), 'create')]").click()
Assert1 = driver.find_element(By.XPATH, "//*[contains(text(), 'Dashboard')]").text
assert "Dashboard" in Assert1

# Logout of the application -2
driver.find_element(By.XPATH, "//*[contains(text(), 'Logout')]").click()
Assert2 = driver.find_element(By.XPATH, "//*[contains(text(), 'Sign Up')]").text
assert "Sign Up" in Assert2

# Login to the application -3
driver.find_element(By.XPATH, "//*[contains(text(), 'Login')]").click()
driver.implicitly_wait(1000)
driver.find_element(By.NAME, 'username').send_keys("SE-Users22")
driver.find_element(By.NAME, 'password').send_keys("SE-Users")
driver.find_element(By.XPATH, "//*[contains(text(), 'login')]").click()
assert "Dashboard" in Assert1
# Stream Video - 4
driver.find_element(By.XPATH, "//*[contains(text(), 'My videos')]").click()
driver.find_element(By.XPATH, "//div/h4/a").click()
driver.find_element(By.XPATH, "/html/body/video") .click()
Video = driver.find_element(By.XPATH, "//body/h1").text
print(Video)

# Change password -5
driver.find_element(By.XPATH, "//*[contains(text(), 'Dashboard')]").click()
driver.find_element(By.XPATH, "//div/a[contains(text(), 'Change Password')]").click()
driver.find_element(By.NAME, "oldPassword").send_keys("SE-Users")
driver.find_element(By.NAME, "newPassword").send_keys("12345")
driver.find_element(By.XPATH, "//*[contains(text(), 'update')]").click()


# Logout of the application
driver.find_element(By.XPATH, "//*[contains(text(), 'Logout')]").click()
# user already exists -6
driver.find_element(By.XPATH, "//*[contains(text(), 'Sign Up')]").click()
driver.implicitly_wait(1000)
driver.find_element(By.NAME, 'username').send_keys("SE-Users")
driver.find_element(By.NAME, 'password').send_keys("SE-Users")
driver.find_element(By.XPATH, "//*[contains(text(), 'create')]").click()
Assert3 = driver.find_element(By.XPATH, "//div[contains(@class, 'alert')]").text
print(Assert3)

# Invalid Credentials -7
driver.find_element(By.XPATH, "//*[contains(text(), 'Login')]").click()
driver.implicitly_wait(1000)
driver.find_element(By.NAME, 'username').send_keys("SE-Users")
driver.find_element(By.NAME, 'password').send_keys("SE-Userspol")
driver.find_element(By.XPATH, "//*[contains(text(), 'login')]").click()
print(Assert3)

# Delete account -8
driver.find_element(By.NAME, 'username').send_keys("SE-Users6")
driver.find_element(By.NAME, "password").send_keys("12345")
driver.find_element(By.XPATH, "//*[contains(text(), 'login')]").click()
driver.find_element(By.XPATH, "//*[contains(text(), 'Dashboard')]").click()
driver.find_element(By.XPATH, "//div/a[contains(text(), 'Delete Account')]").click()
driver.find_element(By.NAME, "password").send_keys("12345")
driver.find_element(By.XPATH, "//*[contains(text(), 'confirm')]").click()
driver.quit()








