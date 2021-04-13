package com.portpolio.controller;

import com.portpolio.controller.action.Action;
import com.portpolio.controller.action.BoardAction;
import com.portpolio.controller.action.BoardDeleteAction;
import com.portpolio.controller.action.BoardUpdateAction;
import com.portpolio.controller.action.BoardUpdateFormAction;
import com.portpolio.controller.action.BoardViewAction;
import com.portpolio.controller.action.BoardWriteAction;
import com.portpolio.controller.action.BoardWriteFormAction;
import com.portpolio.controller.action.CheckPassAction;
import com.portpolio.controller.action.CheckPassFormAction;
import com.portpolio.controller.action.IdCheckAction;
import com.portpolio.controller.action.IndexAction;
import com.portpolio.controller.action.JoinAction;
import com.portpolio.controller.action.JoinOkAction;
import com.portpolio.controller.action.LoginAction;
import com.portpolio.controller.action.LoginCheckAction;
import com.portpolio.controller.action.LogoutAction;
import com.portpolio.controller.action.MainAction;

public class ActionFactory {
	
	private ActionFactory() {};
	
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("command : "+command);
		
		if(command.equals("index")) {
			action = new IndexAction();
		}else if(command.equals("board")) {
			action = new BoardAction();
		}else if(command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("login_check")) {
			action = new LoginCheckAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("main")) {
			action = new MainAction();
		}else if(command.equals("idCheck")) {
			action = new IdCheckAction();
		}else if(command.equals("join_ok")) {
			action = new JoinOkAction();
		}else if(command.equals("board_view")) {
			action = new BoardViewAction();
		}else if(command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		}else if(command.equals("board_write")) {
			action = new BoardWriteAction();
		}else if(command.equals("check_pass_form")) {
			action = new CheckPassFormAction();
		}else if(command.equals("check_pass")) {
			action = new CheckPassAction();
		}else if(command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		}else if(command.equals("board_update")) {
			action = new BoardUpdateAction();
		}else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		return action;
	}

}
