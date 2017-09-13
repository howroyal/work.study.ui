package work.study.ui.bean;

public class JsonVo<T> {

	private boolean success;
	
	private String message;
	
	private T result;

	public JsonVo() {
	}
	
	public JsonVo(boolean success) {
		this.success = success;
	}
	
	public JsonVo(boolean success, String message) {
		this.success = success;
		this.message = message;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getResult() {
		return result;
	}

	public void setResult(T result) {
		this.result = result;
	}
}
