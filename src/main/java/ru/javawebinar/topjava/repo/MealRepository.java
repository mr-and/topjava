package ru.javawebinar.topjava.repo;

import ru.javawebinar.topjava.model.Meal;

import java.util.Collection;

public interface MealRepository {

    Meal addMeal(Meal meal);

    Meal getMealById(int id);

    void deleteOne(int id);

    Collection<Meal> getAll();

}
