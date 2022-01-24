import 'package:cocktail3/whisky_list.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Container(
              margin: const EdgeInsets.fromLTRB(5, 10 , 5, 30),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border:  Border.all(
                  width: 2,
                  color: Colors.deepOrange,
                )
              ),
              child: Text('술친구가 필요한 사람보단 술이 친구인 사람들을 위해',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(5, 1 , 5, 30),
              child: Text('지나친 음주는 정신 건강에는 이로우나 신체 건강에는 해롭습니다.',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red)),
            ),

            SizedBox(
                child: Text('1. Whicky',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/whisky/ballan_finest.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
위스키의 종류는 크게 싱글 몰트, 블렌디드 몰트, 블렌디드, 버번으로 나뉘지만 더 엄격하고 세밀하게 구분 지을 수 있을 정도로 그 역사와 전통이 깊은 술이다. 기본적으로 위스키는 보리를 증류하여 만들어지며, 옥수수가 51% 이상인 버번과 호밀이 51% 이상인 라이 위스키도 있다.
                    """,
                      style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                      child: TextButton(
                        child: Text('View the whiskies', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/whisky');
                        },
                      )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('2. Vodka',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/vodka/absol_blue.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
보드카는 무색, 무미, 무취의 특징을 갖고 있는 술이다. 특별한 향이 없기 때문에 가향을 하여 판매하는 경우가 많고 칵테일 제조시 알코올 도수만 올려주는 기특한 술이다. 다른 증류주들에 비해서는 저렴한 가격이여서 많은 이들에게 사랑을 받고 있다.
                    """,
                        style: TextStyle(fontSize: 11),),
                      ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the vodkas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/vodka');
                          }
                        )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('3. Gin',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/gin/tanqueray.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
진은 주니퍼베리라는 열매를 증류 과정에서 필수적으로 첨가하여 향을 낸다. 주니퍼베리로 인해 진은 솔향과 비슷한 향을 내며, 진을 좋아하는 이들은 '송충이'라고 놀림을 받기도 한다.
진은 단맛이 없는 '런던 드라이 진'과 2%의 당분이 있는 '올드 톰 진'이 주를 이루고 있다.
                    """,
                        style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the gins', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () { print('Gin List');
                            // Navigator.push(context, WhiskyList());
                          },
                        )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('4. Rum',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/rum/bacardi.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
해적의 술로 알려진 럼은 사탕수수를 증류하여 만드는 증류주이다. 럼은 숙성을 하지 않은 실버럼, 2년 가량의 숙성을 한 골드럼, 3년 이상 숙성한 다크럼이 있다.
                    """,
                        style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the rums', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () { print('Rum List');
                            // Navigator.push(context, WhiskyList());
                          },
                        )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('5. Brandy',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/brandy/camus.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
포도를 발효하면 와인이 되고 증류하면 바로 브랜디가 된다. 포도가 많이 자라는 프랑스에 좋은 브랜디가 많다고 알려져 있다. 살면서 한 번쯤은 들어왔을 '꼬냑'과 '아르마냑'이 프랑스 지명에서 따온 브랜디이다.
                    """,
                        style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the brandies', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () { print('Brandy List');
                            // Navigator.push(context, WhiskyList());
                          },
                        )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('6. Tequila',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/tequila/jose.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
테킬라는 멕시코에서 많이 자라는 용설란(아가베, Agave)의 수액을 증류한 술이다. 기본적으로 숙성을 하지 않으며 숙성을 하지 않은 블랑코, 3 ~ 6개월 숙성한 레포사도, 1년 숙성한 아네호가 있다.
                    """,
                        style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the tequilas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () { print('Tequila List');
                            // Navigator.push(context, WhiskyList());
                          },
                        )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: 10),

            SizedBox(
                child: Text('7. Liquor',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),

            SizedBox(height: 10),

            Row(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/liquor/triplesec.png'),
                  width: 200,
                  height: 200,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Text("""
리큐르(Liquor)는 본디 '술'이라는 자체의 뜻이 있지만 대부분 혼성주를 의미한다. 양조주와 증류주에 과실류나 허브를 혼합하여 만든다. 그에 따라서 종류가 어마어마하게 많고 맛 또한 다양하다.
도수는 대부분 15도 ~ 20도이지만 '예거 마이스터'와 같이 35도가 넘는 것도 있다.
                    """,
                        style: TextStyle(fontSize: 11),),
                    ),
                    SizedBox(
                        child: TextButton(
                          child: Text('View the liquors', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange)),
                          onPressed: () { print('Liquor List');
                            // Navigator.push(context, WhiskyList());
                          },
                        )
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
