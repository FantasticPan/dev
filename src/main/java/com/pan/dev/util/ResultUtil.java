package com.pan.dev.util;

import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Pan on 2019/6/14.
 */
public class ResultUtil {

    public static ModelAndView view(String view) {
        return new ModelAndView(view);
    }

    public static ModelAndView view(String viewName, String modelName, Object modelObject) {
        return new ModelAndView(viewName, modelName, modelObject);
    }

    public static ModelAndView redirect(String request) {
        return new ModelAndView("redirect:" + request);
    }
}
