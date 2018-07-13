package dao;

import java.util.List;

import domain.MemberBean;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {return instance;}
	private MemberDAOImpl() {}

	@Override
	public void insertMemberBean(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberBean> selectAllExam() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> selectByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean selectById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countExam() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateExam(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteExam(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

}
