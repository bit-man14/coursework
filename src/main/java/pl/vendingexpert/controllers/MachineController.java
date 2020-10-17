package pl.vendingexpert.controllers;

import org.hibernate.type.DateType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.vendingexpert.dao.MachineDao;
import pl.vendingexpert.model.Machine;

import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("machines")
public class MachineController {
    private final MachineDao machineDao;
    private Machine machine;
    public MachineController(MachineDao machineDao) {
        
        this.machineDao = machineDao;
    }
    
    @GetMapping
    public String allMachines(Model model) {
        List<Machine> machines = machineDao.findAll();
        model.addAttribute("machines", machines);
        return "machines";
    }
    // open form
    @GetMapping("/addMachine")
    public String addMachineForm(Model model) {
        //model.addAttribute("machine", new Machine());
        return "addMachineFrm";
    }
    // fetch object from form and save to DB
//    @PostMapping("/addMachine")
//    public String saveMachine(Machine machine,@RequestParam DateType instDate) {
//        machine.setInstDate(instDate);
//        machineDao.saveMachine(machine);
//        return "redirect:/machines";
//    }
    @PostMapping("/addMachine")
    public String saveMachine(@RequestParam String name
            ,@RequestParam String type,@RequestParam String serial
            ,@RequestParam Date instDate) {
        // new machine based on form
        Machine newMachine=new Machine();
        newMachine.setName(name);
        newMachine.setType(type);
        newMachine.setSerial(serial);
        newMachine.setInstDate(Date.valueOf(String.valueOf(instDate)));
        machineDao.saveMachine(newMachine);
        return "redirect:/machines";
    }
    @GetMapping("/deleteById/{id}")
    public String delete(@PathVariable Long id) {
        machineDao.deleteById(id);
        return "redirect:/machines";
    }
    
    @GetMapping("/confirmDel/{id}")
    public String confirmDel(@PathVariable Long id, Model model) {
        Machine machine = machineDao.findById(id);
        model.addAttribute("machine", machine);
        
        return "confirmDel";
    }
    
    @GetMapping("/editMachine/{id}")
    public String editMachineForm(@PathVariable Long id, Model model) {
        Machine machine = machineDao.findById(id);
        model.addAttribute("machine", machine);
        return "addMachine";
    }
}
