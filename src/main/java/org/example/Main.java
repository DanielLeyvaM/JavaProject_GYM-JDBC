package org.example;

import Gym.Menu;
import JDBC.ConnectionDB;

public class Main {
    public static void main(String[] args) {
        var test = ConnectionDB.getConnection();
        if(test != null){
            System.out.println("Success connection");
        }

        Menu.showMenu();
    }

}