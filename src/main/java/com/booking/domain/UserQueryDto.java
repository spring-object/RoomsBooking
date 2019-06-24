package com.booking.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

public class UserQueryDto {
	private String key;
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public static Specification<User> getSpecification(UserQueryDto queryDto){
		return new Specification<User>() {
			@Override
			public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				List<Predicate> predicates = new ArrayList<Predicate>();
				
				if(queryDto.getKey()!=null) {
					Predicate p1 = criteriaBuilder.like(root.get("uname").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p2 = criteriaBuilder.like(root.get("telephone").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p3 = criteriaBuilder.like(root.get("email").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p4 = criteriaBuilder.like(root.get("create_time").as(String.class), "%"+queryDto.getKey()+"%");
					predicates.add(p1);
					predicates.add(p2);
					predicates.add(p3);
					predicates.add(p4);
				}
				return criteriaBuilder.or(predicates.toArray(new Predicate[predicates.size()]));
			}
		};
	}
}
