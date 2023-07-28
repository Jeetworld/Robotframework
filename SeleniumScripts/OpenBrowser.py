from selenium import webdriver

# Create a new instance of the Chrome web driver
driver = webdriver.Chrome()

# Navigate to a website
driver.get("https://www.Facebook.com")  # Replace "https://www.example.com" with your desired URL

# Perform actions on the web page (e.g., filling a form or clicking a button)
# For example, let's find an element and type some text into an input field
input_element = driver.fi   .find_element_by_id("input_field_id")  # Replace "input_field_id" with the actual ID of the input field
input_element.send_keys("Hello, World!")  # Replace "Hello, World!" with the text you want to input

# Click on a button
# button_element = driver.find_element_by_id("button_id")  # Replace "button_id" with the actual ID of the button
# button_element.click()

# Wait for a few seconds to see the results before closing the browser
driver.implicitly_wait(5)

# Close the browser window
driver.quit()






