package org.jsp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.entity.BookingDetails;
import org.jsp.entity.Card;
import org.jsp.entity.Customer;

public class CustomerDaoImpl implements CustomerDao{
	EntityManagerFactory factory=Persistence.createEntityManagerFactory("hotel_booking");
	EntityManager manager=factory.createEntityManager();
	EntityTransaction transaction=null;

	public void registration(Customer customer) {
		transaction=manager.getTransaction();
		transaction.begin();
		manager.persist(customer);
		transaction.commit();
	}

	public Customer login(String email, String password) {
		String jpql="select c from Customer c where c.email=?1 and c.password=?2";
		
		Query query=manager.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		try {
			Customer customer =(Customer) query.getSingleResult();
			return customer;
		} catch (Exception e) {
			return null;
		}
	}

	public void registerBookingDetails(BookingDetails details) {
		transaction=manager.getTransaction();
		transaction.begin();
		manager.persist(details);
		transaction.commit();
	}

	public boolean addCard(Card card) {
		transaction=manager.getTransaction();
		transaction.begin();
		if(card !=null) {
			manager.persist(card);
			transaction.commit();
			return true;
		}
		return false;
		
	}

	public BookingDetails updateBookingStatus(BookingDetails bookingDetails) {
		transaction=manager.getTransaction();
		transaction.begin();
		if(bookingDetails!=null) {
			BookingDetails update=manager.merge(bookingDetails);
			transaction.commit();
			return update;
		}
		return null;
		
	}

}
