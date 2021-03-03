package com.google.play.util.other;

import java.io.Closeable;
import java.io.IOException;

public class IOUtils {
	public static void close(final Closeable... closeables) {
		for (Closeable closeable : closeables) {
			try {
				if (closeable != null) {
					closeable.close();
				}
			} catch (IOException ioe) {
			}
		}
	}
}
