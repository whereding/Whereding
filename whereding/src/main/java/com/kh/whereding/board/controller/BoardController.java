package com.kh.whereding.board.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.whereding.board.model.service.BoardServiceImpl;
import com.kh.whereding.board.model.vo.CollaboRation;
import com.kh.whereding.board.model.vo.Notice;
import com.kh.whereding.board.model.vo.Qna;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.common.template.Pagenation;

import oracle.net.aso.b;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	/** 서비스 센터 접속용
	 * @return
	 */
	@RequestMapping(value = "service.bo")
	public String intoService() {
		
		return "board/serviceCenter";
	}
	
	/** 공지사항 목록
	 * @param currentPage
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "notice.bo")
	public String noticeList(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		
		int listCount = bService.selectNoticeListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Notice> list = bService.selectNoticeList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		return "board/noticeListView";
	}
	
	
	@RequestMapping(value = "collabo.bo")
	public String collaboCompany(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		
		int listCount = bService.selectCollaboListCount();
//		System.out.println(listCount);
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<CollaboRation> list = bService.selectCollaboList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		
		return "board/collaboListView";
	}
	
	/** 공지사항 등록 페이지
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "noticeEnroll.bo")
	public String enrollNotice(String board,HttpServletRequest request) {
		request.setAttribute("board", board);
		return "board/boardEnrollForm";
	}
	
	/** 공지사항 상세보기
	 * @param board
	 * @param bno
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "noticeDetail.bo")
	public String noticeDetailView(String board,int bno,HttpServletRequest request) { 

		Notice n = bService.selectNotice(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("n", n);
		
		return"board/boardDetailView";
	}
	@RequestMapping(value = "collaboDetail.bo")
	public String collaboDetailView(String board,int bno,HttpServletRequest request) {
		
		CollaboRation cr = bService.selectCollabo(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("cr", cr);
		
		return"board/boardDetailView";
	}
	@RequestMapping(value = "qnaDetail.bo")
	public String qnaDetailView(String board,int bno,HttpServletRequest request) {
		
		Qna q = bService.selectQna(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("q", q);
		
		return "board/boardDetailView";
	}
	
	/** 공지사항 등록 후
	 * @param n
	 * @return
	 */
	@RequestMapping( value = "insertNotice.bo")
	public String noticeInsert(Notice n,HttpSession session) {
		int result = bService.insertNotice(n);
		
		if(result >0) {
			session.setAttribute("alertMsg", "공지사항이 정상적으로 등록되었습니다.");
			return "redirect:notice.bo";
		}else {
			session.setAttribute("alertMsg", "공지사항 등록에 실패하였습니다.");
			return "redirect:notice.bo";
		}
	}
	
	
	
	/** qna 리스트 페이지
	 * @return
	 */
	@RequestMapping(value = "qna.bo")
	public String intoQna(@RequestParam(value = "cpage", defaultValue = "1")int currentPage, HttpServletRequest request) {
		int listCount = bService.selectQnaListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Qna> list = bService.selectQnaList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		return "board/qnaListView";
	}
	
	
	/** qna 작성 페이지
	 * @return
	 */
	@RequestMapping(value = "qnaEnroll.bo")
	public String enrollQna(String board, HttpServletRequest request) {
		request.setAttribute("board", board);
		return "board/boardEnrollForm";
	}
	
	@RequestMapping(value = "collaboEnroll.bo")
	public String collaboEnroll(String board, HttpServletRequest request) {
		request.setAttribute("board", board);
		return "board/boardEnrollForm";
	}
	/** qna 등록 후
	 * @param n
	 * @return
	 */
	@RequestMapping( value = "insertqna.bo")
	public String qnaInsert(Qna q,HttpSession session) {
		
		int result = bService.insertQna(q);
		
		if(result >0) {
			session.setAttribute("alertMsg", "Q&A게시판 정상적으로 등록되었습니다.");
			return "redirect:qna.bo";
		}else {
			session.setAttribute("alertMsg", "Q&A게시판 등록에 실패하였습니다.");
			return "redirect:qna.bo";
		}
	}
	
	@RequestMapping(value = "insertCollabo.bo")
	public String collaboInsert(CollaboRation cr, HttpSession session) {
		System.out.println("cr :"+cr);
		int result = bService.insertCollabo(cr);
		
		if(result >0) {
			session.setAttribute("alertMsg", "협렵업체 신청 게시판 정상적으로 등록되었습니다.");
		}else {
			session.setAttribute("alertMsg", "협력업체 신청 게시판 등록에 실패하였습니다.");
		}
		return "redirect:collabo.bo";
	}
	/** 공지사항 수정 폼 접근
	 * @return
	 */
	@RequestMapping(value = "noticeEdit.bo")
	public String noticeEditForm(int bno, Model model) {
		Notice n = bService.selectNotice(bno);
		model.addAttribute("n", n);
		model.addAttribute("board", "공지사항_수정");
		return"board/boardEnrollForm";
	}
	
	
	/** qna 수정 폼 접근
	 * @return
	 */
	@RequestMapping(value = "qnaEdit.bo")
	public String qnaEditForm(int bno, Model model) {
		Qna q = bService.selectQna(bno);
		model.addAttribute("q", q);
		model.addAttribute("board", "QnA_수정");
		return"board/boardEnrollForm";
	}
	
	@RequestMapping(value = "collaboEdit.bo")
	public String collaboEditForM(int bno, Model model) {
		CollaboRation cr = bService.selectCollabo(bno);
		model.addAttribute("cr", cr);
		model.addAttribute("board", "협업업체_신청_수정");
		return "board/boardEnrollForm";
	}
	
	/** 공지사항 수정 후
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping( value = "noticeUpdate.bo", produces = "text/html; charset=utf-8")
	public String noticeUpadet(Notice n, HttpSession session) throws IOException {
		
		int result = bService.updateNoticeBoard(n);
		
		 if(result > 0) {
	         session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 수정 실패하였습니다.");
	      }
		 return "redirect:noticeDetail.bo?board=" + URLEncoder.encode("공지사항", "UTF-8") + "&bno="+ n.getNoticeNo();

	}
	
	@RequestMapping( value = "collaboUpdate.bo", produces = "text/html; charset=utf-8")
	public String noticeUpadet(CollaboRation cr, HttpSession session) throws IOException {
		System.out.println("cr :"+cr);
		int result = bService.updateCollaboBoard(cr);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
		}else {
			session.setAttribute("alertMsg", "게시글 수정 실패하였습니다.");
		}
		return "redirect:collaboDetail.bo?board=" + URLEncoder.encode("협업업체_신청", "UTF-8") + "&bno="+ cr.getCpNo();
		
	}
	
	/** qna 수정 후
	 * @return
	 */
	@RequestMapping( value = "qnaUpdate.bo")
	public String qnaUpadet(Qna q, HttpSession session) {
		
		int result = bService.updateQnaBoard(q);
		
		 if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 수정 실패하였습니다.");
	      }
		return "redirect:qnaDetail.bo?board=QnA&bno=" + q.getQnaNo();
	}
	
	@RequestMapping(value = "noticeDelete.bo")
	public String noticeDelete(int bno, HttpSession session) {

		int result = bService.deleteNotice(bno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 삭제 실패하였습니다.");
	      }
		return"redirect:notice.bo";
	}
	@RequestMapping(value = "collaboDelete.bo")
	public String collaboDelete(int bno, HttpSession session) {
		
		int result = bService.deleteCollabo(bno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 삭제 실패하였습니다.");
	      }
		return"redirect:collabo.bo";
	}
	
	@RequestMapping(value = "qnaDelete.bo")
	public String qnaDelete(int bno, HttpSession session) {

		int result = bService.deleteQna(bno);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "게시글 삭제 실패하였습니다.");
	      }
		return"redirect:qna.bo";
	}
	
	
	/** qna 답변 받아서 넘겨준다
	 * @return
	 */
	@RequestMapping(value = "insertAnswer.bo")
	public String insertAnswer(Qna q, HttpSession session) {
//		System.out.println(q.getQnaNo());
		int result = bService.updateQnaAnswer(q);
		
		if(result > 0) { 
	         session.setAttribute("alertMsg", "답변이 성공적으로 등록 되었습니다.");
	      }else {
	    	  session.setAttribute("alertMsg", "답변 등록에 실패하였습니다.");
	      }
		return "redirect:qnaDetail.bo?board=QnA&bno=" + q.getQnaNo();
	}
	
	
	
	
	
}
