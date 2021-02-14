package kr.gov.status.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface STVoewCommand {
	
	public void excute(HttpServletRequest request, HttpServletResponse response);
}
