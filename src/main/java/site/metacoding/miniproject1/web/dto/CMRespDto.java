package site.metacoding.miniproject1.web.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class CMRespDto<T> {
	private Integer code;
	private String msg;
	private T data;
}