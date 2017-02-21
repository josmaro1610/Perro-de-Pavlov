package beans;

import com.mongodb.BasicDBObject;

public class cMascota extends cConnection{
	private String DNI;
	private String Nombre;
	private String Raza;
	private String Especie;
	private String Sexo;
	private String FechaDeNacimiento;
	private String [] Keys = {"DNI", "Nombre", "Raza", "Especie", "Sexo", "FechaDeNacimiento"};
	private int KeysSize = 6;
	
	//public DBCursor cursor;
	//public DBCollection collection = DBCollection("Cliente");
	
	public void setDNI(String pDNI){
		this.DNI = pDNI;
	}
	public void setNombre(String pNombre){
		Nombre= pNombre;
	}
	public void setRaza(String pRaza){
		Raza = pRaza;
	}
	public void setEspecie(String pEspecie){
		Especie = pEspecie;
	}
	public void setSexo(String pSexo){
		Sexo = pSexo;
	}
	public void setFechaDeNacimiento(String pFechaDeNacimiento){
		FechaDeNacimiento = pFechaDeNacimiento;
	}

	
	
	public String getDNI(){
		return DNI;
	}
	public String getNombre(){
		return Nombre;
	}
	public String getRaza(){
		return Raza;
	}
	public String getEspecie(){
		return Especie;
	}
	public String getSexo(){
		return Sexo;
	}
	public String getFechaDeNacimiento(){
		return FechaDeNacimiento;
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
