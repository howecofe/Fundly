package com.fundly.chat.controller;

import com.fundly.chat.service.ChatServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Slf4j
public class ChatController {

    @Autowired
    ChatServiceImpl chatService;

    @PostMapping("/chat")
    public String joinChatRoom(String user_id, String pj_id, Model model) {

        String chatRoomName = chatService.getChatRoom(user_id, pj_id);

        model.addAttribute("roomName", chatRoomName);

//        채팅방에 입장하면서 자동으로 채팅방에 대한 구독이 시작된다.
        return "chat/chat";
    }

    @MessageMapping("/chat/{roomName}")
    @SendTo("/chatSub/{roomName}")
    public String enterRoom(@DestinationVariable("roomName") String roomName ,String message) {

        return message;
    }

//    public String
}
