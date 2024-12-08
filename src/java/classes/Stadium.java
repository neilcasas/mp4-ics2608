package classes;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

    public class Stadium {
        
        public enum SeatType {
            HOME_VIP,
            AWAY_VIP,
            NORTH_STANDS_VIP,
            SOUTH_STANDS_VIP,
            HOME_REGULAR,
            AWAY_REGULAR,
            NORTH_STANDS_REGULAR,
            SOUTH_STANDS_REGULAR
        }
        
        Boolean[][] northStandsVIP = new Boolean[5][10];
        Boolean[][] northStandsRegular = new Boolean[5][10];
        
        Boolean[][] southStandsVIP = new Boolean[5][10];
        Boolean[][] southStandsRegular = new Boolean[5][10];
        
        Boolean[][] homeVIP = new Boolean[5][10];
        Boolean[][] homeRegular = new Boolean[5][10];
        
        Boolean[][] awayVIP = new Boolean[5][10];
        Boolean[][] awayRegular = new Boolean[5][10];
        
        Boolean isFull(Boolean[][] table) {
            int count = 0;
            for(int i = 0; i < table.length; i++) {
                for (int j = 0; j < table[i].length; j++) {
                    count = (table[i][j] == true) ? count++ : count;
                }
            }
            return count == table.length;
        }
        
        public Stadium(InputStream csvStream) {
            String line = "";
            String splitBy = ",";
            // Initialize all elements to false
            for (int i = 0; i < northStandsVIP.length; i++) {
                for (int j = 0; j < northStandsVIP[i].length; j++) {
                    northStandsVIP[i][j] = false;
                    northStandsRegular[i][j] = false;
                    southStandsVIP[i][j] = false;
                    southStandsRegular[i][j] = false;
                    homeVIP[i][j] = false;
                    homeRegular[i][j] = false;
                    awayVIP[i][j] = false;
                    awayRegular[i][j] = false;
                }
            }
            try {
                BufferedReader br = new BufferedReader(new InputStreamReader(csvStream));
                while ((line = br.readLine()) != null) {
                    String[] seatString = line.split(splitBy);
                    
                    String seatArea = seatString[0];
                    String seatLevel = seatString[1];
                    Integer seatRow = Integer.parseInt(seatString[2]) - 1;
                    Integer seatColumn = Integer.parseInt(seatString[3]) - 1;

                    SeatType seatType = getSeatType(seatArea, seatLevel);

                    switch(seatType) {
                        case NORTH_STANDS_VIP:
                            northStandsVIP[seatRow][seatColumn] = true;
                            break;
                        case NORTH_STANDS_REGULAR:
                            northStandsRegular[seatRow][seatColumn] = true;
                            break;
                        case SOUTH_STANDS_VIP:
                            southStandsVIP[seatRow][seatColumn] = true;
                            break;
                        case SOUTH_STANDS_REGULAR:
                            southStandsRegular[seatRow][seatColumn] = true;
                            break;
                        case HOME_VIP:
                            homeVIP[seatRow][seatColumn] = true;
                            break;
                        case HOME_REGULAR:
                            homeRegular[seatRow][seatColumn] = true;
                            break;
                        case AWAY_VIP:
                            awayVIP[seatRow][seatColumn] = true;
                            break;
                        case AWAY_REGULAR:
                            awayRegular[seatRow][seatColumn] = true;
                            break;
                    }
                }
                System.out.println("Stadium loaded!");
            } catch(IOException e) {    
                        e.printStackTrace();
            }
        }
        public Stadium() {
            // Initialize all elements to false
            for (int i = 0; i < northStandsVIP.length; i++) {
                for (int j = 0; j < northStandsVIP[i].length; j++) {
                    northStandsVIP[i][j] = false;
                    northStandsRegular[i][j] = false;
                    southStandsVIP[i][j] = false;
                    southStandsRegular[i][j] = false;
                    homeVIP[i][j] = false;
                    homeRegular[i][j] = false;
                    awayVIP[i][j] = false;
                    awayRegular[i][j] = false;
                }
            }
            // Fill up VIP of north stands 
            for(int i = 0; i < northStandsVIP.length; i++) {
                for (int j = 3; j < northStandsVIP[i].length; j++) {
                    northStandsVIP[i][j] = true;
                }
            }
            
            // Fill up regular north stands
            for (int i = 0; i < northStandsRegular.length; i++) {
                for (int j = 2; j < northStandsRegular[i].length; j++) {
                    northStandsRegular[i][j] = true;
                }
            }

            // Fill up VIP of south stands
            for (int i = 0; i < southStandsVIP.length; i++) {
                Arrays.fill(southStandsVIP[i], true);
            }

            // Fill up regular south stands
            for (int i = 0; i < southStandsRegular.length; i++) {
                for (int j = 0; j < 8; j++) {
                    southStandsRegular[i][j] = true;
                }
            }

            // Fill up VIP of home stands
            for (int i = 0; i < homeVIP.length; i++) {
                for (int j = 0; j < 5; j++) {
                    homeVIP[i][j] = true;
                }
            }

            // Fill up regular home stands
            for (int i = 0; i < homeRegular.length; i++) {
                for (int j = 0; j < 6; j++) {
                    homeRegular[i][j] = true;
                }
            }

            // Fill up VIP of away stands
            for (int i = 0; i < awayVIP.length; i++) {
                Arrays.fill(awayVIP[i], true);
            }

            // Fill up regular away stands
            for (int i = 0; i < awayRegular.length; i++) {
                for (int j = 2; j < awayRegular[i].length; j++) {
                    awayRegular[i][j] = true;
                }
            }
            
        }
        
        public static SeatType getSeatType(String seatArea, String seatLevel) {
            SeatType type = null;
            if(seatArea.equals("northStands") && seatLevel.equals("VIP")) {
                type = SeatType.NORTH_STANDS_VIP;
            } else if(seatArea.equals("northStands") && seatLevel.equals("Regular")) {
                type = SeatType.NORTH_STANDS_REGULAR;
            } else if(seatArea.equals("southStands") && seatLevel.equals("VIP")) {
                type = SeatType.SOUTH_STANDS_VIP;
            } else if(seatArea.equals("southStands") && seatLevel.equals("Regular")) {
                type = SeatType.SOUTH_STANDS_REGULAR;
            } else if(seatArea.equals("home") && seatLevel.equals("VIP")) {
                type = SeatType.HOME_VIP;
            } else if(seatArea.equals("home") && seatLevel.equals("Regular")) {
                type = SeatType.HOME_REGULAR;
            } else if (seatArea.equals("away") && seatLevel.equals("VIP")) {
                type = SeatType.AWAY_VIP;
            } else if (seatArea.equals("away") && seatLevel.equals("Regular")) {
                type = SeatType.AWAY_REGULAR;
            }
            
            return type;
        }

        public static String getSeatString(SeatType seatType) {
            String type = "";
            switch(seatType) {
                case NORTH_STANDS_VIP:
                    type = "North Stands VIP";
                    break;
                case NORTH_STANDS_REGULAR:
                    type = "North Stands Regular";
                    break;
                case SOUTH_STANDS_VIP:
                    type = "South Stands VIP";
                    break;
                case SOUTH_STANDS_REGULAR:
                    type = "South Stands Regular";
                    break;
                case HOME_VIP:
                    type = "Home VIP";
                    break;
                case HOME_REGULAR:
                    type = "Home Regular";
                    break;
                case AWAY_VIP:
                    type = "Away VIP";
                    break;
                case AWAY_REGULAR:
                    type = "Away Regular";
                    break;
                default: 
                    break;
            }
            return type;
        }

        public static int getSeatPrice(SeatType seatType) {
            int price = 0;
            switch(seatType) {
                case NORTH_STANDS_VIP:
                    price = 100;
                    break;
                case NORTH_STANDS_REGULAR:
                    price = 50;
                    break;
                case SOUTH_STANDS_VIP:
                    price = 100;
                    break;
                case SOUTH_STANDS_REGULAR:
                    price = 50;
                    break;
                case HOME_VIP:
                    price = 150;
                    break;
                case HOME_REGULAR:
                    price = 75;
                    break;
                case AWAY_VIP:
                    price = 150;
                    break;
                case AWAY_REGULAR:
                    price = 75;
                    break;
                default: 
                    break;
            }
            return price;
        }
        
        public Boolean[][] getTableFromType(SeatType seatType) {
            Boolean[][] table = null;
            switch(seatType) {
                case NORTH_STANDS_VIP:
                    table = this.northStandsVIP;
                    break;
                case NORTH_STANDS_REGULAR:
                    table = this.northStandsRegular;
                    break;
                case SOUTH_STANDS_VIP:
                    table = this.southStandsVIP;
                    break;
                case SOUTH_STANDS_REGULAR:
                    table = this.southStandsRegular;
                    break;
                case HOME_VIP:
                    table = this.homeVIP;
                    break;
                case HOME_REGULAR:
                    table = this.homeRegular;
                    break;
                case AWAY_VIP:
                    table = this.awayVIP;
                    break;
                case AWAY_REGULAR:
                    table = this.awayRegular;
                    break;
                default: 
                    break;
            }
            return table;
        }
        
        public Boolean isAreaFull(SeatType seatType) {
            Boolean[][] table = this.getTableFromType(seatType);
            
            for(int i = 0; i < table.length; i++) {
                for (int j = 0; j < table[i].length; j++) {
                    return table[i][j] == false; // if there exists a free seat
                }
            }
            
            return true;
        }
    }
