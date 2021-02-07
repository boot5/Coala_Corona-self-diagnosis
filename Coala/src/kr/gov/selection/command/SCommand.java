package kr.gov.selection.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SCommand {
	//구현 객체에서 해당하는 기능을 각각 다르게 작성하게 될것임(overriding)
	public void execute(HttpServletRequest request, HttpServletResponse response);
}
