package com.football_dataprocessing.results;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ResultService {
    @Autowired
    private ResultRepository resultRepository;

    public List<Result> listAllResults() {
        return resultRepository.findAll();
    }

    public void saveResult(Result result) {
        resultRepository.save(result);
    }

    public Result getResult(Integer result_id) {
        return resultRepository.findById(result_id).get();
    }

    public void deleteResult(Integer result_id) {
        resultRepository.deleteById(result_id);
    }
}
