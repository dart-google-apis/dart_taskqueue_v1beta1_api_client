part of taskqueue_v1beta1_api_client;

class TaskqueuesResource extends Resource {

  TaskqueuesResource(Client client) : super(client) {
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
  Future<TaskQueue> get(String project, String taskqueue, {bool getStats, Map optParams}) {
    var completer = new Completer();
    var url = "{project}/taskqueues/{taskqueue}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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

class TasksResource extends Resource {

  TasksResource(Client client) : super(client) {
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
  Future<Map> delete(String project, String taskqueue, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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
  Future<Task> get(String project, String taskqueue, String task, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/{task}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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
  Future<Tasks> lease(String project, String taskqueue, int numTasks, int leaseSecs, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks/lease";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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
  Future<Tasks2> list(String project, String taskqueue, {Map optParams}) {
    var completer = new Completer();
    var url = "{project}/taskqueues/{taskqueue}/tasks";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
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
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
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

