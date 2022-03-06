# LabVIEW Project Provider

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#labview-project-explorer">LabVIEW Project Explorer</a>
      <ul>
        <li><a href="#labview-project-explorer-anatomy">LabVIEW Project Explorer Anatomy</a></li>
		<ul>
			<li><a href="#labview-project-item">LabVIEW Project Item</a></li>
			<li><a href="#menu-item">Menu items</a></li> 
			<li><a href="#menu-item">Popup menu items</a></li> 
			<li><a href="#menu-item">Toolbar buttons</a></li> 
		</ul>
      </ul>
    </li>
	<li>
      <a href="#labview-project-provider-framework">LabVIEW Project Provider Framework</a>
      <ul>
        <li><a href="#labview-project-explorer-anatomy">LabVIEW Project Explorer Anatomy</a></li>
		<ul>
			<li><a href="#ini-file">INI File</a></li>
			<li><a href="#interface-vis">Interface VIs</a></li> 
			<li><a href="#directory-structure">Directory Structure</a></li> 
			<li><a href="#api-vis">API VIs</a></li>
			<li><a href="#context">Context</a></li> 
		</ul>
      </ul>
    </li>
  </ol>
</details>

Prior LabVIEW 8.0, developers needed to 
- handle files directly from disk. 
- use the application instance selection shortcut menu, at the the bottom left corner of the front panel window or block diagram, to set the application instance to run a VI. 
- use script to build applications. 

## LabVIEW Project Explorer

The LabVIEW Project Explorer window was introduce in LabVIEW 8.0 to provide a way to group and organize VIs and libraries, hardware and I/O, multiple targets, create build specifications, and deploy or download files to targets.

<p align="center">
	<img src="/docs/lvProjectExplorer.png">
</p>

The Project Explorer window includes the following items by default:

* Project root—Contains all other items in the Project Explorer window. This label on the project root includes the filename for the project.
	* My Computer: Represents the local computer as a target in the project.
		* Dependencies: Includes items that VIs under a target require, such as other VIs, shared libraries, and LabVIEW project libraries.
		* Build Specifications: Includes build configurations for source distributions and other types of builds available in LabVIEW toolkits and modules, such as:
			* Stand-alone applications.
			* Installers.
			* .NET interop assemblies.
			* Packed libraries.
			* Shared libraries.
			* Source distributions.
			* Web services.
			* Zip files.

