package com.jw.handler;

import java.io.Serializable;

import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;

import org.springframework.stereotype.Service;


@Service
public class EhCacheServiceHandler implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Cache cache;

	public Cache getCache() {
		return cache;
	}

	public void setCache(Cache cache) {
		this.cache = cache;
	}
	
	public String getCacheName() {
		return cache.getName();
	}
	
	public void putCache(String key, Object objVal) {
		synchronized (this) {
			Element element = new Element(key, objVal);
			cache.put(element);
		}
	}
	
	public void putCache(String key, Object objVal, int timeToLiveSeconds, int timeToIdleSeconds) {
		synchronized (this) {
			Element element = new Element(key, objVal);
			element.setTimeToLive(timeToLiveSeconds);
			element.setTimeToIdle(timeToIdleSeconds);
			cache.put(element);
		}
	}
	
	public Object getCache(String key) {
		Element element = null;
		synchronized (this) {
			element = cache.get(key);
			if (element != null) {
				Object obj = element.getObjectValue();
				return obj; 
			}
		}
		return null;
	}
	
	public boolean removeCache(String key) {
		boolean flag = cache.remove(key);
		return flag;
	}
	
	public void removeAllCache() {
		if (cache != null) {
			cache.removeAll();
		}
	}
}
