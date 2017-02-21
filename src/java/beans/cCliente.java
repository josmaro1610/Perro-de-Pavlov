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

public class cCliente extends cConnection{
	private String DNI;
	private String Nombre;
	private String Direccion;
	private String Telefono;
	private String Email;
	private String [] Keys = {"DNI", "Nombre", "Direccion", "Telefono", "Email"};
	private int KeysSize = 5;
	
	public cCliente(){
		
	}
	//public DBCursor cursor;
	//public DBCollection collection = DBCollection("Cliente");
	
	public void setDNI(String pDNI){
		this.DNI = pDNI;
	}
	public void setNombre(String pNombre){
		Nombre= pNombre;
	}
	public void setDireccion(String pDireccion){
		Direccion = pDireccion;
	}
	public void setTelefono(String pTelefono){
		Telefono = pTelefono;
	}
	public void setEmail(String pEmail){
		Email = pEmail;
	}
	
	public String getDNI(){
		return DNI;
	}
	public String getNombre(){
		return Nombre;
	}
	public String getDireccion(){
		return Direccion;
	}
	public String getTelefono(){
		return Telefono;
	}
	public String getEmail(){
		return Email;
	}
	public String getKey(int i){
		return Keys[i];
	}
	public int getKeysSize(){
		return KeysSize;
	}
	
	/*****/
	
	/*public boolean Find(String key, String value){  // use args.
		BasicDBObject document = new BasicDBObject();
		document.put(key, value);
		cursor = collection.find(document);
		//System.out.println(cursor.count() + " ...cursor");
		if(cursor.count() == 0) return false;
		return true;
	}*/
}

    Contact GitHub API Training Shop Blog About 

    © 2017 GitHub, Inc. Terms Privacy Security Status Help 

