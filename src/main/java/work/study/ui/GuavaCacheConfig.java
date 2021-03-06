package work.study.ui;

import java.util.concurrent.TimeUnit;

import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.guava.GuavaCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.google.common.cache.CacheBuilder;

@Configuration
@EnableCaching
public class GuavaCacheConfig {
	@Bean
	public CacheManager cacheManager() {
		GuavaCacheManager cacheManager = new GuavaCacheManager();
		cacheManager
				.setCacheBuilder(CacheBuilder.newBuilder().expireAfterWrite(10, TimeUnit.MINUTES).maximumSize(10000));
		return cacheManager;
	}
}
