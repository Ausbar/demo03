package com.example.demo03.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;
import java.util.HashMap;
import java.util.Date;

@Controller
public class HelloController
{
	protected final Log logger=LogFactory.getLog(getClass());

	// Mappings de prueba.
	@RequestMapping(value="/hello.json")
	public ModelAndView handleRequestHello(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		String now=(new Date()).toString();
		logger.info("returning hello view with "+now);

		Map<String, Object> myModel=new HashMap<String, Object>();
		myModel.put("now", now);

		return new ModelAndView("hello.jsp", "model", myModel);
	}
	
	// Mappings de prueba.
	@RequestMapping(value="/bye.json")
	public ModelAndView handleRequestBye(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning bye view");

		return new ModelAndView("hello.jsp");
	}

	// Mapping para que cualquier usuario haga Logout.
	@RequestMapping(value="/logout")
	public ModelAndView handleRequestLogout(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Logout para "+request.getSession().getAttribute("view"));

		request.getSession().invalidate();

		return new ModelAndView("WEB-INF/jsp/logout.jsp", "view", null);
	}
	
	// Mapping para que el usuario Restaurant haga Login.
	@RequestMapping(value="/restaurant")
	public ModelAndView handleRequestLoginRestaurant(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning restaurant view (HTML): op="+
			request.getParameter("op")+"&user="+
			request.getParameter("user")+"&password="+
			request.getParameter("password")+"&actor="+
			request.getParameter("actor")
		);
		logger.info("** (16) referer: "+request.getHeader("Referer")+"**");

		if (null!=request.getParameter("password"))
		{
			if (request.getParameter("password").equals("1111"))
			{
				request.getSession().setAttribute("view", "restaurantView.html");
			}
			else
			{
				request.getSession().setAttribute("view", "loginError.html");
			}
		}

		return new ModelAndView("WEB-INF/jsp/restaurantView.jsp", "view", null);
	}

	// Mapping para que el usuario Restaurant obtenga datos JSON.
	@RequestMapping(value="/restaurant",headers="Referer=http://localhost:8080/demo03/restaurantView.html")
	public ModelAndView handleRequestRestaurant(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning restaurant view (JSON)");
		logger.info("** (16) referer: "+request.getHeader("Referer")+"**");

		return new ModelAndView("WEB-INF/jsp/restaurant.jsp", "view",
			(String)request.getSession().getAttribute("view"));
	}

	// Mapping para que el usuario Worker Enterprise haga Login.
	@RequestMapping(value="/workerEnterprise")
	public ModelAndView handleRequestLoginWorkerEnterprise(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning workerEnterprise view (HTML): op="+
				request.getParameter("op")+"&user="+
				request.getParameter("user")+"&password="+
				request.getParameter("password")+"&actor="+
				request.getParameter("actor")
		);
		logger.info("** (21) referer: "+request.getHeader("Referer")+"**");

		String view=null;
		if (null!=request.getParameter("password"))
		{
			if (request.getParameter("password").equals("2222"))
			{
				request.getSession().setAttribute("view", "workerEnterpriseView.html");
			}
			else
			{
				request.getSession().setAttribute("view", "loginError.html");
			}
		}

		return new ModelAndView("WEB-INF/jsp/workerEnterpriseView.jsp", "view", view);
	}

	// Mapping para que el usuario Worker Enterprise obtenga datos JSON.
	@RequestMapping(value="/workerEnterprise",headers="Referer=http://localhost:8080/demo03/workerEnterpriseView.html")
	public ModelAndView handleRequestworkerEnterprise(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning workerEnterprise view (JSON)");
		logger.info("** (21) referer: "+request.getHeader("Referer")+"**");

		return new ModelAndView("WEB-INF/jsp/workerEnterprise.jsp", "view",
			(String)request.getSession().getAttribute("view"));
	}

	// Mapping para que el usuario Enterprise haga Login.
	@RequestMapping(value="/enterprise",headers="Referer=http://localhost:8080/demo03/index.jsp")
	public ModelAndView handleRequestLoginEnterprise(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning enterprise view (HTML): op="+
			request.getParameter("op")+"&user="+
			request.getParameter("user")+"&password="+
			request.getParameter("password")+"&actor="+
			request.getParameter("actor")
		);
		logger.info("** (2) referer: "+request.getHeader("Referer")+"**");

		return new ModelAndView("WEB-INF/jsp/enterpriseView.jsp");
	}

	// Mapping para que el usuario Enterprise obtenga datos JSON.
	@RequestMapping(value="/enterprise")
	public ModelAndView handleRequestEnterprise(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException
	{
		logger.info("Returning enterprise view (JSON)");
		logger.info("** (2) referer: "+request.getHeader("Referer")+"**");

		return new ModelAndView("WEB-INF/jsp/enterprise.jsp");
	}
}