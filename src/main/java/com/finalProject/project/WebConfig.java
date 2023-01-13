package com.finalProject.project;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer{

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // TODO images audio vidio 등 자료 연결
        registry.addResourceHandler("/images/**")
        .addResourceLocations("file:///C:/springWorkspace/product_images/",
                                                "file:///C:/springWorkspace/upload/");

        registry.addResourceHandler("/audio/**")
        .addResourceLocations("file:///C:/springWorkspace/upload/");
    }

    
    

}
