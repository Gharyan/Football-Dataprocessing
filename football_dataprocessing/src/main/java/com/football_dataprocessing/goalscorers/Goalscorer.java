package com.football_dataprocessing.goalscorers;

import jakarta.persistence.*;
import jakarta.xml.bind.annotation.*;

@Entity
@Table(name = "goalscorers")
@XmlRootElement(name = "goalscorer")
public class Goalscorer {

    @Id
    private int goalscorer_id;
    private String date;
    private String home_team;
    private String away_team;
    private String team;
    private String scorer;
    private int minute;
    private Boolean own_goal;
    private Boolean penalty;

    public Goalscorer() {

    }

    public Goalscorer(int goalscorer_id, String date, String home_team, String away_team, String team, String scorer, int minute, Boolean own_goal, Boolean penalty) {
        this.goalscorer_id = goalscorer_id;
        this.date = date;
        this.home_team = home_team;
        this.away_team = away_team;
        this.team = team;
        this.scorer = scorer;
        this.minute = minute;
        this.own_goal = own_goal;
        this.penalty = penalty;
    }

    public int getGoalscorer_id() {
        return goalscorer_id;
    }

    public void setGoalscorer_id(int goalscorer_id) {
        this.goalscorer_id = goalscorer_id;
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

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getScorer() {
        return scorer;
    }

    public void setScorer(String scorer) {
        this.scorer = scorer;
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        this.minute = minute;
    }

    public Boolean getOwn_goal() {
        return own_goal;
    }

    public void setOwn_goal(Boolean own_goal) {
        this.own_goal = own_goal;
    }

    public Boolean getPenalty() {
        return penalty;
    }

    public void setPenalty(Boolean penalty) {
        this.penalty = penalty;
    }
}
