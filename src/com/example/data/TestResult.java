package com.example.data;

import java.util.*;

public class TestResult {
public List TRinfo(String TR_result) {
		
		List info=new ArrayList();
		
		if(TR_result.equals("001011")) {	
			info.add("필동닭칼국수");		//식당 이름
			info.add("37.560193");		//식당 위치의 위도
			info.add("126.996601");		//식당 위치의 경도 
			info.add("02-2274-7749");	//식당 전화번호
			info.add("image/Result/001011_1.jpg");
			info.add("https://www.facebook.com/photo.php?fbid=321110798881874&set=pb.100029488686991.-2207520000..&type=3");	//식당 위치
			info.add("닭칼국수 - 7000원, 들깨칼국수 - 7000원");
			
			info.add("왕순이 분식");		//식당 이름
			info.add("37.561636");		//식당 위치의 위도
			info.add("126.998448");		//식당 위치의 경도 
			info.add("02-2263-2600");	//식당 전화번호
			info.add("image/Result/001011_2.jpg");
			info.add("https://www.facebook.com/photo.php?fbid=321111382215149&set=pb.100029488686991.-2207520000..&type=3");	//식당 위치
			info.add("김밥, 컵밥 - 3000~4000원");
			
			info.add("진땡이 순댓국");		//식당 이름
			info.add("37.559809");		//식당 위치의 위도
			info.add("126.996298");		//식당 위치의 경도 
			info.add("02-2263-8441");	//식당 전화번호
			info.add("image/Result/001011_3.jpg");
			info.add("https://www.facebook.com/photo.php?fbid=321111645548456&set=pb.100029488686991.-2207520000..&type=3");	//식당 위치
			info.add("순댓국 - 7000원, 다슬기들깨탕 - 7000원");
		}
		
		if(TR_result.equals("001001")) {	
			info.add("돈천동");		//식당 이름
			info.add("37.559526");		//식당 위치의 위도
			info.add("126.996538");		//식당 위치의 경도 
			info.add("070-4222-8988");	//식당 전화번호
			info.add("image/Result/001001_1.jpg");
			info.add("https://www.facebook.com/photo.php?fbid=321110798881874&set=pb.100029488686991.-2207520000..&type=3");	//식당 위치
			info.add("수제돈카츠와 카레라이스 - 7000원, 가츠동 - 7000원");
			
			info.add("치아바타몽스");		//식당 이름
			info.add("37.561816");		//식당 위치의 위도
			info.add("126.994563");		//식당 위치의 경도 
			info.add("02-2261-0225");	//식당 전화번호
			info.add("image/Result/001001_2.jpg");
			info.add("https://www.facebook.com/photo?fbid=321110592215228&set=pb.100029488686991.-2207520000..");	//식당 위치
			info.add("닭가슴살 크랜베리 샌드위치 - 7200원, 치아바타 - 3000원");
			
			info.add("파파포");		//식당 이름
			info.add("37.560193");		//식당 위치의 위도
			info.add("126.996535");		//식당 위치의 경도 
			info.add("02-6368-8292");	//식당 전화번호
			info.add("image/Result/001001_1.jpg");
			info.add("https://www.facebook.com/photo?fbid=321341332192154&set=pb.100029488686991.-2207520000..");	//식당 위치
			info.add("불고기 쌀국수 - 7000원, 양지쌀국수 - 8000원");
		}

		return(info);	
	}
}