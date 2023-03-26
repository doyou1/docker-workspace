package com.jh.awsstudyproject

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class MainController {

    @RequestMapping("/", method = [RequestMethod.GET])
    fun get(): String {
        return "get"
    }

    @RequestMapping("/", method = [RequestMethod.POST])
    fun post(): String {
        return "post"
    }
}