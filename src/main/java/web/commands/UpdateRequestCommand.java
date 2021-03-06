package web.commands;

import business.Calculator.CarportCalculator;
import business.entities.Material;
import business.exceptions.UserException;
import business.persistence.LogicFacade;
import business.persistence.UserFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class UpdateRequestCommand extends CommandProtectedPage {
    UserFacade userFacade;
    LogicFacade logicFacade;

    public UpdateRequestCommand(String pageToShow, String role) {
        super(pageToShow, role);
        userFacade = new UserFacade(database);
        logicFacade = new LogicFacade(database);
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        List<Material> BOM;
        CarportCalculator carportCalculator = new CarportCalculator();
        int requestID = Integer.parseInt(request.getParameter("requestID"));
        int carportType = Integer.parseInt(request.getParameter("carportType"));
        int width = Integer.parseInt(request.getParameter("width"));
        int length = Integer.parseInt(request.getParameter("length"));
        int roofID = Integer.parseInt(request.getParameter("roofID"));
        int shedWidth = Integer.parseInt(request.getParameter("shedWidth"));
        int shedLength = Integer.parseInt(request.getParameter("shedLength"));

        if (carportType == 1) {
            try {
                logicFacade.updateRequestCarportTypeOne(requestID, width, length, roofID, shedWidth, shedLength);
            } catch (UserException e) {
                e.printStackTrace();
            }

                BOM = carportCalculator.flatCarportBOM(width, length, shedWidth, shedLength);

        } else {
            int slope = Integer.parseInt(request.getParameter("slope"));
            try {
                logicFacade.updateRequestCarportTypeTwo(requestID, width, length, roofID, slope, shedWidth, shedLength);
            } catch (UserException e) {
                e.printStackTrace();
            }
        BOM = carportCalculator.slopeCarportBOM(width, length, shedWidth, shedLength,slope,roofID);
        }
        try {
            logicFacade.deleteBomItemsByRequestID(requestID);
        } catch (UserException e) {
            e.printStackTrace();
        }

        try {
            logicFacade.createBomItem(requestID, BOM);
        } catch (UserException e) {
            e.printStackTrace();
        }
        request.setAttribute("requestID", requestID);

        ViewRequestInfoCommand viewRequestInfoCommand = new ViewRequestInfoCommand("viewrequestinfopage", "employee");
        viewRequestInfoCommand.execute(request, response);

        return pageToShow;
    }
}
