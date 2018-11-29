package com.web.common;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class Utils {
	
	public static ObjectNode StringToObjectNode(String data) {

	    try {
	      return ((ObjectNode) new ObjectMapper().readTree(data));
	    } catch (IOException e) {
	      throw new RuntimeException("Parsing error for:-" + data);
	    }
	  }

}
