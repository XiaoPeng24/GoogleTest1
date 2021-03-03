package com.google.play.util.file.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.google.play.util.file.FileUtil;
import com.google.play.util.other.IOUtils;

public class FileUtilImpl implements FileUtil {

	@Override
	public String write2File(InputStream inputStream,String savePath, String fileName, String extension) {
		boolean downloadResult = true;
		OutputStream output = null;
		
		File tempFile = this.getDownloadFile(savePath, fileName + ".download");
		//app.setFile(tempFile);
		File saveFile = this.getDownloadFile(savePath, fileName + extension);
		try {
			output = new FileOutputStream(tempFile);

			byte[] buffer = new byte[1024 * 50];
			for (int n = 0; -1 != (n = inputStream.read(buffer));) {
				output.write(buffer, 0, n);
			}
		} catch(Exception e) {
			downloadResult = false;
			System.out.println("Download Failed!");
			e.printStackTrace();
		
		} finally {
			IOUtils.close(inputStream, output);
			if (downloadResult) {
				tempFile.renameTo(saveFile);
				return saveFile.getName();
			} else {
				tempFile.delete();
			}
		}
		return null;
	}
	/**
	 * 创建文件
	 * @param savePath
	 * @param fileName
	 * @return
	 */
	private File getDownloadFile(final String savePath, final String fileName) {
		if (null == savePath || "".equals(savePath)) {
			return new File(fileName);
		} else{
			return new File(savePath, fileName);
		}
	}
}
