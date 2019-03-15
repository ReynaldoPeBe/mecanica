package com.umsa.mec.models.dao;

import java.util.List;

import com.umsa.mec.models.entity.Persona;

public interface IPersonaDao {

	void save(Persona persona);
	List<Persona> findAll();

	

}
