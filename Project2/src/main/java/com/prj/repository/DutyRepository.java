package com.prj.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.prj.dto.CommunityDTO;
import com.prj.entity.Community;
import com.prj.entity.Duty;



public interface DutyRepository extends JpaRepository<Duty, Long> {
	@Override
	ArrayList<Duty> findAll();

	

}
