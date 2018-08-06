# flutter_jsonparser
#### Flutter中解析JSON
**具体的可以分为以下解析流程**
1. 简单的json解析
```
{
    "id":"487349",
    "name":"Pooja Bhaumik",
    "score" : 45
}                
```
2. 解析含有数组的简单结构
```
{
      "city": "Mumbai",
      "streets": [
        "address1",
        "address2"
      ]
 }             
```
3. 简单的嵌套结构
```
{
  "shape_name":"rectangle",
  "property":{
    "width":5.0,
    "breadth":10.0
  }
}        
```
4. 含有 Lists 的嵌套结构
```
{
      "id":1,
      "name":"ProductName",
      "images":[
        {
          "id":11,
          "imageName":"xCh-rhy"
        },
        {
          "id":31,
          "imageName":"fjs-eun"
        }
      ]
  }    
```
5. map 列表
```
[
  {
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "http://placehold.it/600/92c952",
    "thumbnailUrl": "http://placehold.it/150/92c952"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "http://placehold.it/600/771796",
    "thumbnailUrl": "http://placehold.it/150/771796"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "officia porro iure quia iusto qui ipsa ut modi",
    "url": "http://placehold.it/600/24f355",
    "thumbnailUrl": "http://placehold.it/150/24f355"
  }
] 
```
6. 最后一组是多疑复杂数组的解析,相关的数据格式请查看page.json文件
```
{ "page": 1,
  "per_page": 3,
  "total": 12,
  "total_pages": 4,
  "author":{
    "first_name": "Ms R",
    "last_name":"Reddy"
  },
  "data": [
    {
      "id": 1,
      "first_name": "George",
      "last_name": "Bluth",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]

    },
    {
      "id": 2,
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    },
    {
      "id": 3,
      "first_name": "Emma",
      "last_name": "Wong",
      "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg",
      "images": [
        {
          "id" : 122,
          "imageName": "377cjsahdh388.jpeg"
        },
        {
          "id" : 152,
          "imageName": "1743fsahdh388.jpeg"
        }
      ]
    }
  ]
}
```
-. 关于展示这里不是重点，我只是将最后获取的map列表的url，展示到了listview上，如下图所示
![效果.png](https://github.com/wozhizhizhi/flutter_jsonparser/blob/master/images/GIF.gif)

