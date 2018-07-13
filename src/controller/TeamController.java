package controller;

import domain.*;
import service.*;
import java.util.*;
import javax.swing.JOptionPane;

public class TeamController {
	public static void main(String[] args) {
		ExamBean exam = null;
		MemberBean member = null;
		while (true) {
			switch (JOptionPane.showInputDialog("0.종료 1.이름 / 월 2. 과목별 점수")) {
			case "0":
				return;
			case "1":
				exam = new ExamBean();
				member = new MemberBean();
				String[] arr = JOptionPane.showInputDialog("이름 / 월").split("/");
				exam.setMonth("7");
				// String name = arr[0];
				exam.setMemId("저스티스4");
				/*List<MemberBean> list = MemberServiceImpl.getInstance().findMemberByName(arr[0]);

				if (list.size() == 0) {
					System.out.println("조회할 데이터가 없습니다.");
				} else if (list.size() == 1) {
					exam.setMemId(list.get(0).getMemId());
				} else {
					System.out.println(list);
				}*/
				break;
			case "2":
				exam.setScore(JOptionPane.showInputDialog("JAVA/SQL/R/HTML5/PYTHON 순으로 점수를 입력하세요."));
				ExamServiceImpl.getInstance().createExamBean(exam);
				break;
			default:
				break;
			}
		}
	}
}
