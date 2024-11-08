11.Connectivity


 Create
Code:

import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 dictionary = {'Roll_no':1,'Name':'Aditya', 'Address':'Pune'}
 collection.insert_one(dictionary)

 Show Databases
Code:
import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 alldbs = client.list_database_names()
 print(alldbs)
 col = client['Onkar']
 print(col.list_collection_names())

 Insert
Code:
import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 dictionary2 = {'Roll_no':24, 'Name':'Sid', 'Address':'Junnar'}
 collection.insert_one(dictionary2)
 allthese = [{'Roll_no':52, 'Name':'Suraj', 
'Address':'Siddhatek'},{'roll_no':54, 'Name':'Onkar', 'Address':'Akluj'}]
 collection.insert_many(allthese)

 Read
Code:
import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 one = collection.find_one({'Name':'Sid'})
 print(one)
 alldocs = collection.find()
 for item in alldocs:
 print(item)

 Update
Code:
import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 refield = {'Name':'Sid'}
 setfield = {'$set':{'Address':'Shivneri'}}
 collection.update_one(refield, setfield)
 refield = {'Name':'Onkar'}
 setfield = {'$set':{'Address':'Sadashivnagar'}}
 collection.update_many(refield, setfield)

 Delete
Code:
import pymongo
if __name__ == "__main__":
 print("Welcome to pyMongo")
 client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 rec = {'Name':'Sid'}
 collection.delete_one(rec)
 rec2 = {'Name':'Onkar'}
 collection.delete_many(rec2)
