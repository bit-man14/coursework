package pl.vendingexpert.dao;

import org.springframework.stereotype.Repository;
import pl.vendingexpert.model.Machine;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.ArrayList;

@Repository
@Transactional
public class MachineDao {
    @PersistenceContext
    EntityManager entityManager;
    
  
    
    public Machine findById(long id) {
        
        return entityManager.find(Machine.class, id);
    }
    
    public ArrayList<Machine> findAll() {
        return (ArrayList<Machine>) entityManager
                .createQuery("SELECT t FROM Machine t")
                .getResultList();
    }
    
    public void update(Machine machine) {
        
        entityManager.merge(machine);
    }
    
//    public void delete(Machine machine) {
//        entityManager.remove(entityManager.contains(machine) ?
//                machine : entityManager.merge(machine));
//    }
    
    public void deleteById(Long id) {
        Machine machine = entityManager.find(Machine.class, id);
        entityManager.remove(entityManager.contains(machine) ?
                machine : entityManager.merge(machine));
    }
    
    @Transactional
    public void saveMachine(Machine machine) {
        if (machine.getId() == null) {
            entityManager.persist(machine);
        } else {
            entityManager.merge(machine);
        }
    }
}
