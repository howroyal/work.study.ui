package work.study.ui.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 文章信息
 * @author hao.wang
 *
 */
@Entity
@Table(name="article_info")
public class ArticleInfo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name="category_id",nullable=false)
	private Long categoryId;
	
	@Column(name="category_name",nullable=false)
	private String categoryName;
	
	@Column
	private String title;
	
	@Column(name="img_url")
	private String imgUrl;
	
	@Column
	private String descr;
	
	@Lob 
	@Basic(fetch = FetchType.LAZY) 
	@Column(name="content", columnDefinition="longtext", nullable=true) 
	private String content;
	
	@Basic(optional = false)
	@Column(name="create_time",columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createTime;
	
	@Column(nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean deleted;
	
	@Column(name="the_top",nullable = false, columnDefinition = "TINYINT(1)")
	private Boolean theTop;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	public Boolean getTheTop() {
		return theTop;
	}

	public void setTheTop(Boolean theTop) {
		this.theTop = theTop;
	}

}
