package com.tasklist.controller;

import com.tasklist.dao.TaskDAO;
import com.tasklist.model.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/task")
public class TaskController {
    @Autowired
    private TaskDAO taskDAO;

    @GetMapping("/list")
    public String getAllArticles(Model model) {
        List<Task> tasks = new ArrayList<>();
        taskDAO.findAll().forEach(e -> tasks.add(e));
        model.addAttribute("tasks", tasks);
        return "list_page";
    }

    @GetMapping("/add")
    public String getAdd(Model model) {
        model.addAttribute("task", new Task());
        return "add_form";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("task")Task task, Model model) {
        taskDAO.save(task);
        String list_page = getAllArticles(model);
        return list_page;
    }

    @GetMapping("/edit")
    public String getEdit(@RequestParam(value="id") Integer id, Model model){
        Task obj = getTask(id);
        model.addAttribute("task", obj);
        return "edit_form";
    }

    @PostMapping("/edit")
    public String edit(@ModelAttribute("task")Task task, Model model) {
        taskDAO.save(task);
        String list_page = getAllArticles(model);
        return list_page;
    }

    @GetMapping("/delete")
    public String delete(@RequestParam(value="id") Integer id, Model model){
        Task obj = getTask(id);
        taskDAO.delete(obj);
        String list_page = getAllArticles(model);
        return list_page;
    }

    public Task getTask(Integer id){
        //Long l = new Long(id);
        Task obj = taskDAO.findById(id).get();
        return obj;
    }
}
