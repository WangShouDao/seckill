package org.seckill.exception;

/**
 * ��ɱ����쳣
 * @author weary
 *
 */
public class SeckillException extends RuntimeException {

	public SeckillException(String message, Throwable cause) {
		super(message, cause);
	}

	public SeckillException(String message) {
		super(message);
	}

	
}
