package web.commands;

import business.entities.User;
import business.exceptions.UserException;
import business.services.LogicFacade;
import business.services.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class UpdateStatusCommand extends CommandProtectedPage {
    UserFacade userFacade;
    LogicFacade logicFacade;
    List<User> userList;

    public UpdateStatusCommand(String pageToShow, String role) {
        super(pageToShow, role);
        userFacade = new UserFacade(database);
        logicFacade = new LogicFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        int requestID = Integer.parseInt(request.getParameter("requestID"));

        int statusID = Integer.parseInt(request.getParameter("status"));


        try {
            logicFacade.updateStatus(requestID,statusID);
        } catch (UserException e) {
            e.printStackTrace();
        }

        request.setAttribute("requestID",requestID);
        ViewRequestInfoCommand viewRequestInfoCommand = new ViewRequestInfoCommand("viewrequestinfopage","employee");
        viewRequestInfoCommand.execute(request,response);

        return "viewrequestinfopage";
    }
}
