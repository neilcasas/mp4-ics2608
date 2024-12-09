/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

import classes.Stadium.SeatType;

/**
 *
 * @author neila
 */
public class Ticket {
    int row;
    int column;
    SeatType type;
    
    public Ticket(int row, int column, SeatType type) {
        this.row = row;
        this.column = column;
        this.type = type;
    }
    
    public int getRow(){
        return this.row;
    }
    public int getColumn() {
        return this.column;
    }
    public SeatType getSeatType() {
        return this.type;
    }
}
