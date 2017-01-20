package com.jw.model;

import java.util.List;
import java.util.Map;

public class JsonData {
String msg;
List<List<Map<String, String>>>objects;
public String getMsg() {
	return msg;
}
public void setMsg(String msg) {
	this.msg = msg;
}
public List<List<Map<String, String>>> getMaps() {
	return objects;
}
public void setMaps(List<List<Map<String, String>>> objects) {
	this.objects = objects;
}
}
