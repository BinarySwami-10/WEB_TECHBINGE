import pymongo
client = pymongo.MongoClient("mongodb+srv://bellaberries:<password>@cluster0.opfje.mongodb.net/myFirstDatabase?retryWrites=true&w=majority")
db = client.test()