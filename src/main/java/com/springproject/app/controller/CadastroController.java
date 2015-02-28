package com.springproject.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.app.entities.Usuario;

@Controller
@RequestMapping("/usuario")
public class CadastroController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String formularioCadastro(Usuario usuario, ModelMap model) {
	 
		
		model.addAttribute("usuario", usuario);
		model.addAttribute("message",
				"Maven Web Project + Spring 3 MVC - welcome()");

		// Spring uses InternalResourceViewResolver and return back index.jsp
		return "cadastroUsuario";

	}

	@RequestMapping(value = "/adicionausuario", method = RequestMethod.GET)
	public String formulario(Usuario usuario, Model model) {

		model.addAttribute("usuario", usuario);
		return "cadastroUsuario";

	}

	@RequestMapping("adicionaUsuario")
	public String adiciona(Usuario usuario, Model model) {

		model.addAttribute("usuario", usuario);
		return "cadastroUsuario";

	}

}
