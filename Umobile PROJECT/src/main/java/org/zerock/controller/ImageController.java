package org.zerock.controller;

import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequiredArgsConstructor
public class ImageController {

	private static final String UPLOAD_DIR = "c:/upload/";

	@GetMapping("/upload/{image_Path}")
	@ResponseBody
	public ResponseEntity<Resource> serveFile(@PathVariable String image_Path) throws FileNotFoundException {

		Path file = Paths.get(UPLOAD_DIR).resolve(image_Path).normalize();
		Resource resource = null;
		try {
			resource = new UrlResource(file.toUri() + ".png");
			if (resource.exists() || resource.isReadable()) {
				return ResponseEntity.ok().body(resource);
			} else {
				throw new FileNotFoundException("파일을 찾을 수 없습니다.");
			}
		} catch (MalformedURLException e) {
			throw new RuntimeException("파일을 읽을 수 없습니다.", e);
		}
	}

}
