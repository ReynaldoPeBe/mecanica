package com.umsa.mec.models.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.umsa.mec.models.entity.Cupo;

@Repository
public class CupoDaoImpl implements ICupoDao {
	@PersistenceContext
	private EntityManager emc;

	@Override
	@Transactional(readOnly=true)
	public Cupo getCupo(Long i) {
		return emc.find(Cupo.class, i);
	}
}
