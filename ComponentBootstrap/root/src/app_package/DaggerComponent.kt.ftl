package ${packageName}.di

import dagger.BindsInstance
import dagger.Module
import dagger.Subcomponent
import ${packageName}.${componentName}ViewModel
import ${packageName}.${componentName}ViewModelParam


@Subcomponent(modules = [${componentName}FragmentModule::class])
interface ${componentName}FragmentComponent {

    val ${lowerCaseComponentName}ViewModel: ${componentName}ViewModel

    @Subcomponent.Factory
    interface Factory {
        fun create(@BindsInstance param: ${componentName}ViewModelParam): ${componentName}FragmentComponent

        interface Getter : AppComponent {
            val ${lowerCaseComponentName}ComponentFactory: Factory
        }
    }
}

@Module
internal object ${componentName}FragmentModule {
}