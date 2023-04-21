package com.football_dataprocessing.shootouts;

import jakarta.persistence.*;

@Entity
@Table(name="shootouts")
public class Shootout {
    private int shootoutId;
    private String date;
    private String homeTeam;
    private String awayTeam;
    private String winner;

    public Shootout() {

    }

    public Shootout(int shootoutId, String date, String homeTeam, String awayTeam, String winner) {
        this.shootoutId = shootoutId;
        this.date = date;
        this.homeTeam = homeTeam;
        this.awayTeam = awayTeam;
        this.winner = winner;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getShootout_id() {
        return shootoutId;
    }

    public void setShootout_id(int goalscorer_id) {
        this.shootoutId = goalscorer_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getAwayTeam() {
        return awayTeam;
    }

    public void setAwayTeam(String awayTeam) {
        this.awayTeam = awayTeam;
    }

    public String getWinner() {
        return winner;
    }

    public void setWinner(String winner) {
        this.winner = winner;
    }
}
