part of taskqueue_v1beta1_api_client;

class TaskqueuesResource_ extends Resource {

  TaskqueuesResource_(Client client) : super(client) {
  }

  /**
   * Get detailed information about a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The id of the taskqueue to get the properties of.
   *
   * [getStats] - Whether to get stats. Optional.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TaskQueue> get(core.String project, core.String taskqueue, {core.bool getStats, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/taskqueues/{taskqueue}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (getStats != null) queryParams["getStats"] = getStats;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TaskQueue.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TasksResource_ extends Resource {

  TasksResource_(Client client) : super(client) {
  }

  /**
   * Delete a task from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue to delete a task from.
   *
   * [task] - The id of the task to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String project, core.String taskqueue, core.String task, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get a particular task from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue in which the task belongs.
   *
   * [task] - The task to get properties of.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Task> get(core.String project, core.String taskqueue, core.String task, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (task == null) paramErrors.add("task is required");
    if (task != null) urlParams["task"] = task;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Task.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lease 1 or more tasks from a TaskQueue.
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The taskqueue to lease a task from.
   *
   * [numTasks] - The number of tasks to lease.
   *
   * [leaseSecs] - The lease in seconds.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Tasks> lease(core.String project, core.String taskqueue, core.int numTasks, core.int leaseSecs, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/lease";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (leaseSecs == null) paramErrors.add("leaseSecs is required");
    if (leaseSecs != null) queryParams["leaseSecs"] = leaseSecs;
    if (numTasks == null) paramErrors.add("numTasks is required");
    if (numTasks != null) queryParams["numTasks"] = numTasks;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Tasks.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List Tasks in a TaskQueue
   *
   * [project] - The project under which the queue lies.
   *
   * [taskqueue] - The id of the taskqueue to list tasks from.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Tasks2> list(core.String project, core.String taskqueue, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (taskqueue == null) paramErrors.add("taskqueue is required");
    if (taskqueue != null) urlParams["taskqueue"] = taskqueue;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Tasks2.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

