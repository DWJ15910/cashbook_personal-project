package cash.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 톰캣이 켜질때 실행되는 리스너
 *
 */
@WebListener
public class BootListener implements ServletContextListener {

	@Override
    public void contextInitialized(ServletContextEvent sce)  { 
		
		// application속성 영역에 "currentCounter"속성변수 0으로초기화
		// sce.getServletContext()메서드가 ServletContext객체를 가져오는 메서드
		ServletContext application = sce.getServletContext();
		// 현재 접속자 수를 세기위해 부여
		application.setAttribute("currentCounter", 0);
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		}catch (Exception e) {
			// 예외발생시 출력
			System.out.println("mariadb 드라이버 로딩 실패");
			e.printStackTrace();
		}
		System.out.println("mariadb 드라이버 로딩 성공");
	}
}
