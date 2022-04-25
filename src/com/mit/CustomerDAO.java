package com.mit;
import java.sql.*;
public class CustomerDAO {
	static Connection conn;
	static PreparedStatement pst;
	
	public static int insertSo (variable so){
		int status= 0;
		try{
			conn=ConnectionProvider.getCon();
			pst=conn.prepareStatement("insert into public.sortie (numso,numpro,qtepro,dateso) values(?,?,?,?)");
			pst.setInt(1,so.getA1());
			pst.setString(2, so.getA());
			pst.setInt(3, so.getA2());
			pst.setString(4,so.getB());
			status = pst.executeUpdate();
			conn.close();
			
			conn=ConnectionProvider.getCon();
			pst=conn.prepareStatement("UPDATE public.stockage SET quantite=quantite-? WHERE idpro=?");
			pst.setInt(1, so.getA2());
			pst.setString(2, so.getA());
			
			status = pst.executeUpdate();
			conn.close();
		}catch(Exception e){
		System.out.println(e);	
		}
		return status;
	}
	 public static  int insertS(variable s){
		 int statu= 0;
			try{
				conn=ConnectionProvider.getCon();
				pst=conn.prepareStatement("insert into public.stockage (idpro,design,quantite,unite) values(?,?,0,?)");
				pst.setString(1,s.getA());
				pst.setString (2,s.getB());
				
				pst.setString(3,s.getC());
				statu = pst.executeUpdate();		
		
				conn.close();
			}catch(Exception e){
			System.out.println(e);	
			}
			return statu;
	 }
	 public static int insertL(variable u){
		 
		 int statu=0;
			try{
				conn=ConnectionProvider.getCon();
				pst=conn.prepareStatement("INSERT INTO public.livraison(numliv, qtelivre, dateliv,idpro) VALUES (?,?, ?, ?);");
				pst.setInt(1, u.getA3());
				pst.setInt(2, u.getA1());
				pst.setString(3, u.getC());
				pst.setString(4, u.getA());
				statu = pst.executeUpdate();
				conn.close();
				
				conn=ConnectionProvider.getCon();
				pst=conn.prepareStatement("UPDATE public.stockage SET quantite=quantite+? WHERE idpro=?");
				pst.setInt(1, u.getA1());
				pst.setString(2, u.getA());
				statu = pst.executeUpdate();
				conn.close();
			}catch(Exception e){
				System.out.println(e);	
			}
		  
		 return statu;
		 
	 }

}

