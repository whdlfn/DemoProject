package org.iclass.service;

import static org.junit.jupiter.api.Assertions.*;

import java.security.NoSuchAlgorithmException;

import org.junit.jupiter.api.Test;

import lombok.extern.slf4j.Slf4j;
@Slf4j
class HashingTest {

	@Test
	void test() {
		MemberService service = new MemberService();
		try {
			String  hashvlaue = service.encrypt("익룩");
			log.info("익룩 해시 값 : {}",hashvlaue);
			hashvlaue = service.encrypt("thGH123!@4");
			log.info("thGH123!@4 해시 값 : {}",hashvlaue);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
