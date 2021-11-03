package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor	// 생성자를 만들어 주는 역할
@NoArgsConstructor	// 비어있는 생성자(기본생성자)를 만들어 주는 역할
public class SampleVO {
	
	private int mno;
	private String firstName;
	private String lastName; 
	
}
