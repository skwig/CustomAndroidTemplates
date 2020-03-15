package ${packageName}.store

import kotlinx.coroutines.CoroutineScope

internal class ${componentName}Store(initialState: ${componentName}StoreState, scope: CoroutineScope) : BaseStore<${componentName}StoreState, ${componentName}StoreCommand, ${componentName}StoreEffect>(initialState, scope) {

    override fun tryReduce(currentState: ${componentName}StoreState, command: ${componentName}StoreCommand): Boolean {
        return when (command) {
            else -> false
        }
    }

    override fun tryHandleEffect(effect: ${componentName}StoreEffect): Boolean {
        when (effect) {
            else -> return false
        }
        return true
    }

    private fun reducer(state: ${componentName}StoreState, command: ${componentName}StoreCommand): ${componentName}StoreState? {
        return null
    }

    private fun effectDispatcher(state: ${componentName}StoreState): ${componentName}StoreEffect? {
        return null
    }
}