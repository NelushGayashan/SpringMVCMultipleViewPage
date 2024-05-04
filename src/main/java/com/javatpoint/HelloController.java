package com.javatpoint;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

    @RequestMapping("/menu")
    public String redirect() {
        return "viewpage";
    }

    @RequestMapping("/item")
    public String display(Model model, @RequestParam(name = "selectedOption", required = true) String selectedOption) {

        if ("item1".equals(selectedOption)) {
            model.addAttribute("itemNumber", 1);
        }
        if ("item2".equals(selectedOption)) {
            model.addAttribute("itemNumber", 2);
        }
        if ("item3".equals(selectedOption)) {
            model.addAttribute("itemNumber", 3);
        }
        return "final";
    }

    @RequestMapping("/end")
    public String confirm(Model model, @RequestParam(name = "itemNumber", required = true) int itemNumber) {
        model.addAttribute("itemNumber", itemNumber);
        return "end";
    }
}
