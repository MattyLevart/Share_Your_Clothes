package pl.coderslab.charity;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionRepository;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final InstitutionRepository institutionRepository;

    public AdminController(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }

    @GetMapping("/institutions")
    public String showInstitutionsList(Model model, @AuthenticationPrincipal UserDetails userDetails) {
        List<Institution> institutions = institutionRepository.findAll();
        model.addAttribute("institutions", institutions);
        return "institutionsList";
    }

    @GetMapping("/institution/edit")
    public String editInstitutionForm(@RequestParam("institutionId") Long id, Model model){
        Institution institution = institutionRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Brak instytucji o id: "+ id));
        model.addAttribute("institution", institution);
        return "institution-form";
    }

    @GetMapping("/institution/add")
    public String addInstitutionForm(Model model){
        model.addAttribute("institution", new Institution());
        return "institution-form";
    }

    @PostMapping("/institution/save")
    public String saveInstitution(@ModelAttribute Institution institution){
        institutionRepository.save(institution);
        return "redirect:/admin/institutions";
    }

    @PostMapping("/institution/delete")
    public String deleteInstitution(@RequestParam("institutionId") Long id){
        institutionRepository.deleteById(id);
        return "redirect:/admin/institutions";
    }
}
