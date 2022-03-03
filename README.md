[![GitHub all releases][release-shield]][release-url]
![Wiki][wiki-shield]][wiki-url]
[![Issues][issues-shield]][issues-url]
[![Zero-Clause BSD][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

# LabVIEW Shortcut Provider

The idea. behind this plugin, is to be able to create Shortcuts, as we have on our desktop, to LabVIEW files directly within a LabVIEW project tree. This will allow developper to quickly open VIs, LVClass, RunTime Menu, ..., from the project tree root. 

This plugin allows developpers to create a new Shorcut from the popup menu that appears when My Computer is right-clicked. 

![PopupMenuNew](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Popup_New.png?raw=true)

The Create Shortcut wizard dialog helps the developper define the target file and name of a Shortcut. 

![Wizard1](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Wizard_1.png?raw=true)

![Wizard2](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/main/docs/LVProjectShortcut_Wizard_2.png?raw=true)

Once the wizard finished, the new Shortcut item appaers in the LabVIEW project tree with the default file type icon with a shortcut arrow overlay. 

![Item](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Item.png?raw=true)

Double-click on a Shortcut to open it within the active project context. You can also select Open from the right-click menu. 

You can edit a Shortcut, using the Edit item from the right-click menu, to either change the target nor change the name. You can also drag and drop any LabVIEW files on the Shortcut in the project tree. This action will ask for confirmation before updating the Shortcut. 

![Editor](https://github.com/BenjaminRLabVIEWExtensions/lvshortcut_provider/blob/19258dcda8c912aee9dc6a3dce5ce02596cf8418/docs/LVProjectShortcut_Item_Edit.png?raw=true)

## Use cases

- Quick access to a DQMH Module Main VI to avoid librarie tree expansions.
- Add item from the LabVIEW Tools menu to avoid clicks.

## LabVIEW Project Provider

The LabVIEW Project Provider Framework is a previously internal-only feature for adding additional functionality to the LabVIEW Project Explorer.  With it you can do things like add new items to the project window and modify existing items by adding extra right-click menu options, glyphs to the icons, extra toolbars, etc. 

**The LabVIEW Project Provider framework is an unsupported feature of LabVIEW.** 

If you’re interested in learning more about this framework, please visit the [LabVIEW Project Providers group](https://forums.ni.com/t5/LabVIEW-Project-Providers/bd-p/bymqyodmkc) on the NI Community.

The LabVIEW Shortcut Provider is a primary LabVIEW Project Provider, responsible for putting one or more new shortcut item types into the project tree.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[issues-shield]: https://img.shields.io/github/issues/BenjaminRLabVIEWExtensions/template?style=for-the-badge
[issues-url]: https://github.com/BenjaminRLabVIEWExtensions/template/issues
[license-shield]: https://img.shields.io/badge/LICENSE-Zero--Clause%20BSD-green?style=for-the-badge
[license-url]: https://github.com/BenjaminRLabVIEWExtensions/template/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/benjaminrouffet/
[wiki-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[wiki-url]: https://github.com/BenjaminRLabVIEWExtensions/template/wiki
[release-shield]: https://img.shields.io/github/downloads/BenjaminRLabVIEWExtensions/lvshortcut_provider/total?style=for-the-badge
[release-url]: https://github.com/BenjaminRLabVIEWExtensions/template/releases
