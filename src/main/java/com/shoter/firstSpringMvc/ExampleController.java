package com.shoter.firstSpringMvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExampleController {

    @RequestMapping(method = RequestMethod.GET, value="/example")
    public ModelAndView hello(){
        User user = new User("John Doe", "Some random message");
        return new ModelAndView("hello", "user", user);
    }

}
