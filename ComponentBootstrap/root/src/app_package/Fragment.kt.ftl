package ${packageName}

import android.util.Log
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.collect
import ${packageName}.di.${componentName}FragmentComponent

class ${componentName}Fragment : BaseFragment<${componentName}ViewModel, Fragment${componentName}Binding>(${componentName}ViewModel::class) {

    companion object {
        fun newInstance() = ${componentName}Fragment()
    }

    init {
        lifecycleScope.launchWhenStarted {
            viewModel.state.collect {
                Log.d("matej", "SearchFragment.viewModel.state.value [$it]")
                updateView(it)
            }
        }
    }

    override fun createViewModel(appComponentGetter: AppComponent.Getter): ${componentName}ViewModel {
        val args = ${componentName}FragmentArgs.fromBundle(requireArguments())

        return appComponentGetter.appComponent<${componentName}FragmentComponent.Factory.Getter>().${lowerCaseComponentName}ComponentFactory
                .create(args.param)
                .${lowerCaseComponentName}ViewModel
    }

    override fun createViewBinding(inflater: LayoutInflater, container: ViewGroup?, attachToRoot: Boolean): Fragment${componentName}Binding {
        return Fragment${componentName}Binding.inflate(inflater, container, attachToRoot)
    }

    override fun setupFragment() {
        Log.d("matej", "${componentName}Fragment.setupFragment() called")

        with(binding) {

            with(activity as AppCompatActivity) {
                setSupportActionBar(toolbar)
                supportActionBar!!.setDisplayHomeAsUpEnabled(true)
            }
        }
    }


    private fun updateView(state: ${componentName}ViewModel.State) {
        with(binding) {

        }
    }
}