package com.football_dataprocessing.results;

import jakarta.persistence.*;

@Entity
@Table(name="results")
public class Result {
    private int result_id;
    private String date;
    private String home_team;
    private String away_team;
    private int home_score;
    private int away_score;
    private String tournament;
    private String city;
    private String country;
    private String neutral;

    public Result() {

    }

    public Result(int result_id, String date, String home_team, String away_team, int home_score, int away_score, String tournament, String city, String country, String neutral) {
        this.result_id = result_id;
        this.date = date;
        this.home_team = home_team;
        this.away_team = away_team;
        this.home_score = home_score;
        this.away_score = away_score;
        this.tournament = tournament;
        this.city = city;
        this.country = country;
        this.neutral = neutral;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getResult_id() {
        return result_id;
    }

    public void setResult_id(int goalscorer_id) {
        this.result_id = goalscorer_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHome_team() {
        return home_team;
    }

    public void setHome_team(String home_team) {
        this.home_team = home_team;
    }

    public String getAway_team() {
        return away_team;
    }

    public void setAway_team(String away_team) {
        this.away_team = away_team;
    }

    public int getHome_score() {
        return home_score;
    }

    public void setHome_score(int home_score) {
        this.home_score = home_score;
    }

    public int getAway_score() {
        return away_score;
    }

    public void setAway_score(int away_score) {
        this.away_score = away_score;
    }

    public String getTournament() {
        return tournament;
    }

    public void setTournament(String tournament) {
        this.tournament = tournament;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getNeutral() {
        return neutral;
    }

    public void setNeutral(String neutral) {
        this.neutral = neutral;
    }
}
