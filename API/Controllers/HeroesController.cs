﻿using API.Model;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("/api/[controller]")]
    public class HeroesController : Controller
    {
        private static List<Hero> heroes = new List<Hero>(new[]
        {
            new Hero()
            {
                id = 1,
                name = "ФСБэтмен",
                description = "Бэтмен, чьё настоящее имя — Брюс Уэйн, является миллиардером и владельцем корпорации Wayne Enterprises. После трагической гибели своих родителей в детстве он решил бороться с преступностью в Готэм-сити, используя своё состояние и тренировки в боевых искусствах, а также высокотехнологичное оборудование. Бэтмен известен своим моральным кодексом и стремлением не убивать противников, полагаясь на свои навыки детектива и стелса.",
                firstAppearance = "первое появление состоялось в комиксе Detective Comics #27, который вышел в мае 1939 года.",
                creator = "Персонаж был создан художником Бобом Кейн и писателем Биллом Фингером."
            },
        new Hero()
        {
            id = 2,
            name = "Суперчел",
            description = "Настоящее имя Супермена — Кал-Эл (или Кларк Кент, когда он живёт среди людей). Он родился на планете Криптон и стал единственным выжившим после её уничтожения. Приземлившись на Землю, его усыновили Марта и Джонатан Кент в малом городке Смолвилл. Супермен обладает сверхчеловеческими способностями, такими как невероятная сила, скорость, полёт, а также способность излучать тепловое зрение. Его умения связаны с Землёй, так как он получает свою силу от солнечного света.",
            firstAppearance = "впервые появился в Action Comics #1 в июне 1938 года.",
            creator = "Создателями персонажа являются писатель Джерри Сигел и художник Джо Шустер."
        },
        new Hero()
        {
            id = 3,
            name = "ЧУДОвищная женщина",
            description = "Настоящее имя Чудо-Женщины — Диана, принцесса амазонок, родившаяся на острове Темискира, населенном амазонками. Диана обладает множеством выдающихся способностей, включая сверхчеловеческую силу, скорость и мастерство в боевых искусствах. Она также использует различные магические артефакты, такие как Лассо Истины, которое заставляет людей говорить правду, и браслеты, которые отражают пули.",
            firstAppearance = "Первое появление Чудо-Женщины состоялось в комиксе All Star Comics № 8, который вышел в декабре 1941 года.",
            creator = "Создателями персонажа являются писатель Уильямом Молтоном Марстоном и художники Халлом Нортоном и Эрни Чан"
        }
    });
        [HttpGet]
        public IEnumerable<Hero> Get() => heroes;

        [HttpGet("{id}")]
        public IActionResult GetHeroes(int id)
        {
            // Получаем всех героев из метода GetAllHeroes
            var heroe = heroes.SingleOrDefault(h => h.id == id);

            // Проверяем, что данные героев успешно получены
            if (heroe is null)
            {
                return NotFound();
            }
            return Ok(heroe);

        }

        /*public IActionResult Index()
        {
            return View();
        }*/
    }
}
