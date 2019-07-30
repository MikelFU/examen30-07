package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import modelo.Libro;

public class LibroDAO {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Libro libro) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
			ps.setString(1, libro.getTitulo());
			ps.setString(2, libro.getAutor());
			ps.setDouble(3, libro.getPrecio());
			ps.setInt(4, libro.getDescuento());
			ps.setDouble(5, libro.getPrecioFinal());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Libro libro) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update register set name=?,password=?,email=?,sex=?,country=? where id=?");
			ps.setInt(1, libro.getId());
			ps.setString(2, libro.getTitulo());
			ps.setString(3, libro.getAutor());
			ps.setDouble(4, libro.getPrecio());
			ps.setInt(5, libro.getDescuento());
			ps.setDouble(6, libro.getPrecioFinal());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Libro libro) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from register where id=?");
			ps.setInt(1, libro.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Libro> getAllRecords() {
		List<Libro> list = new ArrayList<Libro>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Libro libro = new Libro();
				libro.setId(rs.getInt("id"));
				libro.setTitulo(rs.getString("titulo"));
				libro.setAutor(rs.getString("autor"));
				libro.setPrecio(rs.getDouble("precio"));
				libro.setDescuento(rs.getInt("descuento"));
				libro.setPrecioFinal(rs.getDouble("precioFinal"));
				list.add(libro);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Libro getRecordById(int id) {
		Libro libro = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				libro = new Libro();
				libro.setId(rs.getInt("id"));
				libro.setTitulo(rs.getString("titulo"));
				libro.setAutor(rs.getString("autor"));
				libro.setPrecio(rs.getDouble("precio"));
				libro.setDescuento(rs.getInt("descuento"));
				libro.setPrecioFinal(rs.getDouble("precioFinal"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return libro;
	}
}