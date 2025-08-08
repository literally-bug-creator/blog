+++
date = '2025-08-08T19:37:53+03:00'
draft = true
title = 'Optimizing std::vector Usage'
+++

# What is `Vector`?!

A **vector** in C++ is **a dynamic array** that can resize itself automatically when elements are added or removed. It is part of the Standard Template Library (STL) and is defined in the `<vector>` header file.

# Do you really need a `std::vector`?

Skip vector when size is known at compile time. `std::array` is faster because it doesn't allocate on the heap, doesn't store extra metadata, and gives you compile-time size checking. Pure performance win.

# Do you need to copy the `std::vector`?

You'll often need to pass a `std::vector` to functions. Instead of passing by value (which creates an expensive copy), pass by reference—it's lightweight and avoids unnecessary copying.

# Do you really need to use a `push_back`?

When you call `push_back()`, you're doing double work: the program creates your object, then **moves or copies it into the container**. With `emplace_back()`, you skip the middleman — it **constructs the object directly where it belongs**, saving you an unnecessary move/copy operation.

# What if I can't use `emplace_back`?

In some cases (when you need to push an object with a specific state into the `std::vector`), you have to use `push_back` instead of `emplace_back`.
How can you make it more efficient? You can make `push_back` cheaper if the object you want to push supports move semantics. If it doesn't support moving, you'll face expensive **copying — the worst-case scenario**!

# Manage capacity by yourself!

If you know how many elements you will contain in the `std::vector`, you can use `reserve(n)` method, which is allocate the memory for `n` amount of the elements. Then, if you add less or equal objects to the `std::vector`, no allocation for the elements needed at all!
