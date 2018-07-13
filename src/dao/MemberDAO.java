package dao;

import java.util.List;

import domain.MemberBean;

public interface MemberDAO {
	public void insertMemberBean(MemberBean member); 
	public List<MemberBean> selectAllExam();
	public List<MemberBean> selectByName(String name);
	public MemberBean selectById(String id);
	public int countExam();
	public void updateExam(MemberBean member);
	public void deleteExam(MemberBean member);
	
}
