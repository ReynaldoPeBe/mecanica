package com.umsa.mec.models.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.umsa.mec.models.entity.Persona;

@Repository
public class PersonaDaoImpl implements IPersonaDao {
	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional
	public void save(Persona persona) {
		em.persist(persona);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional(readOnly=true)
	public List<Persona> findAll() {
		return em.createQuery("from Persona").getResultList();
	}

	@Override
	@Transactional(readOnly=true)
	public Persona getPersonaConCi(Long ci) {
		return (Persona) em.createQuery("Select p from Persona p WHERE p.ci=:column1").setParameter("column1", ci).getSingleResult();
	}

}
