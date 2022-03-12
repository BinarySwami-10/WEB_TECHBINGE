import modulex as mx

url="https://www.promisetrainingglobal.com/in-person-classroom-training-courses/"
table_selector='table'
table_head='thead th'
table_body='tbody tr'
def get_csv():
	tframe=mx.get_page_soup(url).select_one(table_selector)
	head = [x.text for x in tframe.select(table_head)]
	rows = [list(filter(bool,[y.text.replace('\n','') for y in x])) for x in tframe.select(table_body)]

	print(head)
	print(rows)

if __name__ == '__main__':
	get_csv()