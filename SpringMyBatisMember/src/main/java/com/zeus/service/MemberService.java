package com.zeus.service;

import java.util.List;

import com.zeus.domain.Member;

public interface MemberService {

	public int create(Member member) throws Exception;

	public List<Member> list() throws Exception;

	public Member read(Member member) throws Exception;

	public int delete(Member member) throws Exception;

	public int update(Member member) throws Exception;
	
	public Member loginRead(Member member) throws Exception;
}
