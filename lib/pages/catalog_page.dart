import 'package:flutter/material.dart';
import 'package:flutter_4/components/game_item.dart';
import 'package:flutter_4/models/cart_item.dart';
import 'package:flutter_4/models/game.dart';

final List<Game> games = [
  Game(
    "1727088258",
    "Elden Ring",
    '''Золотой порядок сломлен

Восстань, погасшая душа! Междуземье ждёт своего повелителя. Пусть благодать приведёт тебя к Кольцу Элден.

ELDEN RING — ролевая игра в жанре фэнтези от FromSoftware Inc. и BANDAI NAMCO Entertainment Inc. и на сегодняшний день — самый масштабный проект FromSoftware, действие которого разворачивается в мире, полном тайн и опасностей.

В Междуземье, владении королевы Марики Бессмертной, разбилось великое Кольцо Элден — источник силы Древа Эрд. Вскоре отпрыски Марики, полубоги, завладели осколками Кольца Элден — великими рунами. Однако обретённая сила развратила детей королевы, и они развязали войну — Раскол. И отреклась от них Великая Воля.

Теперь же благодать ведёт Погасших, лишённых золотой милости и изгнанных из Междуземья. Живые мертвецы, давным-давно утратившие благодать, отправляйтесь в Междуземье через туманное море и предстаньте перед Кольцом Элден.

Ибо оно ждёт нового повелителя''',
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FE3Huy2cdih0%2Fmaxresdefault.jpg&f=1&nofb=1&ipt=8c93c275775a5bdd9a93c346d13054bddb4f5c24b20f51eedd3198dce5ad440e&ipo=images",
    2519,
  ),
  Game(
    "1727108578",
    "Persona 5 Royal",
    '''Главный герой — старшеклассник, который был вынужден переехать в Токио и перевестись в одну из городских школ. Вскоре после этого он видит странный сон: таинственный голос называет его узником судьбы и сообщает, что в недалеком будущем юношу ожидает катастрофа. Теперь, чтобы пройти некий курс «реабилитации», он должен спасать людей от их собственных порочных желаний, примерив маску Призрачного похитителя.''',
    "https://avatars.mds.yandex.net/i?id=5f9cf592c011c5ffb388935e31cd5ef2_l-7973815-images-thumbs&n=13",
    2238,
  ),
  Game(
      "1727127024",
      "Black Myth: Wukong",
      "Black Myth: Wukong — ролевой боевик по мотивам китайской мифологии. Его сюжет основывается на «Путешествии на Запад», одном из четырёх классических романов китайской литературы. Став Избранным, вы отправитесь в приключение, полное испытаний и чудес, в котором вам предстоит приподнять завесу тайны над великой легендой.",
      "https://digiseller.mycdn.ink/preview/1115001/p1_4384167_9f03e94f.jpg",
      4441),
  Game(
      "1727127095",
      "Baldur's Gate 3",
      '''Соберите отряд и вернитесь в Забытые Королевства. Вас ждет история о дружбе и предательстве, выживании и самопожертвовании, о сладком зове абсолютной власти.

Ваш мозг стал вместилищем для личинки иллитида, и она пробуждает в вас таинственные, пугающие способности. Сопротивляйтесь паразиту и обратите тьму против себя самой – или же безоглядно отдайтесь злу и станьте его воплощением.

Ролевая игра нового поколения в мире Dungeons & Dragons от создателей Divinity: Original Sin 2.''',
      "https://korobok.store/upload/iblock/d67/na9245kxy88ke4ley3ce4em14915p4tp.webp",
      2469),
  Game(
      "1727127227",
      "NieR:Automata",
      '''NieR: Automata tells the story of androids 2B, 9S and A2 and their battle to reclaim the machine-driven dystopia overrun by powerful machines.

Humanity has been driven from the Earth by mechanical beings from another world. In a final effort to take back the planet, the human resistance sends a force of android soldiers to destroy the invaders. Now, a war between machines and androids rages on... A war that could soon unveil a long-forgotten truth of the world.''',
      "https://avatars.mds.yandex.net/i?id=e542066fc8cfc06acaab48c77cf1e4c6_l-7013372-images-thumbs&n=13",
      1007),
  Game(
      "1727127293",
      "NieR Replicant",
      '''NieR Replicant ver.1.22474487139... – обновленная версия NieR Replicant, выпущенной ранее только в Японии.
Эта игра представляет собой приквел шедевральной NieR:Automata. Обновленная версия может похвастаться мастерски отреставрированной графикой, захватывающей сюжетной линией – и не только!

Главный герой – добросердечный юноша из глухой деревеньки. Его сестру Йону поразил смертельный недуг, именуемый «черными буквами», и ради нее он вместе с Белым Гримуаром – причудливой говорящей книгой – отправляется на поиски «запечатанных виршей».''',
      "https://cdn11.bigcommerce.com/s-6kgfzq4siu/images/stencil/1280x1280/products/2271/11135/7bafc5e1b3a974e6765995d44c5ed564__25125.1675955718.jpg?c=1",
      1646),
  Game(
      "1727127365",
      "HELLDIVERS™ 2",
      '''Последняя линия нападения галактики.

Станьте Адским Десантником и сражайтесь за свободу по всему враждебному космосу в динамичном, безумном и беспощадном шутере с видом от третьего лица.
ВАЖНОЕ СООБЩЕНИЕ — ВООРУЖЕННЫЕ СИЛЫ СУПЕР-ЗЕМЛИ
Свобода. Мир. Демократия.
Ваши права граждан Супер-Земли — основы нашей цивилизации.
Самого нашего существования.
Но война продолжается. И вновь всему, что нас окружает, грозит опасность.
Вступите в величайшую армию в истории и сделайте галактику безопасной и свободной.
''',
      "https://wholesgame.com/wp-content/uploads/Helldivers-2-Thumb-4-x-5.jpg",
      3530),
  Game(
      "1727127432",
      "Persona 3 Reload",
      '''Новая школа, новые друзья и неожиданное попадание в новую реальность, которая доступна в течение одного часа «между сегодня и завтра». Обретите невероятную силу и раскройте тайны Темного часа, сражайтесь за своих друзей и навсегда оставьте след в их памяти.

Persona 3 Reload — захватывающее современное переосмысление культовой ролевой игры.''',
      "https://app-time.ru/uploads/games/keyart/2023/12/27122023150938.webp",
      2569),
  Game(
      "1727127502",
      "Cult of the Lamb",
      '''В Cult of the Lamb вы окажетесь в роли одержимого ягнёнка, спасённого от гибели жутким незнакомцем. Чтобы вернуть долг своему спасителю, вам придётся найти ему верных последователей. Взращивайте собственный культ в землях лжепророков, совершайте походы по таинственным уголкам леса, объединяйте вокруг себя верных последователей и несите своё слово в массы, чтобы сделать свой культ единственным.
СОБЕРИТЕ СВОЮ ПАСТВУ
Собирайте ресурсы и используйте их для возведения построек, проводите темные ритуалы, чтобы задобрить богов, и укрепляйте веру своей паствы с помощью проповедей.''',
      "https://images.wallpapersden.com/image/download/cult-of-the-lamb-hd-gaming_bWhpa2iUmZqaraWkpJRmamhrrWdlaW0.jpg",
      863),
  Game(
      "1727127563",
      "Cyberpunk 2077",
      '''Cyberpunk 2077 — приключенческая ролевая игра с открытым миром, рассказывающая о киберпанке-наёмнике Ви и борьбе за жизнь в мегаполисе Найт-Сити. Мрачное будущее стало ещё более впечатляющим в улучшенной версии, в которую вошли новые дополнительные материалы. Создайте персонажа, выберите стиль игры и начните свой путь к высшей лиге, выполняя заказы, улучшая репутацию и оттачивая навыки. Ваши поступки влияют на происходящее и на весь город. В нём рождаются легенды. Какую сложат о вас?''',
      "https://shop.buka.ru/data/img_files/8975/screenshot/XhKcDnPNBf.jpg",
      1513)
];

