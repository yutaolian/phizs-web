package com.phizs.framework.web.controller.index;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * phizs-web
 *
 * @author lyt
 * @date 2018/1/30
 * @github https://github.com/yutaolian
 * @description
 */
public class IndexController {

    @GetMapping("/")
    public String redirectIndex() {
        return "redirect:/index";
    }

    @GetMapping(value = {"/index"})
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
