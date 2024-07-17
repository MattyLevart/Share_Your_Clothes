package pl.coderslab.charity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.donation.DonationRepository;
import pl.coderslab.charity.institution.Institution;
import pl.coderslab.charity.institution.InstitutionRepository;

import java.util.List;


@Controller
public class HomeController {
    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    public HomeController(InstitutionRepository institutionRepository, DonationRepository donationRepository){
        this.institutionRepository = institutionRepository;
        this.donationRepository = donationRepository;
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
}
