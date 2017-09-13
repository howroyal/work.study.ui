package work.study.ui.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class PageCode {
	private int pageCount = 0; // 页码数量
	private int showCount = 0; // 显示数量
	private int begin = 0; // 开始位置
	private int end = 0; // 结束位置
	private int index = 0; // 索引
	
	public PageCode() {
		
	}

	/**
	 * 传入显示的页码数量和每页显示的数量和当前页的索引
	 * 
	 * @param pageCount
	 * @param showCount
	 * @param index
	 */
	public PageCode(int pageCount, int showCount, int index) {
		super();
		this.pageCount = pageCount;
		this.showCount = showCount;
		this.index = index > pageCount ? pageCount : index;
		
		if (this.pageCount == 2) {
			this.begin = 0;
			this.end = 0;
			return;
		}
		
		
		int temp = showCount/2;
		this.begin = index - temp;
		this.end = index + temp;
		if (this.begin < 2) {
			this.begin = 2;
		}
		if (this.end > pageCount -1) {
			this.end = pageCount -1;
		}
		
		if (this.end < this.begin) {
			this.end = this.begin;
		}
	}
	
	public static void main(String[] args) throws JsonProcessingException {
		PageCode code  = new PageCode(4,7,4);
		System.out.println(new ObjectMapper().writeValueAsString(code));
	}
	
	
	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getShowCount() {
		return showCount;
	}

	public void setShowCount(int showCount) {
		this.showCount = showCount;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
}
