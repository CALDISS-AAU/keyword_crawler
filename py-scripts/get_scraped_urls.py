import json
import os

data_path = "../data/drr_scrape2021-03-30.json"

with open(data_path, 'r') as f:
    data = json.load(f)

scraped_urls = list()

for entry in data:
    url = entry.get('url')
    if url is not None:
        scraped_urls.append(url)

out_path = "../materials/scraped_urls.txt"

with open(out_path, 'w', encoding = 'utf-8') as f:
    for url in scraped_urls:
        f.write(url + "\n")

