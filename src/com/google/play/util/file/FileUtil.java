package com.google.play.util.file;

import java.io.InputStream;

public interface FileUtil {

	public String write2File(InputStream inputStream, String savePath,
			String fileName, String extension);
}
