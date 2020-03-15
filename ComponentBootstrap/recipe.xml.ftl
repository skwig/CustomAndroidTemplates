<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${componentName}Fragment.kt" />
    
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${componentName}ViewModel.kt" />

    <instantiate from="src/app_package/Store.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/store/${componentName}Store.kt" />

    <instantiate from="src/app_package/Effect.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/store/${componentName}StoreEffect.kt" />

    <instantiate from="src/app_package/State.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/store/${componentName}StoreState.kt" />

    <instantiate from="src/app_package/Command.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/store/${componentName}StoreCommand.kt" />

    <instantiate from="src/app_package/DaggerComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/${componentName}FragmentComponent.kt" />

    <open file="${srcOut}/${componentName}ViewModel.kt"/>
    <open file="${srcOut}/${componentName}Fragment.kt"/>
    <open file="${srcOut}/store/${componentName}Store.kt"/>
    <open file="${srcOut}/store/${componentName}StoreEffect.kt"/>
    <open file="${srcOut}/store/${componentName}StoreState.kt"/>
    <open file="${srcOut}/store/${componentName}StoreCommand.kt"/>
    <open file="${srcOut}/di/${componentName}FragmentComponent.kt"/>
</recipe>