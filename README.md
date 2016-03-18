# MSMarksButtonList

![License MIT](https://img.shields.io/dub/l/vibe-d.svg)
![Pod version](http://img.shields.io/cocoapods/v/MSMarksButtonList.svg?style=flat)
![Platform info](http://img.shields.io/cocoapods/p/MSMarksButtonList.svg?style=flat)
[![Support](https://img.shields.io/badge/support-iOS7+-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

A group of buttons ,can be used to do a multiple choice component

<div align="left"><img src="https://github.com/LinkRober/MSMarksButtonList/blob/master/Example/ScreenShot/screenshot1.png" height="400px" /></div>

## Usage

Setting up padding:

```
MSButtonConfigurationModel *configuration = [[MSButtonConfigurationModel alloc] initWithEdgeMargin:12.0f
                                                                                             horMargin:10.0f
                                                                                             verMargin:10.0f
                                                                                          buttonHeight:32.0f
                                                                                         fromTopMargin:160];

```

Initialize buttonList:

```
MSMarksButtonList *buttonList = [[MSMarksButtonList alloc] initWithDataSource:[NSArray array]
                                                                       buttonType:MSButtonTypeOrderScore
                                                                    configuration:configuration];

```

>**Tips**</br>
I must convert your data model to button model(MSButtonModel),like example as.

## Requirements
* ios 7+
* ARC

## Installation

MSMarksButtonList is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

`pod "MSMarksButtonList"`


## Author

[LinkRober](http://www.jianshu.com/users/84ae3fbd22e1/latest_articles)

## License

MSMarksButtonList is available under the MIT license. See the LICENSE file for more info.