Refer to the following link to know more about the 
- [Managing a Project in LabVIEW](https://zone.ni.com/reference/en-XX/help/371361R-01/lvconcepts/using_labview_projects/)
- [LabVIEW Wiki - Project Explorer](https://labviewwiki.org/wiki/Project_Explorer)

### LabVIEW Project Explorer Anatomy

#### Project Item

A Project Item is an individual element in a LabVIEW Project, LabVIEW Project Library, LabVIEW Class, or XControl. Each element has its own name and an icon based on the item types. Each item can have a status and properties that can be saved into the project file on disk or stored in memory only. 

<p align="center">
	<img src="/docs/projectItems.png" width="500" height="400">
</p>

Overlays are smaller icons that appear on the Project Item's icon that show status or other properties.
- For LabIEW Project Libraries and LabVIEW Classes colored key icons show the access scope of the item.
- For LabVIEW Classes and XControls a lock icon appears when the class or XControl is locked and won't allow editing.

The actions that occur when an item is double clicked on can differ depending on its type , e.g., it can expand or collapse all sub-items, open or edit it, call an external application. 

An item in the tree can be the source or the target for a drag-and-drop operation, e.g., drag and drop the Project Items to re-order them in the project tree, drag and drop Project Items onto another one to add it as nested Project Items. Drop any file, or multiple files and folders, into the Project Explorer to add it to the project.

#### Menu items

<p align="left">
	<img src="/docs/menuItems.png">
</p>

There are two basic types of menu items:
- the global menu items, which appear in the menu bar of the project window. These menu items appear independent of the item selected in the tree. 
- the item-specific menu items which apply to items of specific type in the project tree.

#### Popup menu items

<p align="left">
	<img src="/docs/popupMenuItems.png">
</p>

The popup menu items appears when an item is right-clicked. The menu can be different depending on the item selected and the state of the item.

#### Toolbar buttons

<p align="left">
	<img src="/docs/toolbar.png">
</p>

The Project toolbar on the Project Explorer window contains buttons, with a different icon, for instance:
* Open Project: displays the file dialog box from which you can select a LabVIEW project to open.
* Save Project: saves the project.
* Filter Project View: allows you to specify which nodes are visible in the Project Explorer window.
* Project Properties: displays the Project Properties dialog box.
* Resolve Conflicts: displays the Resolve Project Conflicts dialog box.

The toolbar buttons can act globally or specifically to an item type. Global toolbar buttons are available regardless of which item is selected in the project tree. Item-specific toolbar buttons only show when an item of a specific type is selected in the tree.

The Toolbar buttons can be removed from the toolbar by right clicking on the project toolbar and deselecting the appropriate provider. You can also 

## LabVIEW Project Provider Framework

The LabVIEW project window has a plug-in architecture to allow for easy extension of the project window features and capabilities. A Provider is code that plugs into this framework to provide additional set of functionality to a project that will apply:
- globally (to all items in the project).
- item-specifically  (to specific item types).

You have 2 kinds of plug-ins: 
- Primary: responsible for putting one or more new item types into the project tree. 
- Secondary Provider: adds additional functionality to existing items.

### LabVIEW Project Provider Anatomy

A project provider is comprised of an INI file and a set of VIs. The INI file contains configuration information for the project. The VIs implement a set of interfaces that provide all the functionality of the provider.

#### INI File

Each provider contains an INI file that describes the supported item type as well as the "interfaces VI's", that provide the locations of the plugin's functionality VIs. 

The Project Provider INI File is located in the following directory:
- On Windows, `<LabVIEW install directory>\resource\Framework\Providers\GProviders`. 
- On Mac OS, `/Applications/National Instruments/<LabVIEW XXXX 64-bit>/resource/Framework/Providers/GProviders`.

Here Project Provider INI File token list:

<details>
	<summary>Project Provider INI File token List</summary>
  	<table style="width:30%" border="1px solid black">
		<tr>
			<th style="width:15%" border="1px solid black">Token</th>
			<th style="width:15%" border="1px solid black">Description</th>
		</tr>
		<tr>
			<td border="1px solid black">SupportedInterface</td>
			<td border="1px solid black">Indicates which interfaces are supported by the provider.</td>
		</tr>
		<tr>
			<td border="1px solid black">SupportedType</td>
			<td border="1px solid black">Specifies a GUID that represents the type of project item. Must be formatted as following: {XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX}.</td>
		</tr>
		<tr>
			<td border="1px solid black">Alias</td>
			<td border="1px solid black">Is a unique string that like the GUID, is used to identify the type of a project item (applies to Primary providers only). The SupportedType token in a secondary provider can point to the Alias of the item type it wants to attach to instead of the GUID.</td>
		</tr>
		<tr>
			<td border="1px solid black">IsPrimary</td>
			<td border="1px solid black">1 – Primary provider (defines a new item type in the project). 
				                     0 – Secondary provider (adds functionality to existing item(s) in the project).</td>
		</tr>
		<tr>
			<td border="1px solid black">ItemInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “Item” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">ProviderInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “Provider” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">GlobalItemInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the ”Global” item interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">CreateNewWizardInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “CreateNewWizard” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">SourceControlInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “SourceControl” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">DeployInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “Deploy” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">BuildInterfaceVI</td>
			<td border="1px solid black">Defines the VI that enumerates the “Build” interface.</td>
		</tr>
		<tr>
			<td border="1px solid black">CreateNewWizardHost</td>
			<td border="1px solid black">(Primary providers only) Defines which “New” menu to add to e.g., Source, Build.</td>
		</tr>
		<tr>
			<td border="1px solid black">InterfaceVersion</td>
			<td border="1px solid black">Specifies the interface version used by the provider. Currently, this must be set to 1.0.</td>
		</tr>
		<tr>
			<td border="1px solid black">Signature</td>
			<td border="1px solid black">Digital signature – generated by NI.</td>
		</tr>
	</table>
</details>

GUID and Type strings identify items of a specific type. GUIDs can be used as supported types to build a provider for item of a specific type. 
Here is a list of important GUIDs and Type strings:

<details>
	<summary>GUIDs and Type strings List</summary>
  	<table style="width:55%" border="1px solid black">
		<tr>
			<th style="width:15%" border="1px solid black">Item type</th>
			<th style="width:15%" border="1px solid black">Type String</th>
			<th style="width:25%" border="1px solid black">GUID String</th>
		</tr>
		<tr>
			<td border="1px solid black">Virtual Folder</td>
			<td border="1px solid black">Folder</td>
			<td border="1px solid black">{D60740D6-F254-4BBC-5675-8858F35B820E}</td>
		</tr>
			<td border="1px solid black">Auto Populating Folder</td>
			<td border="1px solid black">Folder</td>
			<td border="1px solid black">{D60740D6-F254-4BBC-5675-8858F35B820E}</td>
		<tr>
			<td border="1px solid black">VI</td>
			<td border="1px solid black">VI</td>
			<td border="1px solid black">{D60740D6-F254-4BBC-5675-8858F35B810E}</td>
		<tr>
			<td border="1px solid black">Control</td>
			<td border="1px solid black">VI</td>
			<td border="1px solid black">{D60740D6-F254-4BBC-5675-8858F35B810E}</td>
		<tr>
			<td border="1px solid black">(Non-LabVIEW) file</td>
			<td border="1px solid black">Document</td>
			<td border="1px solid black">{D60740D6-F255-4BBC-5675-8858F35B820E}</td>
		<tr>
			<td border="1px solid black">LLB-file</td>
			<td border="1px solid black">Folder</td>
			<td border="1px solid black">{D60740D6-F254-4BBC-5675-8858F35B820E}</td>
		<tr>
			<td border="1px solid black">Lvlib file</td>
			<td border="1px solid black">Library</td>
			<td border="1px solid black">{ABC740D6-F254-4BBC-5675-8858F35B820E}</td>
		<tr>
			<td border="1px solid black">LabVIEW class</td>
			<td border="1px solid black">LVClass</td>
			<td border="1px solid black">{EFD740D6-F254-4BBC-5675-8858F35B820E}</td>
		<tr>
			<td border="1px solid black">Class datatype</td>
			<td border="1px solid black">Class Private Data</td>
			<td border="1px solid black">{64A9BF48-4C55-45DB-8F18-9C796DA0C113}</td>
		<tr>
			<td border="1px solid black">Property Definition Folder</td>
			<td border="1px solid black">Property Definition</td>
			<td border="1px solid black">{81C68620-8BE3-4643-B04A-4E83AA6363D2}</td>
		<tr>
			<td border="1px solid black">LabVIEW XControl</td>
			<td border="1px solid black">XControl</td>
			<td border="1px solid black">{2E4BD3AC-4E04-45C9-B6C5-AD138962C435}</td>
		<tr>
			<td border="1px solid black">XControl Method</td>
			<td border="1px solid black">Method VI</td>
			<td border="1px solid black">{DAABD3DC-4F44-4C3D-8BA3-E5D035A4F27A}</td>
		<tr>
			<td border="1px solid black">XControl Property</td>
			<td border="1px solid black">Property Folder</td>
			<td border="1px solid black">{93C4A07A-46E9-442F-AF0F-D6C6039546D1}</td>
		<tr>
			<td border="1px solid black">XControl Property Read VI</td>
			<td border="1px solid black">Property VI</td>
			<td border="1px solid black">{DAABD3DB-4F44-4C3D-8BA3-E5D035A4F27A}</td>
		<tr>
			<td border="1px solid black">XControl Property Write VI</td>
			<td border="1px solid black">Property VI</td>
			<td border="1px solid black">{DAABD3DB-4F44-4C3D-8BA3-E5D035A4F27A}</td>
		<tr>
			<td border="1px solid black">XControl ability VI</td>
			<td border="1px solid black">Ability VI</td>
			<td border="1px solid black">{DAABD3DA-4F44-4C3D-8BA3-E5D035A4F27A}</td>
		<tr>
			<td border="1px solid black">DAQmx Task</td>
			<td border="1px solid black">NI-DAQmx Task</td>
			<td border="1px solid black">{0A806145-1BF3-3A50-0B5E-F969F56C8E2A}</td>
		<tr>
			<td border="1px solid black">DAQmx Virtual Channel</td>
			<td border="1px solid black">NI-DAQmx Channel</td>
			<td border="1px solid black">{B5F05770-7C71-3A03-C9FB-F73F35629FC1}</td>
		<tr>
			<td border="1px solid black">DAQmx Scale</td>
			<td border="1px solid black">NI-DAQmx Scale</td>
			<td border="1px solid black">{BC977C97-1833-3D51-4EF6-D82E6838A8F3}</td>
		<tr>
			<td border="1px solid black">Shared Network Variable</td>
			<td border="1px solid black">Variable</td>
			<td border="1px solid black">{9BA597C5-4996-4622-B9BB-444431834D0D}</td>
		<tr>
			<td border="1px solid black">Hyperlink</td>
			<td border="1px solid black">Hyperlink</td>
			<td border="1px solid black">{CC472C20-0441-48DC-AF25-3E82ECC9376F}</td>
		<tr>
			<td border="1px solid black">Dependencies</td>
			<td border="1px solid black">Dependencies</td>
			<td border="1px solid black">{0D75D917-83D7-9871-AA09-A0FFD6A8099B}</td>
		<tr>
			<td border="1px solid black">Build Specifications</td>
			<td border="1px solid black">Build</td>
			<td border="1px solid black">{0C750917-83D7-9871-8908-BB4ED6A8099B}</td>
		<tr>
			<td border="1px solid black">Application exe</td>
			<td border="1px solid black">EXE</td>
			<td border="1px solid black">{9A75366A-79D3-4BFD-9532-E3070185C1E8}</td>
		<tr>
			<td border="1px solid black">DLL</td>
			<td border="1px solid black">DLL</td>
			<td border="1px solid black">{20A41099-3F2C-42C3-9544-7ABCC1E6CB0D}</td>
		<tr>
			<td border="1px solid black">Zip</td>
			<td border="1px solid black">Build Specifications</td>
			<td border="1px solid black">{51F0E16F-7FA4-4E9F-AE30-C81D9D0444B0}</td>
		<tr>
			<td border="1px solid black">My Computer</td>
			<td border="1px solid black">My Computer</td>
			<td border="1px solid black">{CEFE1B10-1732-4678-A70A-299293455410}</td>
		<tr>
			<td border="1px solid black">Source Distribution</td>
			<td border="1px solid black">Source Distribution</td>
			<td border="1px solid black">{15DA4F9E-0591-4AB1-A339-C3B4D54902D8}</td>
		<tr>
			<td border="1px solid black">Packed Library</td>
			<td border="1px solid black">Packed Library</td>
			<td border="1px solid black">{E4492117-CED3-4F31-9F8D-E2118AE04F12}</td>
		</tr>
	</table>
</details>

> **:memo: The INI file needs to be signed.**
> 
> For LabVIEW to load a Project Provider, its INI file must contain a valid "signature" consisting of an enciphered MD5 hash of certain other values in the INI file.

It is a 5 step algorithm that is used to sign tokens:
1- Retrieve the values (not the keys) as strings from the INI file and concatenate them with no delimiters.
2- Compute MD5 message-digest.
3- Replace the 0123456789ABCDEF's within the MD5 message-dogest by the T3C5K7W9SBNRJLX2's
4- Switch each pair of two consecutive digits
5- Set the calculated signature to the proper token in the INI file.

<p align="center">
	<img src="/docs/computeSignature.png">
</p>

To read/write the INI file we can't use the classic INI File VIs because we can have the same token multiple times, such as supportedtype.

<p align="center">
	<img src="/docs/signIniFile.png">
</p>

INI File example:

<p align="left">
	<img src="/docs/iniFile.png">
</p>

#### Interface VIs

The interface VIs tells the framework which VI's need to be run when a Project Item event occurs. They consist of a list of VI paths that point to each of the required methods that the providers must implement.


The framework specifies a list of interfaces that must be implemented by providers. Each interface VI is a list of paths to dispatch VIs that point to each of the required methods that the providers must implement. Only the methods that the provider will provide need to be implemented. The VIs that implement these methods must conform to the particular connector description but the contents of the VI can be completely customized. Once a provider-based event occurs the provider framework will run the appropriate VI if a method has been customized for that event in the provider.

### Directory Structure

### API VIs

### Context
