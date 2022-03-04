<div id="top"></div>

[![GitHub all releases][release-shield]][release-url]
[![Wiki][wiki-shield]][wiki-url]
[![Issues][issues-shield]][issues-url]
[![Zero-Clause BSD][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

# LabVIEW Shortcut Provider

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#labview-shortcut-provider">LabVIEW Shortcut Provider</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#use-cases">Use Cases</a></li>
        <li><a href="#labview-project-provider">LabVIEW Project Provider</a></li>
		<li><a href="#ini-file-signer">INI File Signer</a></li>
      </ul>
    </li>
  </ol>
</details>

The idea. behind this plugin, is to be able to create Shortcuts, as we have on our desktop, to LabVIEW files directly within a LabVIEW project tree. This will allow developper to quickly open VIs, LVClass, RunTime Menu, ..., from the project tree root. 

This plugin allows developpers to create a new Shorcut from the popup menu that appears when My Computer is right-clicked. 

<div align="center">

![PopupMenuNew](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Popup_New.png?raw=true)
</div>

The Create Shortcut wizard dialog helps the developper define the target file and name of a Shortcut. 

<div align="center">

|Shortcut Wizard Target|Shortcut Wizard Name|
|:-:|:-:|
|![Wizard1](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Wizard_1.png?raw=true)|![Wizard2](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/main/docs/LVProjectShortcut_Wizard_2.png?raw=true)|
</div>

Once the wizard finished, the new Shortcut item appaers in the LabVIEW project tree with the default file type icon with a shortcut arrow overlay. 

<div align="center">

![Item](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Item.png?raw=true)
</div>

Double-click on a Shortcut to open it within the active project context. You can also select Open from the right-click menu. 

You can edit a Shortcut, using the Edit item from the right-click menu, to either change the target nor change the name. You can also drag and drop any LabVIEW files on the Shortcut in the project tree. This action will ask for confirmation before updating the Shortcut. 

<div align="center">

![Editor](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Item_Edit.png?raw=true)
</div>

## Use cases

- Quick access to a DQMH Module Main VI to avoid librarie tree expansions.
- Add item from the LabVIEW Tools menu to avoid clicks.

## LabVIEW Project Providers

The LabVIEW Project Provider Framework is a previously internal-only feature for adding additional functionality to the LabVIEW Project Explorer.  With it you can do things like add new items to the project window and modify existing items by adding extra right-click menu options, glyphs to the icons, extra toolbars, etc. 

**The LabVIEW Project Provider framework is an unsupported feature of LabVIEW.** 

If you’re interested in learning more about this framework, please visit the [LabVIEW Project Providers group](https://forums.ni.com/t5/LabVIEW-Project-Providers/bd-p/bymqyodmkc) on the NI Community.

The LabVIEW Shortcut Provider is a primary LabVIEW Project Provider, responsible for putting one or more new shortcut item types into the project tree.

## INI File Signer

Each provider contains an INI file that describes the supported type as well as the interfaces that are defined for that provider. Supported type represents the type ID (GUID) of the project item the provider applies to.

The INI file for the LabVIEW Shortcut Provider will look like:

`[Provider]=
SupportedType={08DCC3D2-2795-4EAC-AB66-1A269B67C835}
Alias=Shortcut
ItemInterfaceVI=..\LVProjectShortcut\LVProjectShortcut_Item_Interface.vi
CreateNewWizardInterfaceVI=..\LVProjectShortcut\LVProjectShortcut_CreateNewWizard_Interface.vi
ProviderInterfaceVI=..\LVProjectShortcut\LVProjectShortcut_Provider_Interface.vi
CreateNewWizardHost=Source
IsPrimary=1
LicenseName=None
InterfaceVersion=1.0
Signature=`

Where the SupportedType specifies a GUID that represents the type of project item. As we created a new type of item, a new GUID has been chosen {08DCC3D2-2795-4EAC-AB66-1A269B67C835}.

The INI file needs to be signed. Based on [this Lavag discussion](https://lavag.org/topic/18545-i-have-taken-the-first-step-towards-unofficially-opening-up-the-project-provider-framework/) you can find the code in the support folder. The signed INI file is placed in the `Providers\GProviders` folder in order to be loaded by LabVIEW. 

<div align="center">

![INI File Signer](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/b14def59890c2543dcec5cea19424bff5ac0c385/docs/IniFileSigner.png?raw=true)
</div>

<div align="right">(<a href="#top">back to top</a>)</div>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[release-shield]: https://img.shields.io/github/v/release/BenjaminRLabVIEWExtensions/lvshortcut_provider?color=orange&logo=labview&style=for-the-badge
[release-url]: https://github.com/BenjaminRLabVIEWExtensions/template/releases/1.0.1
[wiki-shield]: https://img.shields.io/github/discussions/BenjaminRLabVIEWExtensions/lvshortcut_provider?style=for-the-badge
[wiki-url]: https://github.com/BenjaminRLabVIEWExtensions/template/wiki
[issues-shield]: https://img.shields.io/github/issues/BenjaminRLabVIEWExtensions/template?style=for-the-badge
[issues-url]: https://github.com/BenjaminRLabVIEWExtensions/template/issues
[license-shield]: https://img.shields.io/badge/LICENSE-Zero--Clause%20BSD-green?style=for-the-badge
[license-url]: https://github.com/BenjaminRLabVIEWExtensions/template/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/benjaminrouffet/
