package pl.coderslab.RestoBook.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable() // Temporarily disable CSRF for debugging
                .authorizeRequests(authorize -> authorize
                        .antMatchers("/", "/home", "/loginRegister","/restaurant-owner-dashboard","/foodie-profile","/css/**", "/js/**", "/images/**", "/icons/**", "/bootstrap/**").permitAll()
                        .antMatchers("/owner/dashboard/*").permitAll()
                        .antMatchers("/owner/dashboard/restaurantEdit/*").permitAll()
                        .antMatchers("/foodie/profile/*").permitAll()
                        .antMatchers("/foodie/profile/edit/*").permitAll()
                        .antMatchers("/aboutUs").permitAll()
                        .antMatchers("/restaurantDetail/*").permitAll()
                        .antMatchers("/reservation/*").permitAll()
                        .antMatchers("/sendContactMessage").permitAll()
                        .antMatchers("/restaurants").permitAll()
                        .antMatchers("/owner/reservations/list/*").permitAll()
                        .antMatchers("/owner/reservations/edit/*").permitAll()
                        .antMatchers("/owner/reservations/delete/*").permitAll()
                        .antMatchers("/owner/reservations/details/*").permitAll()
                        .antMatchers("/owner/reservations/edit/*").permitAll()
                        .antMatchers("/owner/passwordchange/*").permitAll()
                        .antMatchers("/owner/profile/*").permitAll()
                        .antMatchers("/sendContactMessagePage").permitAll()
                        .antMatchers("/contactPage").permitAll()
                        .antMatchers("/privacyPolicy").permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin().disable() // Disable default form login
                .httpBasic().disable(); // Disable HTTP basic authentication
        return http.build();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}