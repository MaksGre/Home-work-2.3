/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
print("Task 1")

let array: [Any] = [0.1, 1, 0.555, 5 + 5, "Hello", true, 5 + 5 == 11, "Good day!"]

for item in array {
    print("\(item)")
}
/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
print("\nTask 2")

for item in array {

    switch item {
    case is Int:
        print("Целое число \(item)")
    case is Double:
        print("Вещественное число \(item)")
    case is String:
        print("Строка \(item)")
    case is Bool:
        print("Булевое значение \(item)")
    default: break
    }
}
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
print("\nTask 3")

let dictionary: [String: Any] = [
    "1": 0.111,
    "2": "Moscow",
    "3": 512,
    "4": 12.31,
    "5": "10000",
    "6": 1025,
    "7": true,
    "8": !true]

for (key, value) in dictionary {
    print("Ключ: \(key), значение \(value)")
}
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
print("\nTask 4")

var total: Double = 0

for (_, value) in dictionary {
    
    switch value {
    case let value as Int:
            total += Double(value)
    case let value as Double:
            total += value
    case is String:
            total += 1
    case let value as Bool:
        total += value ? 2 : 3
    default: break
    }
}

print(total)
/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
print("\nTask 5")

total = 0

for (_, value) in dictionary {
    
    switch value {
    case let value as Int:
        total += Double(value)
    case let value as Double:
        total += value
    case let value as String:
        if let value = Double(value) {
            total += value
        }
    default: break
    }
}

print(total)
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
