/*
-----------------------------------------------
Program Name:  Color.java
      Author:  James York
        Date:  02JAN22@1305
     Purpose:  A color class.

Notes.
    02JAN22@1305 - JEY
        None.
-----------------------------------------------
*/
public class Color
{
	//  Private Data Members.
	private String status = null;
	private String foreground = null;
	private String background = null;

	// Accessors.
	public String getStatus() { return this.status; }
	public String getForeground() { return this.foreground; }
	public String getBackground() { return this.background; }

	// Mutators.
	public void setForeground(String x) { this.foreground = x; }
	public void setBackground(String x) { this.background = x; }

	//  Constructors.
	public Color()
	{
		this.foreground = null;
		this.background = null;
	}

	// Public Operations.
	// Method:  About
	public boolean About()
	{
		boolean bRetVal = false;
		try
		{
			bRetVal = true;
		}
		catch(Exception x)
		{ this.status = "ER:  " + x.getMessage() +  "  (Color.About)"; }
		return bRetVal;
	}


}  // END:  Color

