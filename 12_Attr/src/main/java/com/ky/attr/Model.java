package com.ky.attr;

import javax.servlet.http.HttpServletRequest;

public class Model {

	public static void getExchange(HttpServletRequest request) {
		// 1. 값 받기
		int price = Integer.parseInt(request.getParameter("p"));
		int money = Integer.parseInt(request.getParameter("m"));

		int ex = money - price;
		
		String say = "잔돈 여깄습니다~";
		if (price == money) {
			say = "감사합니다.";
		} else if (price > money) {
			say = "돈 모자른데요..?";
			ex = price - money;
		}

		// 결과 페이지에서 어떤 값을 쓸지?
		// price, money, ex, say
//		request.setAttribute("price", price);
//		request.setAttribute("money", money);
//		request.setAttribute("ex", ex);
//		request.setAttribute("say", say);

		// 위에처럼 필요한 것들을 따로 실어서 보내도 되는데,
		// 그걸 하나로 뭉쳐서 보내자(객체)
		Result r = new Result(price, money, ex, say);
		request.setAttribute("rr", r);

	}

	public static void makeValue(HttpServletRequest request) {
		int asd = Integer.parseInt(request.getParameter("asd"));
		asd *= -1; //데이터 양수로 만들기
		request.setAttribute("asdasd", asd);
	}

}
