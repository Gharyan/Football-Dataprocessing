package com.football_dataprocessing.shootouts;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ShootoutService {
    @Autowired
    private ShootoutRepository shootoutRepository;

    public List<Shootout> listAllShootouts() {
        return shootoutRepository.findAll();
    }

    public void saveShootout(Shootout shootout) {
        shootoutRepository.save(shootout);
    }

    public Shootout getShootout(Integer shootoutId) {
        return shootoutRepository.findById(shootoutId).get();
    }

    public void deleteShootout(Integer shootoutId) {
        shootoutRepository.deleteById(shootoutId);
    }
}
