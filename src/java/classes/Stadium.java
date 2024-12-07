package classes;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

    public class Stadium {
        
        public enum SeatType {
            NORTH_STANDS_VIP,
            NORTH_STANDS_REGULAR,
            SOUTH_STANDS_VIP,
            SOUTH_STANDS_REGULAR,
            HOME_VIP,
            HOME_REGULAR,
            AWAY_VIP,
            AWAY_REGULAR
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

        public Stadium(String csvPath) {
            String line = "";
            String splitBy = ",";
            try {
                BufferedReader br = new BufferedReader(new FileReader(csvPath));
                while ((line = br.readLine()) != null) {
                    String[] seatString = line.split(splitBy);
                    
                    String seatArea = seatString[0];
                    String seatLevel = seatString[1];
                    Integer seatRow = Integer.parseInt(seatString[2]);
                    Integer seatColumn = Integer.parseInt(seatString[3]);

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
            } catch(IOException e) {
                        e.printStackTrace();
            }
        }

        public static getSeatType(String seatArea, String seatLevel) {
            if(seatArea.equals("northStands") && seatLevel.equals("VIP")) {
                return SeatType.NORTH_STANDS_VIP;
            } else if(seatArea.equals("northStands") && seatLevel.equals("Regular")) {
                return SeatType.NORTH_STANDS_REGULAR;
            } else if(seatArea.equals("southStands") && seatLevel.equals("VIP")) {
                return SeatType.SOUTH_STANDS_VIP;
            } else if(seatArea.equals("southStands") && seatLevel.equals("Regular")) {
                return SeatType.SOUTH_STANDS_REGULAR;
            } else if(seatArea.equals("home") && seatLevel.equals("VIP")) {
                return SeatType.HOME_VIP;
            } else if(seatArea.equals("home") && seatLevel.equals("Regular")) {
                return SeatType.HOME_REGULAR;
            }
        }

        public static int getSeatPrice(SeatType seatType) {
            switch(seatType) {
                case NORTH_STANDS_VIP:
                    return 100;
                case NORTH_STANDS_REGULAR:
                    return 50;
                case SOUTH_STANDS_VIP:
                    return 100;
                case SOUTH_STANDS_REGULAR:
                    return 50;
                case HOME_VIP:
                    return 150;
                case HOME_REGULAR:
                    return 75;
                case AWAY_VIP:
                    return 150;
                case AWAY_REGULAR:
                    return 75;
            }
        }
    }
