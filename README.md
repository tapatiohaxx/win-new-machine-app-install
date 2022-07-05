<h1> My Winsodws 10/11 Get-Up Script </h1>

If you have a new install of Windows 10 or 11, you can use this to quickly set it up wwith developer tools useful for many workflows.

<h3> REQUIREMENTS: </h3>

<ul>
   <li> Windows 10 or 11 freshly installed </li>
   <li> A PowerShell <code> ExecutionPolicy </code> of <i> Remote Sined </i> </li>
   <li> A few minutes of patience </li>
</ul>

<h3> How to use: </h3>
<ol>
   <li> Download onto your desired machine. </li>
   <li> Change your <code> ExecutionPolicy </code> to <i> RemoteSigned </i>. </li>
   <li> Run the script. </li> 
   <li> Clean um any temporary directories if necessary> </li>
</ol>

<h3> Devlog </h3>
<code> [4 July 2022] </code>: I created the script and performed initial testing. I found the following issues: <b>
<ol>
   <li> <code> winget </code> installation commands do not work.  </li> 
   <li> The program stops after the program installations. (all git and movement/directory manipulations are sound and legal) </li> 
</ol>
