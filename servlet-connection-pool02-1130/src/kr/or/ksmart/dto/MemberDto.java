package kr.or.ksmart.dto;

public class MemberDto {
	//m_id, m_pw, m_name, m_level, m_email, m_addr, m_reg_date
	
	private String mId;
	private String mPw;
	private String mName;
	private int mLevel;
	private String mEmail;
	private String mAddr;
	private String mRegDate;
	private String mLevelName;
	
	public String getmId() {
		return mId;
	}
	public String getmLevelName() {
		return mLevelName;
	}
	public void setmLevelName(String mLevelName) {
		this.mLevelName = mLevelName;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getmLevel() {
		return mLevel;
	}
	public void setmLevel(int mLevel) {
		this.mLevel = mLevel;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmAddr() {
		return mAddr;
	}
	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}
	public String getmRegDate() {
		return mRegDate;
	}
	public void setmRegDate(String mRegDate) {
		this.mRegDate = mRegDate;
	}
	@Override
	public String toString() {
		return "MemberDto [mId=" + mId + ", mPw=" + mPw + ", mName=" + mName + ", mLevel=" + mLevel + ", mEmail="
				+ mEmail + ", mAddr=" + mAddr + ", mRegDate=" + mRegDate + ", mLevelName=" + mLevelName + "]";
	}
	
	
}
