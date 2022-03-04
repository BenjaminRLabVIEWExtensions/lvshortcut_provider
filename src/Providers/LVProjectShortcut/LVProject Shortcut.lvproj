<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="support" Type="Folder">
			<Item Name="LVProjectShortcut_BrowseActiveProject.vi" Type="VI" URL="../support/LVProjectShortcut_BrowseActiveProject.vi"/>
			<Item Name="LVProjectShortcut_Command.vi" Type="VI" URL="../support/LVProjectShortcut_Command.vi"/>
			<Item Name="LVProjectShortcut_GetItemIcon.vi" Type="VI" URL="../support/LVProjectShortcut_GetItemIcon.vi"/>
			<Item Name="LVProjectShortcut_InitProperties.vi" Type="VI" URL="../support/LVProjectShortcut_InitProperties.vi"/>
			<Item Name="LVProjectShortcut_RegisterOverlays.vi" Type="VI" URL="../support/LVProjectShortcut_RegisterOverlays.vi"/>
			<Item Name="LVProjectShortcut_RetrieveFileSelectionMode.vi" Type="VI" URL="../support/LVProjectShortcut_RetrieveFileSelectionMode.vi"/>
			<Item Name="LVProjectShortcut_RunEdit.vi" Type="VI" URL="../support/LVProjectShortcut_RunEdit.vi"/>
			<Item Name="LVProjectShortcut_RunView.vi" Type="VI" URL="../support/LVProjectShortcut_RunView.vi"/>
			<Item Name="LVProjectShortcut_StoreFileSelectionMode.vi" Type="VI" URL="../support/LVProjectShortcut_StoreFileSelectionMode.vi"/>
			<Item Name="LVProjectShortcut_WriteProperties.vi" Type="VI" URL="../support/LVProjectShortcut_WriteProperties.vi"/>
		</Item>
		<Item Name="LVProjectShortcut_CreateNewWizard_Finalize.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_Finalize.vi"/>
		<Item Name="LVProjectShortcut_CreateNewWizard_GetWeight.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_GetWeight.vi"/>
		<Item Name="LVProjectShortcut_CreateNewWizard_IncludeItem.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_IncludeItem.vi"/>
		<Item Name="LVProjectShortcut_CreateNewWizard_Init.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_Init.vi"/>
		<Item Name="LVProjectShortcut_CreateNewWizard_Interface.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_Interface.vi"/>
		<Item Name="LVProjectShortcut_CreateNewWizard_Invoke.vi" Type="VI" URL="../LVProjectShortcut_CreateNewWizard_Invoke.vi"/>
		<Item Name="LVProjectShortcut_CreateShortcut.vi" Type="VI" URL="../LVProjectShortcut_CreateShortcut.vi"/>
		<Item Name="LVProjectShortcut_Item_CanDragToProjectWindow.vi" Type="VI" URL="../LVProjectShortcut_Item_CanDragToProjectWindow.vi"/>
		<Item Name="LVProjectShortcut_Item_CanDropItem.vi" Type="VI" URL="../LVProjectShortcut_Item_CanDropItem.vi"/>
		<Item Name="LVProjectShortcut_Item_Init.vi" Type="VI" URL="../LVProjectShortcut_Item_Init.vi"/>
		<Item Name="LVProjectShortcut_Item_Interface.vi" Type="VI" URL="../LVProjectShortcut_Item_Interface.vi"/>
		<Item Name="LVProjectShortcut_Item_NotifyChanged.vi" Type="VI" URL="../LVProjectShortcut_Item_NotifyChanged.vi"/>
		<Item Name="LVProjectShortcut_Item_OnCommand.vi" Type="VI" URL="../LVProjectShortcut_Item_OnCommand.vi"/>
		<Item Name="LVProjectShortcut_Item_OnDblClick.vi" Type="VI" URL="../LVProjectShortcut_Item_OnDblClick.vi"/>
		<Item Name="LVProjectShortcut_Item_OnDropItem.vi" Type="VI" URL="../LVProjectShortcut_Item_OnDropItem.vi"/>
		<Item Name="LVProjectShortcut_Item_OnPopupMenu.vi" Type="VI" URL="../LVProjectShortcut_Item_OnPopupMenu.vi"/>
		<Item Name="LVProjectShortcut_Item_OnWizardComplete.vi" Type="VI" URL="../LVProjectShortcut_Item_OnWizardComplete.vi"/>
		<Item Name="LVProjectShortcut_OnShortcutEdit.vi" Type="VI" URL="../LVProjectShortcut_OnShortcutEdit.vi"/>
		<Item Name="LVProjectShortcut_OnShortcutView.vi" Type="VI" URL="../LVProjectShortcut_OnShortcutView.vi"/>
		<Item Name="LVProjectShortcut_Provider_Interface.vi" Type="VI" URL="../LVProjectShortcut_Provider_Interface.vi"/>
		<Item Name="LVProjectShortcut_Provider_OnCommand.vi" Type="VI" URL="../LVProjectShortcut_Provider_OnCommand.vi"/>
		<Item Name="LVProjectShortcut_Provider_OnPopupMenu.vi" Type="VI" URL="../LVProjectShortcut_Provider_OnPopupMenu.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check for Contained Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/VariantDataType/Check for Contained Data Type.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Type Specific Details.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/VariantDataType/Type Specific Details.ctl"/>
				<Item Name="UserTags.lvlib" Type="Library" URL="/&lt;vilib&gt;/UserTags/UserTags.lvlib"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
			</Item>
			<Item Name="CreateNewWizard_Interface.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/CreateNewWizard_Interface.ctl"/>
			<Item Name="Item_Interface.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/Item_Interface.ctl"/>
			<Item Name="ItemRef.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/ItemRef.ctl"/>
			<Item Name="mxLvAddIconOverlays.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvAddIconOverlays.vi"/>
			<Item Name="mxLvChangeType.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvChangeType.ctl"/>
			<Item Name="mxLvDebugDisplayCaller.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvDebugDisplayCaller.vi"/>
			<Item Name="mxLvErrorHandler.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvErrorHandler.vi"/>
			<Item Name="mxLvGetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetBooleanProperty.vi"/>
			<Item Name="mxLvGetItemRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetItemRef.vi"/>
			<Item Name="mxLvGetNIIM.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetNIIM.vi"/>
			<Item Name="mxLvGetProjectPath.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectPath.vi"/>
			<Item Name="mxLvGetProjectRef.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetProjectRef.vi"/>
			<Item Name="mxLvGetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvGetStringProperty.vi"/>
			<Item Name="mxLvMenuItem.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvMenuItem.ctl"/>
			<Item Name="mxLvNIIM.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvNIIM.ctl"/>
			<Item Name="mxLvNotifyChanged.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvNotifyChanged.vi"/>
			<Item Name="mxLvOverlayAlias.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvOverlayAlias.ctl"/>
			<Item Name="mxLvOverlayState.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvOverlayState.ctl"/>
			<Item Name="mxLvProvider.mxx" Type="Document" URL="/&lt;resource&gt;/Framework/Providers/mxLvProvider.mxx"/>
			<Item Name="mxLvSetBinaryProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetBinaryProperty.vi"/>
			<Item Name="mxLvSetBooleanProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetBooleanProperty.vi"/>
			<Item Name="mxLvSetIcon.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetIcon.vi"/>
			<Item Name="mxLvSetIconOverlays.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetIconOverlays.vi"/>
			<Item Name="mxLvSetIntProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetIntProperty.vi"/>
			<Item Name="mxLvSetName.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetName.vi"/>
			<Item Name="mxLvSetPathProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPathProperty.vi"/>
			<Item Name="mxLvSetPopupMenu.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPopupMenu.vi"/>
			<Item Name="mxLvSetPopupMenuBatch.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetPopupMenuBatch.vi"/>
			<Item Name="mxLvSetProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetProperty.vi"/>
			<Item Name="mxLvSetRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetRefProperty.vi"/>
			<Item Name="mxLvSetStringProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetStringProperty.vi"/>
			<Item Name="mxLvSetVariantProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetVariantProperty.vi"/>
			<Item Name="mxLvSetVIRefProperty.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvSetVIRefProperty.vi"/>
			<Item Name="mxLvUpdateUI.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvUpdateUI.ctl"/>
			<Item Name="mxLvUpdateUI.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/mxLvUpdateUI.vi"/>
			<Item Name="Provider_Interface.ctl" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/API/Provider_Interface.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
