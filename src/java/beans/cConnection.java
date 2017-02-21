package beans;

import com.mongodb.MongoClient;
import com.mongodb.Block;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.DB;
import com.mongodb.DBCursor;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoCollection;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.BasicDBObject;
import javax.swing.text.Document;
import java.io.*;
import java.sql.DriverManager;
import java.util.*;


public class cConnection {
	private String Server;
	private String Database;
	private int Port;
	private String CollectionName;
	
	public BasicDBObject document;
	public DBCollection collection;
	private MongoClient Client;
	public DB db;
	public DBCursor cursor;
	public Iterator<DBObject> List;
	public String Message;
	
	public void setServer(String pServer){
		Server = pServer;
	}
	public void setDatabase(String pDatabase){
		Database = pDatabase;
	}
	public void setPort(int pPort){
		Port = pPort;
	}
	public void setCollection(String pCollectionName){
		CollectionName = pCollectionName;
		//collection = db.getCollection(CollectionName);
	}
	
	public String getServer(){
		return Server;
	}
	public String getDatabase(){
		return Database;
	}
	public int getPort(){
		return Port;
	}

	
	/**/
	
	public void Connect(){
		try{
			Client = new MongoClient(Server, Port);
			db = Client.getDB(Database);
			collection = db.getCollection(CollectionName);		
		}
		catch(Exception e) {
	        System.out.print("Excepcion : " + e.getMessage() + "\n");
	    }		
	}
	public void Disconnect(){
		try{
			Client.close();
		}
		catch(Exception e) {
	        System.out.print("Excepcion : " + e.getMessage() + "\n");
	    }	
	}
	public void getAllDocuments(DBCollection collection){
		/*cursor = collection.find();
		while (cursor.hasNext()) {
			System.out.println(cursor.next());
		}*/
		//Iterator<DBObject> List;
		cursor = collection.find();
	}
	public boolean Find(DBCollection collection,String key, String value){  // use args.
		BasicDBObject document = new BasicDBObject();
		document.put(key, value);
		cursor = collection.find(document);
		//System.out.println(cursor.count() + " ...cursor");
		if(cursor.count() == 0) return false;
		return true;
	}
	public void getDocument(DBCollection collection,String key, String value){
		BasicDBObject document = new BasicDBObject();
		document.put(key, value);
		cursor = collection.find(document);
		System.out.println(cursor.count());
	}
	
	public void Put(DBCollection collection, String key, Object value){
		try{
			//document = new BasicDBObject();
			document.put(key, value);
			Message = "Cool, Data Inserted Succesfully";
			//System.out.println(key + "  " + value);
			/*cursor = collection.find();
			while (cursor.hasNext()) {
				System.out.println(cursor.next());
			}*/
		}
		catch(Exception e){   
			System.out.println(e);
		}
		
	}
	public void Update(DBCollection collection, String SearchKey, Object SearchValue, String key, Object value){
		BasicDBObject document = new BasicDBObject();
		document.append("$set", new BasicDBObject().append(key, value));
		
		BasicDBObject query = new BasicDBObject().append(SearchKey, SearchValue);
		collection.update(query, document);
		Message = "Cool, Data Updated Succesfuly";
	}
	public void UpdateAll(DBCollection collection, String SearchKey, Object SearchValue, String key, Object value){
		BasicDBObject document = new BasicDBObject();
		document.append("$set", new BasicDBObject().append(key, value));
		
		BasicDBObject query = new BasicDBObject().append(SearchKey, SearchValue);
		collection.updateMulti(query, document);
	}
	public void RemoveFirst(DBCollection collection){
		DBObject document = collection.findOne();
		collection.remove(document);	
	}
	public void Remove(DBCollection collection, String key, Object value){
		BasicDBObject document = new BasicDBObject().append(key, value);
		collection.remove(document);
		Message = "Cool, Data Removed Succesfuly";
	}
	public void removeAllDocumentes(DBCollection collection){
		collection.remove(new BasicDBObject());
	}
	
	
	
}