class CatalogPage extends StatefulWidget {
  final Function(Game) onFavoriteToggle;
  final List<Game> favoriteGames;
  final List<CartItem> cart;
  final Function(Game) addToCart;
  final Function(Game) removeFromCart;

  const CatalogPage(
      {super.key,
      required this.onFavoriteToggle,
      required this.favoriteGames,
      required this.cart,
      required this.addToCart,
      required this.removeFromCart});

  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  void _showAddGameDialog() {
    final TextEditingController idController = TextEditingController();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController imageUrlController = TextEditingController();
    final TextEditingController priceController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Добавить новую игру'),
          content: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: idController,
                decoration: const InputDecoration(labelText: 'Артикул'),
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Название'),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Описание'),
              ),
              TextField(
                controller: imageUrlController,
                decoration: const InputDecoration(labelText: 'URL изображения'),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(labelText: 'Цена'),
              ),
            ],
          )),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                final newGame = Game(
                  idController.text,
                  titleController.text,
                  descriptionController.text,
                  imageUrlController.text,
                  int.parse(priceController.text),
                );

                setState(() {
                  games.add(newGame);
                });

                Navigator.of(context).pop();
              },
              child: const Text('Сохранить'),
            ),
          ],
        );
      },
    );
  }

  void _removeFromGames(Game game) {
    setState(() {
      games.remove(game);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Каталог игр",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 6 / 12,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: games.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Dismissible(
                      key: Key(games[index].id),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        return await showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Подтверждение удаления'),
                            content: const Text(
                                'Вы уверены, что хотите удалить этот элемент из каталога?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: const Text('Отмена'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                                child: const Text('Удалить'),
                              ),
                            ],
                          ),
                        );
                      },
                      onDismissed: (direction) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text("${games[index].name} удален из каталога"),
                          ),
                        );
                        _removeFromGames(games[index]);
                      },
                      child: GameItem(
                        game: games[index],
                        liked: widget.favoriteGames.contains(games[index]),
                        onFavoriteToggle: () =>
                            widget.onFavoriteToggle(games[index]),
                        quantityInCart: widget.cart
                            .firstWhere(
                              (position) => position.id == games[index].id,
                              orElse: () =>
                                  CartItem(games[index].id, 0, games[index]),
                            )
                            .quantity,
                        addToCart: () => widget.addToCart(games[index]),
                        removeFromCart: () =>
                            widget.removeFromCart(games[index]),
                      ));
                })),
        floatingActionButton: Stack(children: [
          Positioned(
              bottom: 40,
              right: 0,
              child: SizedBox(
                  height: 70,
                  width: 70,
                  child: FloatingActionButton(
                      onPressed: () => _showAddGameDialog(),
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      enableFeedback: true,
                      child: const Icon(Icons.add))))
        ]));
  }
}
