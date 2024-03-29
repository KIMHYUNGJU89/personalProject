package com.hyungju.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyungju.service.FgoService;
import com.hyungju.service.FgoServiceImpl;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/fgo/*") 
@AllArgsConstructor 
@Controller
public class FgoController {
	
	private FgoService service;
	private FgoServiceImpl serviceImpl;
	
	@GetMapping("/ServantList")
	public void servantList(@RequestParam("className") String className,Model model) throws IOException {
	System.out.println("컨트롤러들어오는지 확인중");
	model.addAttribute("servant",serviceImpl.getServantData(className));
	model.addAttribute("title",className);
	}
	@GetMapping("/ServantDetail")
	public void servantDetail(int id,Model model) throws IOException {
		System.out.println("컨트롤러들어오는지 확인중2");
		model.addAttribute("name",service.getId(id));
		model.addAttribute("ascension",id);
		model.addAttribute("skillname",serviceImpl.getServantDetail(id));
	}
	

	
	
}
