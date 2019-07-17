package com.tasklist.dao;

import com.tasklist.model.Task;
import org.springframework.data.repository.CrudRepository;

public interface TaskDAO extends CrudRepository<Task, Integer> {
}
