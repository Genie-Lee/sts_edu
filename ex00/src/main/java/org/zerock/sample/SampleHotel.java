package org.zerock.sample;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
//import lombok.NonNull;
//import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Component
@ToString
@Getter
@AllArgsConstructor //인스턴스 변수로 선언된 모든 것을, 파라미터로 받는 생성자 생성

//@RequiredArgsConstructor 특정 변수만 생성자를 작성하고 싶을 때 @NonNull과 함께 사용
public class SampleHotel {

	//@NonNull
	private Chef chef;
	
	/*@AllArgsConstructor가 추가되어 제거
	 * public SampleHotel(Chef chef) {
		
		this.chef = chef;
	}*/
}
