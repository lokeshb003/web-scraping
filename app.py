from urllib.request import urlopen
url = "https://"
url1 = input("Enter the url: ")
url_final = url + url1
page = urlopen(url_final)
html_bytes = page.read()
html = html_bytes.decode("utf-8")
print(html)
