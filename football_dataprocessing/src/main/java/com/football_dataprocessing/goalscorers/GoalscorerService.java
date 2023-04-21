package com.football_dataprocessing.goalscorers;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class GoalscorerService {
    @Autowired
    private GoalscorerRepository goalscorerRepository;

    public List<Goalscorer> listAllGoalscorers() {
        return goalscorerRepository.findAll();
    }

    public void saveGoalscorer(Goalscorer goalscorer) {
        goalscorerRepository.save(goalscorer);
    }

    public Goalscorer getGoalscorer(Integer goalscorer_id) {
        return goalscorerRepository.findById(goalscorer_id).get();
    }

    public void deleteGoalscorer(Integer goalscorer_id) {
        goalscorerRepository.deleteById(goalscorer_id);
    }
}
