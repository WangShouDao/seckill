package org.seckill.dto;

import org.seckill.entity.SuccessKilled;

/**
 * ��װ��ɱִ�к���
 * @author weary
 *
 */
public class SeckillExecution {

	private long seckillId;
	
	//��ɱִ�н��״̬
	private int state;
	
	//״̬��ʾ
	private String stateInfo;
	
	//��ɱ�ɹ�����
	private SuccessKilled successKilled;


	public SeckillExecution(long seckillId, int state, String stateInfo, SuccessKilled successKilled) {
		this.seckillId = seckillId;
		this.state = state;
		this.stateInfo = stateInfo;
		this.successKilled = successKilled;
	}

	public SeckillExecution(long seckillId, int state, String stateInfo) {
		this.seckillId = seckillId;
		this.state = state;
		this.stateInfo = stateInfo;
	}
	
	public long getSeckillId() {
		return seckillId;
	}

	public void setSeckillId(long seckillId) {
		this.seckillId = seckillId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getStateInfo() {
		return stateInfo;
	}

	public void setStateInfo(String stateInfo) {
		this.stateInfo = stateInfo;
	}

	public SuccessKilled getSuccessKilled() {
		return successKilled;
	}

	public void setSuccessKilled(SuccessKilled successKilled) {
		this.successKilled = successKilled;
	}

}
