package com.umsa.mec.models.dao;

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
}
