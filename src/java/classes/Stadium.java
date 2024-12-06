package classes;

    public class Stadium {
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

    }
