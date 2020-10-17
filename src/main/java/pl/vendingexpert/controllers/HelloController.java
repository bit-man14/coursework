package pl.vendingexpert.controllers;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {
    private static final Logger log= LoggerFactory.getLogger(HelloController.class);
    //@RequestMapping(value = {"/b/{n}","/b"}, produces = "text/plain;charset=UTF-8")
    @RequestMapping(value = {"/b/{num}","/b"})
    @ResponseBody
    public String body(@PathVariable(name="num", required = false) String n) {
        log.info("Test log no.{} and no.{} Par={}",1,2,n);
        
        return "Żółta jaźń u gęsi "+(n==null?"bez numeru": "nr "+n);//UTF-8 w konfiguracji
    }
//    @RequestMapping("/")
//    public String start() {
//        return "resultPage.jsp";
//    }
}
