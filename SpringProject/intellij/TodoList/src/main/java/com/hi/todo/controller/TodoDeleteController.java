package com.hi.todo.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@Log4j2
public class TodoDeleteController {

    // 삭제번호를 받고 -> 삭제하고 -> /todo/list 로 이동.

    @RequestMapping("/todo/delete")
    public String deleteTodo(@RequestParam("tno") int tno) {

        log.info(" /todo/delete");

        log.info("삭제 요청 번호 : " + tno);

        return "redirect:/todo/list";
    }



}