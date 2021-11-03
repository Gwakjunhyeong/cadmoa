package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller		// 이 자바 클래스는 컨트롤러 역할을 하는 클래스라는 것을 알려줌.
@Log4j			// lombok 이용하여 콘솔에 logger를 남기겠다. 
@RequestMapping("/board/")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
	@GetMapping("cm_notice/list")
	public void listNo(Model model, Criteria cri) {
		cri.setCm_board("no");
		log.info("list good="+cri);
		model.addAttribute("list", service.getListNo(cri));
		
		int total=service.getTotalCountNo(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	
	@GetMapping("cm_notice/read")
	public void readNo(int bno, Model model) {
		
		log.info("@@@@@@@@@@ read : " + bno + " @@@@@@@@@@");
		model.addAttribute("read", service.getNo(bno));
	}
	
	
	
	@GetMapping("cm_notice/register")
	public void registerGetNo() {
		
		log.info("@@@@@@@@@@ register good @@@@@@@@@@");
	}
	@PostMapping("cm_notice/register")
	public String registerPostNo(BoardVO board, RedirectAttributes rttr) {
		
		log.info("registerPost insert 전 : " + board + " @@@@@@@@@@");
		service.registerNo(board);
		log.info("registerPost insert 후 : " + board + " @@@@@@@@@@");
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/cm_notice/read";
	}
	
	
	
	@GetMapping("cm_notice/modify")
	public void modifyGetNo(int bno, Model model) {
		log.info("@@@@@@@@@@ modify good bno : " + bno +" @@@@@@@@@@");
		model.addAttribute("modify", service.getNo(bno));
	}
	@PostMapping("cm_notice/modify")
	public String modifyPostNo(BoardVO board, RedirectAttributes rttr, Model model) {
		model.addAttribute("result", service.modifyNo(board));
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/cm_notice/read";
	}
	
	
	
	@GetMapping("cm_notice/remove")
	public String removeNo(int bno) {
		log.info("@@@@@@@@@@ remove good bno : " + bno + " @@@@@@@@@@");
		service.removeNo(bno);
		return "redirect:/board/cm_notice/list";
	}
	
	
	
	// cm_qna/
	
	
	@GetMapping("cm_qna/list")
	public void listQna(Model model, Criteria cri) {
		cri.setCm_board("qn");
		log.info("list good="+cri);
		model.addAttribute("list", service.getListQna(cri));
		
		int total=service.getTotalCountQna(cri);	
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	
	@GetMapping("cm_qna/read")
	public void readQna(int bno, Model model) {
		
		log.info("@@@@@@@@@@ read : " + bno + " @@@@@@@@@@");
		model.addAttribute("read", service.getQna(bno));
	}
	
	
	
	@GetMapping("cm_qna/register")
	public void registerGetQna() {
		
		log.info("@@@@@@@@@@ register good @@@@@@@@@@");
	}
	@PostMapping("cm_qna/register")
	public String registerPostQna(BoardVO board, RedirectAttributes rttr) {
		
		log.info("registerPost insert 전 : " + board + " @@@@@@@@@@");
		service.registerQna(board);
		log.info("registerPost insert 후 : " + board + " @@@@@@@@@@");
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/cm_qna/read";
	}
	
	
	
	@GetMapping("cm_qna/modify")
	public void modifyGetQna(int bno, Model model) {
		log.info("@@@@@@@@@@ modify good bno : " + bno +" @@@@@@@@@@");
		model.addAttribute("modify", service.getQna(bno));
	}
	@PostMapping("cm_qna/modify")
	public String modifyPostQna(BoardVO board, RedirectAttributes rttr, Model model) {
		model.addAttribute("result", service.modifyQna(board));
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/cm_qna/read";
	}
	
	
	
	@GetMapping("cm_qna/remove")
	public String removeQna(int bno) {
		log.info("@@@@@@@@@@ remove good bno : " + bno + " @@@@@@@@@@");
		service.removeQna(bno);
		return "redirect:/board/cm_qna/list";
	}
	


	
	
	

}