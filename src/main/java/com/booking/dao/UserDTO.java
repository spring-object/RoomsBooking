package com.booking.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;

import com.booking.domain.User;

@Component
public class UserDTO {
	private String key;
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	/**
	 * 自定义查询条件实现模糊查询
	 * @param queryDto 查询工具对象，接收查询条件
	 * @return 返回拼接好的条件
	 */
	@SuppressWarnings("serial")
	public static Specification<User> getSpecification(UserDTO userDTO){
		return new Specification<User>() {
			@Override
			public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				List<Predicate> predicates = new ArrayList<Predicate>();
				
				if(userDTO.getKey()!=null) {
					Predicate p1 = criteriaBuilder.like(root.get("uname").as(String.class), "%"+userDTO.getKey()+"%");
					Predicate p2 = criteriaBuilder.like(root.get("telephone").as(String.class), "%"+userDTO.getKey()+"%");
					Predicate p3 = criteriaBuilder.like(root.get("email").as(String.class), "%"+userDTO.getKey()+"%");
					Predicate p4 = criteriaBuilder.like(root.get("create_time").as(String.class), "%"+userDTO.getKey()+"%");
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
