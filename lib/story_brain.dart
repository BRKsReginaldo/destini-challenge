import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
      storyTitle:
          'Um dos pneus do seu carro estourou numa estrada no meio do nada, e seu celular está sem sinal. Você decide pedir carona na estrada. Um caminhão velho para próximo de você. Um homem com um chapeu brilhante e olhos desalmados abre a porta e pergunta: "Precisa de uma carona filho ?"',
      choice1: 'Vou aceitar. Obrigado pela ajuda!',
      choice2: 'Melhor perguntar se ele é um assassino antes.',
      path1: 2,
      path2: 1,
    ),
    Story(
      storyTitle: 'Ele te encara vagarosamente, abismado com a pergunta.',
      choice1: 'Pelo menos ele é honesto. Vou entrar.',
      choice2: 'Espera, eu sei como trocar um pneu!',
      path1: 2,
      path2: 3,
    ),
    Story(
      storyTitle:
          'Enquanto ele começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais irritado a cada minuto que passa. Ele te pede pra abrir o porta-luvas. Dentro você encontra uma faca ensanguentada, dois dedos cortos e uma fita cassete do Elton Jhon. Ele pede a fita.',
      choice1: 'Eu amo Elton John! Entregar a fita pra ele.',
      choice2: 'É ele ou eu! Você pega a faca e apunhala ele.',
      path1: 5,
      path2: 4,
    ),
    Story(
      storyTitle:
          'O que ? Um policial! Você sabia que acidentes no transito são a segunda maior causa de mortes para pessoas adultas',
      choice1: 'Recomeçar',
      choice2: '',
    ),
    Story(
        storyTitle:
            'Enquanto você capota o carro na estrada e bate de frente com as pedras, você pensa sobre a duvidosa sabedoria de apunhalar alguem enquanto eles dirigem um carro com você dentro',
        choice1: 'Recomeçar',
        choice2: ''),
    Story(
        storyTitle:
            'Você curte a musica com o assassino enquanto cantam versos como "Can you feel the love tonight". Ele te deixa na proxima estrada. Antes de você ir ele pergunta se você sabe de algum lugar bom pra se livrar de corpos. Você responde: "Tente o porto".',
        choice1: 'Recomeçar',
        choice2: '')
  ];

  Story getStory() {
    return _storyData[_storyNumber];
  }

  String getChoice1() {
    return getStory().choice1;
  }

  String getChoice2() {
    return getStory().choice2;
  }

  int _storyNumber = 0;

  void restart() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber >= 3) {
      return restart();
    }
    if (choiceNumber == 1) {
      _storyNumber = getStory().path1;
    } else {
      _storyNumber = getStory().path2;
    }
  }

  bool buttonShouldBeVisible() {
    return _storyNumber <= 2;
  }
}
