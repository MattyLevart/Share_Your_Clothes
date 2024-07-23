package pl.coderslab.charity;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.donation.DonationRepository;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionRepository;
import pl.coderslab.charity.security.User;
import pl.coderslab.charity.security.UserService;

import java.util.List;


@Controller
public class HomeController {
    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;
    private final UserService userService;

    public HomeController(InstitutionRepository institutionRepository, DonationRepository donationRepository, UserService userService){
        this.institutionRepository = institutionRepository;
        this.donationRepository = donationRepository;
        this.userService = userService;
    }

    @RequestMapping("/")
    public String homeAction(Model model) {
        List<Institution> institutions = institutionRepository.findAll();
        Long totalBags = donationRepository.findTotalQuantity();
        Long totalDonations = donationRepository.countDonations();

        model.addAttribute("institutions", institutions);
        model.addAttribute("totalBags", totalBags != null ? totalBags : 0);
        model.addAttribute("totalDonations", totalDonations != null ? totalDonations : 0);
        return "index";
    }
    @GetMapping("/register")
    public String showRegisterForm(Model model){
        model.addAttribute("user", new User());
        return "register";
    }
    @PostMapping("/register")
    public String registerUser(@ModelAttribute("user") @Valid User user, BindingResult result){
        if (result.hasErrors()){
            return "/register";
        }

        userService.save(user);
        return "redirect:/login";
    }
}
