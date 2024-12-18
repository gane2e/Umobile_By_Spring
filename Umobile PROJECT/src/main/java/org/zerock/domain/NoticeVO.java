package org.zerock.domain;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class NoticeVO {

    private Long nno;
    private String title;
    private String content;
    private String writer;
    private LocalDateTime createdDate;
    private LocalDateTime modifiedDate;
    private LocalDateTime regdate;
    private String regdateString;

}
