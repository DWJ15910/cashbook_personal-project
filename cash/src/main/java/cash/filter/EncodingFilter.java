package cash.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

// 모든 컨트롤러를 지나치는 인코딩필터
@WebFilter("/*")

public class EncodingFilter extends HttpFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// utf-8 인코딩
		request.setCharacterEncoding("UTF-8");
		// 다음 필터로 넘어가기 (넘어갈 필터가 없으면 거기서 마지막 서블릿으로 요청사항 전달)
		chain.doFilter(request, response);
	}
}
