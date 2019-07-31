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

    if item is Int {
        print("Целое число \(item)")
    }
    if item is Double {
        print("Вещественное число \(item)")
    }
    if item is String {
        print("Строка \(item)")
    }
    if item is Bool {
        print("Булевое значение \(item)")
    }
}
/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
print("\nTask 3")

var dictionary = [String: Any]()
dictionary["1"] = 0.111
dictionary["2"] = "Moscow"
dictionary["3"] = 512
dictionary["4"] = 12.31
dictionary["5"] = "10000"
dictionary["6"] = 1025
dictionary["7"] = true
dictionary["8"] = !true

for (key, value) in dictionary {
    print("Ключ: \(key), значение \(value)")
}
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
print("\nTask 4")

var total: Double = 0

for (_, value) in dictionary {
    
    if let value = value as? Int {
        total += Double(value)
    }
    if let value = value as? Double {
        total += value
    }
    if let _ = value as? String {
        total += 1
    }
    if let value = value as? Bool {
        if value {
            total += 2
        } else {
            total += 3
        }
    }
}

print(total)
/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
print("\nTask 5")

total = 0

for (_, value) in dictionary {
    
    if let value = value as? Int {
        total += Double(value)
    }
    if let value = value as? Double {
        total += value
    }
    if let value = value as? String {
        if let value = Double(value) {
            total += value
        }
    }
}

print(total)
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
