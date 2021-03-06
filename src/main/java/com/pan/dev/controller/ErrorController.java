//package com.pan.dev.controller;
//
//import com.pan.dev.util.ResultUtil;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;
//import org.springframework.http.HttpStatus;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//
///**
// * 错误处理类
// * Created by Pan on 2019/6/15.
// */
//@Controller
//public class ErrorController implements org.springframework.boot.web.servlet.error.ErrorController {
//
//    private static final Logger LOGGER = LogManager.getLogger(ErrorController.class);
//
//    private static final String ERROR_PATH = "/error";
//
//    @Override
//    public String getErrorPath() {
//        return ERROR_PATH;
//    }
//
//    @RequestMapping(value = ERROR_PATH)
//    public ModelAndView errorHandler(HttpServletRequest request,
//                                     Model model) {
//
//        HttpStatus status = getStatus(request);
//        LOGGER.error("发生错误：" + status.toString());
//
//        //根据状态码返回对应的视图
//        switch (status.value()) {
//            //case 403:
//            //    model.addAttribute("code", 403);
//            //    model.addAttribute("message", "You don't have access");
//            //    return ResultUtil.view("error/error", "errorModel", model);
//            case 404:
//                model.addAttribute("code", 404);
//                model.addAttribute("message", "This page doesn't exist");
//                return ResultUtil.view("error/error", "errorModel", model);
//            case 405:
//                model.addAttribute("code", 405);
//                model.addAttribute("message", "出现了一个错误");
//                return ResultUtil.view("error/error", "errorModel", model);
//            case 500:
//                model.addAttribute("code", 500);
//                model.addAttribute("message", "Internal Server Error");
//                return ResultUtil.view("error/error", "errorModel", model);
//            default:
//                return ResultUtil.redirect("/");
//        }
//    }
//
//    private HttpStatus getStatus(HttpServletRequest request) {
//        //从request获取key为javax.servlet.error.status_code的值
//        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
//        if (statusCode == null) {
//            //获取不到就响应一个500
//            return HttpStatus.INTERNAL_SERVER_ERROR;
//        }
//        try {
//            return HttpStatus.valueOf(statusCode);
//        } catch (Exception ex) {
//            //发生错误也响应一个500
//            return HttpStatus.INTERNAL_SERVER_ERROR;
//        }
//    }
//}
