import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Antígua e Barbuda',
      theme: ThemeData(useMaterial3: true),
      home: const HistoryHomePage(),
    );
  }
}

class AppImages {
  static const flag =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Antigua_and_Barbuda.svg/1280px-Flag_of_Antigua_and_Barbuda.svg.png';
}

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(AppImages.flag, fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: Container(color: Colors.white.withOpacity(0.86)),
        ),
        child,
      ],
    );
  }
}

class HistoryHomePage extends StatelessWidget {
  const HistoryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('História'),
        centerTitle: true,
        backgroundColor: const Color(0xFFE31B23),
        foregroundColor: Colors.white,
      ),
      body: AppBackground(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF111111).withOpacity(0.92),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFF6D04D), width: 2),
              ),
              child: Column(
                children: [
                  Image.network(AppImages.flag, height: 120),
                  const SizedBox(height: 14),
                  const Text(
                    'Antígua e Barbuda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'História, cultura e identidade de um país caribenho marcado por resistência, diversidade e independência.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.5,
                      height: 1.4,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            NavigationButton(
              title: 'Ir para Cultura',
              subtitle: 'Carnaval, música, culinária, folclore e religião',
              icon: Icons.celebration,
              color: const Color(0xFF0072CE),
              page: const CulturePage(),
            ),
            const SizedBox(height: 16),
            const InfoCard(
              title: 'Informações principais',
              items: [
                'Capital: Saint John’s',
                'Idioma oficial: Inglês',
                'Região: Caribe, Pequenas Antilhas',
                'Independência: 1º de novembro de 1981',
              ],
            ),
            const SizedBox(height: 16),
            const InfoBox(
              mainTitle: 'História de Antígua e Barbuda',
              icon: Icons.history_edu,
              titleColor: Color(0xFFE31B23),
              sections: [
                InfoSection(
                  title: 'Povos originários',
                  icon: Icons.groups,
                  initiallyExpanded: true,
                  text:
                      'Os povos originários de Antígua e Barbuda foram os primeiros habitantes das ilhas e representam a base mais antiga da história do país. Os grupos mais antigos eram os povos arcaicos ou pré-cerâmicos, que viviam principalmente da pesca, da coleta de mariscos e do aproveitamento dos recursos naturais das áreas costeiras.\n\n'
                      'Eles possuíam grande conhecimento do ambiente marinho, dos recifes e dos ciclos naturais das ilhas, o que permitia sua sobrevivência em um território insular. Com o tempo, as ilhas passaram a ser ocupadas também por povos arawaks, que desenvolveram uma vida mais estável, baseada na agricultura, especialmente no cultivo da mandioca, além da produção de cerâmica e da formação de aldeias organizadas.\n\n'
                      'Esses grupos tinham forte senso comunitário e dependiam da cooperação entre famílias para garantir a sobrevivência. Posteriormente, os caribes também estiveram presentes na região, destacando-se pela navegação entre ilhas, pela mobilidade e pela organização social ligada tanto à subsistência quanto à defesa. Em conjunto, esses povos formam a base da ocupação indígena de Antígua e Barbuda.',
                ),
                InfoSection(
                  title: 'Colonização britânica',
                  icon: Icons.account_balance,
                  text:
                      'A colonização britânica de Antígua e Barbuda começou no século XVII, quando os ingleses se estabeleceram em Antígua em 1632. Antes disso, a ilha havia sido visitada por Cristóvão Colombo em 1493, mas não houve colonização espanhola permanente.\n\n'
                      'Os primeiros colonos ingleses tentaram atividades agrícolas como o cultivo de tabaco, mas logo substituíram esse modelo pela produção de cana-de-açúcar, que se tornou a base da economia colonial. Com isso, Antígua passou a integrar o sistema de plantations do Caribe, baseado em grandes propriedades rurais voltadas à exportação e dependentes do trabalho escravizado africano.\n\n'
                      'Barbuda foi colonizada em 1678 e posteriormente colocada sob controle da família Codrington. Ao longo dos séculos XVIII e XIX, a economia açucareira consolidou a estrutura colonial. A escravidão foi abolida em 1834, mas o domínio britânico continuou até a independência em 1981.',
                ),
                InfoSection(
                  title: 'Escravidão e resistência',
                  icon: Icons.handshake,
                  text:
                      'A escravidão em Antígua e Barbuda foi essencial para o funcionamento do sistema colonial britânico, especialmente nas plantações de cana-de-açúcar. Milhares de africanos foram trazidos à força e submetidos a trabalho pesado, longas jornadas, punições físicas e condições extremamente difíceis.\n\n'
                      'A economia da colônia dependia totalmente dessa mão de obra escravizada. Mesmo assim, os escravizados desenvolveram diversas formas de resistência. Uma das mais conhecidas foi a conspiração de Prince Klaas em 1736, que planejava uma grande revolta contra os colonizadores em Antígua, mas foi descoberta antes de acontecer.\n\n'
                      'Além disso, houve resistência diária, como fugas, sabotagens, preservação de práticas culturais africanas e manutenção de tradições religiosas e musicais. Essas formas de resistência mostravam a luta constante contra o sistema escravista. A escravidão foi abolida em 1834, mas deixou profundas desigualdades sociais.',
                ),
                InfoSection(
                  title: 'Independência',
                  icon: Icons.flag,
                  text:
                      'A independência de Antígua e Barbuda foi conquistada em 1º de novembro de 1981, marcando o fim oficial do domínio britânico. Antes disso, o país passou por um processo gradual de autonomia política.\n\n'
                      'Em 1958, integrou a Federação das Índias Ocidentais, que reunia várias colônias britânicas do Caribe, mas essa federação foi dissolvida em 1962. Em 1967, Antígua tornou-se um Estado associado ao Reino Unido, com autogoverno interno, enquanto a Inglaterra mantinha controle sobre defesa e relações externas.\n\n'
                      'Durante a década de 1970, o movimento pela independência ganhou força, levando às negociações finais com o governo britânico. Em 1981, o país se tornou oficialmente independente, com Vere Bird como primeiro primeiro-ministro do Estado soberano.',
                ),
                InfoSection(
                  title: 'Atualidade',
                  icon: Icons.public,
                  text:
                      'Atualmente, Antígua e Barbuda é um país independente do Caribe cuja economia é fortemente baseada no turismo, principal fonte de renda nacional. O país recebe visitantes internacionais atraídos por suas praias, resorts e infraestrutura turística.\n\n'
                      'Além do turismo, setores como serviços financeiros e construção civil também têm importância na economia. Apesar disso, o país ainda enfrenta desafios como a dependência econômica do turismo, a vulnerabilidade a crises externas e a exposição a furacões e eventos climáticos extremos.\n\n'
                      'Politicamente, mantém um sistema democrático parlamentar baseado no modelo britânico. A população é majoritariamente descendente de africanos escravizados, resultado direto do período colonial. Hoje, o país busca diversificar sua economia e reduzir sua dependência do turismo.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CulturePage extends StatelessWidget {
  const CulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Cultura'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0072CE),
        foregroundColor: Colors.white,
      ),
      body: AppBackground(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF111111).withOpacity(0.92),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFF6D04D), width: 2),
              ),
              child: Column(
                children: [
                  Image.network(
                    AppImages.flag,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Cultura de Antígua e Barbuda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Carnaval, música, culinária, folclore e religião como expressões da identidade afro-caribenha do país.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.5,
                      height: 1.4,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const InfoBox(
              mainTitle: 'Cultura de Antígua e Barbuda',
              icon: Icons.celebration,
              titleColor: Color(0xFF0072CE),
              sections: [
                InfoSection(
                  title: 'Carnaval',
                  icon: Icons.festival,
                  initiallyExpanded: true,
                  text:
                      'O Carnaval de Antígua e Barbuda é a principal festa cultural do país e acontece todos os anos entre o fim de julho e o início de agosto. Ele celebra a emancipação dos africanos escravizados em 1834 e é uma das maiores expressões da identidade nacional.\n\n'
                      'Durante o período colonial, manifestações culturais africanas eram reprimidas, e o Carnaval se tornou uma forma de resgate dessas tradições. A festa inclui desfiles de rua, concursos de fantasias, apresentações musicais e grandes eventos populares, especialmente na capital, St. John’s.\n\n'
                      'O calypso e a soca são os estilos musicais mais presentes durante a celebração. O Carnaval representa liberdade, memória histórica e identidade afro-caribenha.',
                ),
                InfoSection(
                  title: 'Música',
                  icon: Icons.music_note,
                  text:
                      'A música de Antígua e Barbuda tem forte influência africana, combinada com elementos caribenhos e europeus. Os principais estilos são o calypso e a soca, que desempenham papel central na cultura do país.\n\n'
                      'O calypso é caracterizado por letras narrativas que abordam temas sociais, políticos e do cotidiano, muitas vezes com humor e crítica. Ele também funcionou historicamente como forma de expressão popular e resistência.\n\n'
                      'A soca, por sua vez, tem ritmo mais rápido e energético, sendo muito associada a festas, dança e ao Carnaval. A música no país é uma importante forma de identidade cultural, preservando tradições e conectando a população às suas raízes históricas.',
                ),
                InfoSection(
                  title: 'Steelpan',
                  icon: Icons.album,
                  text:
                      'O steelpan é um instrumento musical de percussão feito a partir de tambores metálicos reaproveitados, sendo um dos símbolos mais importantes da cultura caribenha. Ele surgiu da criatividade das populações afrodescendentes, que transformaram materiais simples em instrumentos musicais após o período colonial.\n\n'
                      'O som é produzido ao bater em diferentes áreas do metal, criando notas musicais distintas que permitem a execução de melodias completas. Em Antígua e Barbuda, o steelpan é muito utilizado em bandas, escolas, festivais e principalmente no Carnaval.\n\n'
                      'Ele representa inovação cultural, resistência histórica e identidade afro-caribenha, sendo um dos maiores símbolos musicais da região.',
                ),
                InfoSection(
                  title: 'Folclore',
                  icon: Icons.auto_stories,
                  text:
                      'O folclore de Antígua e Barbuda é baseado na tradição oral e nas influências africanas trazidas durante a escravidão. Ele inclui histórias sobre espíritos, assombrações e criaturas sobrenaturais conhecidas como jumbies, usadas para explicar fenômenos desconhecidos e transmitir valores sociais.\n\n'
                      'Essas histórias também funcionavam como forma de educação e controle social dentro das comunidades. Um dos símbolos mais importantes do folclore é o Moko Jumbie, um dançarino em pernas de pau que representa proteção espiritual e vigilância, ligado às tradições africanas.\n\n'
                      'Ele aparece em festas, desfiles e eventos culturais, mantendo viva uma herança ancestral.',
                ),
                InfoSection(
                  title: 'Culinária',
                  icon: Icons.restaurant,
                  text:
                      'A culinária de Antígua e Barbuda resulta da mistura de influências africanas, indígenas e europeias. O prato mais tradicional é o fungie com pepperpot, considerado o prato nacional, feito à base de fubá e acompanhado de um ensopado de carne e vegetais temperados.\n\n'
                      'A alimentação cotidiana inclui grande variedade de peixes e frutos do mar, como lagosta, caranguejo e peixe grelhado, além de alimentos como arroz, mandioca, batata-doce, coco e legumes tropicais.\n\n'
                      'O país também é conhecido pelo Antigua Black Pineapple, um tipo de abacaxi muito doce e valorizado. A culinária reflete o modo de vida insular e o uso dos recursos naturais disponíveis.',
                ),
                InfoSection(
                  title: 'Religião',
                  icon: Icons.church,
                  text:
                      'Antígua e Barbuda não possui religião oficial e garante liberdade religiosa a toda a população. A Constituição protege o direito de cada pessoa praticar sua fé ou não seguir nenhuma religião.\n\n'
                      'O cristianismo é a religião predominante, especialmente nas denominações protestantes, resultado da colonização britânica. As igrejas têm forte presença na vida social e comunitária, influenciando eventos culturais e o cotidiano da população.\n\n'
                      'Apesar disso, existe diversidade religiosa no país, com outras crenças e pessoas sem religião.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Widget page;

  const NavigationButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Colors.white.withOpacity(0.96),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        leading: CircleAvatar(
          backgroundColor: color,
          foregroundColor: Colors.white,
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final List<String> items;

  const InfoCard({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.96),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFFF6D04D), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFFE31B23),
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  '• $item',
                  style: const TextStyle(fontSize: 16, height: 1.35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoSection {
  final String title;
  final String text;
  final IconData icon;
  final bool initiallyExpanded;

  const InfoSection({
    required this.title,
    required this.text,
    this.icon = Icons.article,
    this.initiallyExpanded = false,
  });
}

class InfoBox extends StatelessWidget {
  final String mainTitle;
  final IconData icon;
  final Color titleColor;
  final List<InfoSection> sections;

  const InfoBox({
    super.key,
    required this.mainTitle,
    required this.icon,
    required this.titleColor,
    required this.sections,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.only(bottom: 14),
      color: Colors.white.withOpacity(0.96),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: titleColor, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: titleColor,
                  foregroundColor: Colors.white,
                  child: Icon(icon, size: 23),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    mainTitle,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            ...sections.map(
              (section) => Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7FAFF),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: titleColor.withOpacity(0.25)),
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    initiallyExpanded: section.initiallyExpanded,
                    leading: Icon(section.icon, color: titleColor),
                    iconColor: titleColor,
                    collapsedIconColor: titleColor,
                    title: Text(
                      section.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF111111),
                      ),
                    ),
                    childrenPadding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                    children: [
                      Text(
                        section.text,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 16.2,
                          height: 1.5,
                          color: Color(0xFF222222),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
