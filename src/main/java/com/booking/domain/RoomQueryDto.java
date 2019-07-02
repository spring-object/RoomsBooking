package com.booking.domain;

import java.util.ArrayList;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

public class RoomQueryDto {
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
	public static Specification<Room> getSpecification(RoomQueryDto roomDto){
		return new Specification<Room>() {

			@Override
			public Predicate toPredicate(Root<Room> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				ArrayList<Predicate> predicates = new ArrayList<Predicate>();
				String regex = "-?[0-9]+.?[0-9]+";//正则表达式，判断是否为带小数点数字字符串
				if(roomDto.getKey()!=null) {
					Predicate p1 = criteriaBuilder.like(root.get("rname").as(String.class), "%"+roomDto.getKey()+"%");
					Predicate p2 = criteriaBuilder.like(root.get("type").as(String.class), "%"+roomDto.getKey()+"%");
					Predicate p3 = criteriaBuilder.like(root.get("info").as(String.class), "%"+roomDto.getKey()+"%");
					Predicate p4 = criteriaBuilder.like(root.get("equipment").as(String.class), "%"+roomDto.getKey()+"%");
					predicates.add(p1);
					predicates.add(p2);
					predicates.add(p3);
					predicates.add(p4);
				}
				if(roomDto.getKey().matches(regex)) {
					Predicate p1 = criteriaBuilder.between(root.get("price").as(Float.class), 0f, Float.parseFloat(roomDto.getKey()));
					predicates.add(p1);
				}
				return criteriaBuilder.or(predicates.toArray(new Predicate[predicates.size()]));
			}
			
		};
	}
}
