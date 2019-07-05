package com.booking.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.booking.domain.Order;

public class OrderDTO {
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
	public static Specification<Order> getSpecification(OrderDTO queryDto){
		return new Specification<Order>() {
			@Override
			public Predicate toPredicate(Root<Order> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				List<Predicate> predicates = new ArrayList<Predicate>();
				
				if(queryDto.getKey()!=null) {
					Predicate p1 = criteriaBuilder.like(root.get("rprice").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p2 = criteriaBuilder.like(root.get("rcount").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p3 = criteriaBuilder.like(root.get("status").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p4 = criteriaBuilder.like(root.get("hotel").get("hname").as(String.class), "%"+queryDto.getKey()+"%");
					Predicate p5 = criteriaBuilder.like(root.get("room").get("rname").as(String.class), "%"+queryDto.getKey()+"%");
					predicates.add(p1);
					predicates.add(p2);
					predicates.add(p3);
					predicates.add(p4);
					predicates.add(p5);
				}
				return criteriaBuilder.or(predicates.toArray(new Predicate[predicates.size()]));
			}
		};
	}
}
