import urllib.request
import xml.etree.ElementTree as ET

req = urllib.request.Request("https://rss.blog.naver.com/fashiontherapy_.xml", headers={'User-Agent': 'Mozilla/5.0'})
with urllib.request.urlopen(req) as response:
    xml_data = response.read()

root = ET.fromstring(xml_data)
for item in root.findall('.//item'):
    title = item.find('title').text if item.find('title') is not None else ''
    desc = item.find('description').text if item.find('description') is not None else ''
    print(f"TITLE: {title}")
    # Print a snippet of description where price is mentioned
    import re
    prices = re.findall(r'.{0,30}\d{1,3}(?:,\d{3})*원.{0,30}|.{0,30}\d+만원.{0,30}', desc)
    if prices:
        for p in prices:
            print(f"  MATCH: {p}")
    print("-" * 40)
