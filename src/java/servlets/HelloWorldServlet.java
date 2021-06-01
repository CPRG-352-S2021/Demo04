package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Person;

public class HelloWorldServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //this will display the requested JSP as a view
        getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp").forward(request, response);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Capture the parameters from the POST request (the form)
        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        
        // set the attributes for the JSP
        /*
        request.setAttribute("firstName", firstname);
        request.setAttribute("lastName", lastname);
        */
        Person person = new Person(firstname,lastname);
        request.setAttribute("person", person);
        
        // validation: if the parameters don't exist or are empty, show the form again
        if( firstname == null || firstname.equals("") || lastname == null || lastname.equals("")){
            // Create a helpful message to send to the user
            //request.setAttribute("message", "Invalid entry. Please enter both a first and last name.");
            request.setAttribute("invalid", true);
            // forward the reuqest and response objects to the JSP
            // display the form again
            getServletContext().getRequestDispatcher("/WEB-INF/helloWorldForm.jsp").forward(request,response);
            return;// Very important! Stop the code call.
        }
        
        // display the helloWorld JSP
        getServletContext().getRequestDispatcher("/WEB-INF/helloWorld.jsp").forward(request,response);
        
    }

}
