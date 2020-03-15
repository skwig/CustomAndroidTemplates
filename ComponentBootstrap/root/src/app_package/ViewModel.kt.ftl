package ${packageName}

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import ${packageName}.store.${componentName}Store
import ${packageName}.store.${componentName}StoreState
import javax.inject.Inject

class ${componentName}ViewModelParam()

class ${componentName}ViewModel @Inject constructor(
        param: ${componentName}ViewModelParam
) : ViewModel() {

    private val store: ${componentName}Store
    val state: Flow<State>

    init {
        Log.d("matej", "${componentName}ViewModel.init() called")

        val initialState = ${componentName}StoreState()

        store = ${componentName}Store(initialState, viewModelScope)
        state = store.state.map { State() }
    }

    class State()
}