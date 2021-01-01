package cn.edu.swu.auth;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/authImage")
public class AuthImage extends HttpServlet {
	
	public final static String AUTH_SECRETE = "AUTH_SECRETE";
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map<String, Object> result = this.createImage(90, 30);
		
		HttpSession session = request.getSession(true);
		session.setAttribute(AUTH_SECRETE, (String)result.get("secrete"));
		
		response.setContentType("application/binary");
		
		ImageIO.write(
			(BufferedImage)result.get("image"), "jpeg",
			response.getOutputStream()
		);		
	}

	public Map<String, Object> createImage(int width, int height) {
		BufferedImage image = new BufferedImage(80, 30, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.setColor(new Color(255, 255, 255));
		g.fillRect(0, 0, 100, 30);
		Random r = new Random();
		g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
		g.setFont(new Font("微软雅黑", Font.BOLD | Font.ITALIC, 21));
		String secrete = getString(r, 2);
		g.drawString(secrete, 5, 25);
		for (int i = 0; i < 8; i++) {
			g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
			g.drawLine(r.nextInt(80), r.nextInt(30), r.nextInt(80), r.nextInt(30));
		}
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("secrete", secrete);
		result.put("image", image);		
		
		g.dispose();
		
		return result;
	}
	
	private String getString(Random r, int size) {
		StringBuilder sb = new StringBuilder();
		String chars = "0123456789abcdefghijklmnpqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ";
		for (int i = 0; i < size; i++) {
			sb.append(chars.charAt(r.nextInt(chars.length())));
		}
		return sb.toString();
	}
	
}
