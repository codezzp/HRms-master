package servlet;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Line2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PictureCheckCode
 */
@WebServlet("/PictureCheckCode")
public class PictureCheckCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PictureCheckCode() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void destroy() {
		super.destroy(); 
	}
 
	public void init() throws ServletException {
		super.init();
	}
	public Color getRandColor(int s,int e){
		Random random=new Random ();
		if(s>255) s=255;
		if(e>255) e=255;
		int r,g,b;
		r=s+random.nextInt(e-s);
		g=s+random.nextInt(e-s);
		b=s+random.nextInt(e-s);
		return new Color(r,g,b);
	}
 
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		int width=86,height=28;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();	
		Graphics2D g2d=(Graphics2D)g;
		Random random=new Random();
		g.setColor(getRandColor(200,250));
		g.fillRect(0, 0, width, height);
		g.setColor(getRandColor(180,200));
		
		for(int i=0;i<100;i++){
			int x=random.nextInt(width-1);
			int y=random.nextInt(height-1);
			int x1=random.nextInt(6)+1;
			int y1=random.nextInt(12)+1;
			BasicStroke bs=new BasicStroke(2f,BasicStroke.CAP_BUTT,BasicStroke.JOIN_BEVEL);
			Line2D line=new Line2D.Double(x,y,x+x1,y+y1);
			g2d.setStroke(bs);
			g2d.draw(line);
		}
		String sRand="";
		String ctmp="";
		int itmp=0;
		for(int i=0;i<4;i++){
			switch(random.nextInt(3)){
				case 1:
				     itmp=random.nextInt(26)+65;
				     ctmp=String.valueOf((char)itmp);
				     break;
				default:
					 itmp=random.nextInt(10)+48;
					 ctmp=String.valueOf((char)itmp);
					 break;
			}
			sRand+=ctmp;
			Color color=new Color(20+random.nextInt(110),20+random.nextInt(110),random.nextInt(110));
			g.setColor(color);
			Graphics2D g2d_word=(Graphics2D)g;
			AffineTransform trans=new AffineTransform();
			trans.rotate((45)*3.14/180,15*i+8,7);
			g2d_word.setTransform(trans);
			g.drawString(ctmp, 15*i+18, 14);
		}
		HttpSession session=request.getSession(true);
		session.setAttribute("randCheckCode", sRand);
		g.dispose();
		ImageIO.write(image,"JPEG",response.getOutputStream());
	}
}