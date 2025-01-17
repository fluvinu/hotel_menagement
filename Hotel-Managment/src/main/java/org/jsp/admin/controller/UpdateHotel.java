package org.jsp.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.dao.AdminDao;
import org.jsp.dao.AdminDaoImpl;
import org.jsp.entity.Hotel;
@WebServlet("/UpdateHotel")
public class UpdateHotel extends HttpServlet{
	private AdminDao adminDao=new AdminDaoImpl();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Hotel hotel=new Hotel();
		hotel.setId(Integer.parseInt(req.getParameter("id")));
		hotel.setHotelName(req.getParameter("hotelName"));
		hotel.setMobile(Long.parseLong(req.getParameter("contact")));
		hotel.setCity(req.getParameter("city"));
		hotel.setAddress(req.getParameter("address"));
		hotel.setPrice(Double.parseDouble(req.getParameter("price")));
		hotel.setNoOfBookedRoom(Integer.parseInt(req.getParameter("rooms")));
		hotel.setTotalNoOfRoom(Integer.parseInt(req.getParameter("totalRooms")));
		
		Hotel updatedHotal=adminDao.updateHotelDetails(hotel);
		
		resp.sendRedirect("/Hotel-Managment/admin/HotelList.jsp?msg=update");
		
	}

}
