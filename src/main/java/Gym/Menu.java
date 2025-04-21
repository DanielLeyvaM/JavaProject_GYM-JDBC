package Gym;

import JDBC.ClientCRUD;

import java.util.Scanner;

public class Menu {
    public static void showMenu() {
        Scanner sc = new Scanner(System.in);
        boolean repeat = true;

        while(repeat) {
            System.out.println("\n -------------------- GYM APP -------------------- \n" +
                    "1. List all Clients \n2. Search Client by ID \n3. Insert new Client " +
                    "\n4. Modify a Register \n5. Delete a Register \n6. Exit");
            System.out.print("Select an option: ");
            int option = Integer.parseInt(sc.nextLine());
            ClientCRUD data = new ClientCRUD();

            switch (option) {
                case 1 -> {
                    data.selectClient();
                }
                case 2 -> {
                    data.selectClientById();
                }
                case 3 -> {
                    data.insertClient();
                }
                case 4 -> {
                    data.updateClient();
                }
                case 5 -> {
                    data.deleteClient();
                }
                case 6 -> repeat = false;
                default -> System.out.println("Option no available");
            }
        }
    }

}
