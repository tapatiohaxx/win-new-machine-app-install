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
   <li> Run the <code> AppInstaller[].msixbundle </code> file included to get the <code> winget </code> command. </li>
   <li> Run the script. </li> 
   <li> Clean um any temporary directories if necessary. </li>
</ol>

<h3> Devlog </h3>
<code> [4 July 2022] </code>: I created the script and performed initial testing. I found the following issues: <b>
<ol>
   <li> <code> winget</code>  installation commands do not work.  </li> 
   <li> The program stops after the program installations. (all git and movement/directory manipulations are sound and legal) </li> 
</ol>
<code> 05 July 2022 </code> In attempt to debug the script, I deleted the automatic download of <code> winget</code> and included the msixbundle file for the latest Windows App Installer Package. I also included some logic to see whether or not the <code>  $PROFILE</code> exists.
<h4> Issues </h4>
<ul>
   <li> Script stops after completing downloads and never clones the github repositiorise I want </li>
   <li> There is no working way to fetch the latest working msixbundle file from the web. </li>
   <li> When I invoke the command to execute the <code> msixbundle </code> file, I cannot run the rest of the program after installing the AppInstaller </li>
</ul>

