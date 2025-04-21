package JDBC;

import java.sql.*;
import java.util.Scanner;

public class ClientCRUD {

    public void selectClient(){
        Connection connect = ConnectionDB.getConnection();
        String query= "SELECT * FROM clients ORDER BY id";
        try {
            PreparedStatement ps = connect.prepareStatement(query);
            ResultSet result = ps.executeQuery();

            while (result.next()){
                int id = result.getInt("id");
                String name = result.getString("name");
                String lastName = result.getString("lastName");
                String phone = result.getString("phone");

                System.out.println("ID: " +id + ", Name: " +name +
                        ", lastName: " +lastName +", Num Client: " +phone);
            }

            connect.close();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void selectClientById(){
        Connection connect = ConnectionDB.getConnection();
        System.out.print("Type id to Search: ");
        Scanner sc= new Scanner(System.in);
        int id = sc.nextInt();

        String query= "SELECT name, lastName, phone FROM clients WHERE id= "+id;
        try {
            PreparedStatement ps = connect.prepareStatement(query);
            ResultSet result = ps.executeQuery();

            while (result.next()){
                String name = result.getString("name");
                String lastName = result.getString("lastName");
                String phone = result.getString("phone");

                System.out.println("Name: " +name + ", lastName: " +lastName +", Num Client: " +phone);
            }

            connect.close();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void insertClient(){
        Connection connect = ConnectionDB.getConnection();
        Scanner sc= new Scanner(System.in);
        System.out.print("Name: "); String name= sc.nextLine();
        System.out.print("Last Name: "); String lastName= sc.nextLine();
        System.out.print("Phone (7 Digits): "); String phone= sc.nextLine();

        String query="INSERT INTO clients (name, lastName, phone) " +
                "VALUES(?, ?, ?)";
        try {
            PreparedStatement ps = connect.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,lastName);
            ps.setString(3,phone);
            ps.execute();

            connect.close();
            System.out.println("Client added to the database");

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

    }

    public void updateClient(){
        Connection connect = ConnectionDB.getConnection();
        Scanner sc= new Scanner(System.in);

        System.out.print("ID to modify: "); int id= sc.nextInt();
        sc.nextLine();      //Buffer
        System.out.print("New Name: "); String name= sc.nextLine();
        System.out.print("New Last Name: "); String lastName= sc.nextLine();
        System.out.print("New Phone: "); String phone= sc.nextLine();

        String query="UPDATE clients SET name=?, lastName=?, phone=? WHERE id= ?";

        try {
            PreparedStatement ps = connect.prepareStatement(query);
            ps.setString(1,name);
            ps.setString(2,lastName);
            ps.setString(3,phone);
            ps.setInt(4,id);
            ps.execute();

            connect.close();
            System.out.println("Client modified correctly");

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteClient(){
        Connection connect = ConnectionDB.getConnection();
        Scanner sc= new Scanner(System.in);
        System.out.print("Type an ID: "); String id= sc.nextLine();

        String query="DELETE FROM clients WHERE id = "+id;
        try {
            PreparedStatement ps = connect.prepareStatement(query);
            ps.execute();

            connect.close();
            System.out.println("Client deleted from the database");

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
