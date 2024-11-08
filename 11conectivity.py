import pymongo

client = pymongo.MongoClient("mongodb://127.0.0.1:27017/")

def show_db():
 print("Welcome to pyMongo")
 print(client)
 alldbs = client.list_database_names()
 print(alldbs)
 col = client['Onkar']
 print(col.list_collection_names())

def insert():
 print("Welcome to pyMongo")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 dictionary2 = {'Roll_no':24, 'Name':'Sid', 'Address':'Junnar'}
 collection.insert_one(dictionary2)
 allthese = [{'Roll_no':52, 'Name':'Suraj', 
'Address':'Siddhatek'},{'roll_no':54, 'Name':'Onkar', 'Address':'Akluj'}]
 collection.insert_many(allthese)

def find():
 print("Welcome to pyMongo")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 one = collection.find_one({'Name':'Sid'})
 print(one)
 alldocs = collection.find()
 for item in alldocs:
     print(item)

def update():
 print("Welcome to pyMongo")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 refield = {'Name':'Sid'}
 setfield = {'$set':{'Address':'Shivneri'}}
 collection.update_one(refield, setfield)
 refield = {'Name':'Onkar'}
 setfield = {'$set':{'Address':'Sadashivnagar'}}
 collection.update_many(refield, setfield)

def delete():
 print("Welcome to pyMongo")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 rec = {'Name':'Sid'}
 collection.delete_one(rec)
 rec2 = {'Name':'Onkar'}
 collection.delete_many(rec2)

if __name__ == "__main__":
 print("Welcome to pyMongo")
 print(client)
 db = client['Onkar']
 collection = db['Student']
 dictionary = {'Roll_no':1,'Name':'Aditya', 'Address':'Pune'}
 collection.insert_one(dictionary)
 show_db()
 insert()
 find()
 update()
 delete()
