import UIKit

class ViewController: UIViewController {
//#########################
    let textBlueButton = textButton(frame: .init(x: 50, y: 200, width: 100, height: 30))
    let textBlackButton = textButton(frame: .init(x: 180, y: 200, width: 200, height: 30))
    let textGrayButton = textButton(frame: .init(x: 50, y: 250, width: 100, height: 30))
    let textTrueBlueButton = textButton(frame: .init(x: 180, y: 250, width: 100, height: 30))
    let textFalseGrayButton = textButton(frame: .init(x: 300, y: 250, width: 100, height: 30))
    //#############
    let switchButton =  SwitchButton(frame: .init(x: 50, y: 300, width: 60, height: 30))
    let actionChip = textButton(frame: .init(x: 130, y: 300, width: 150, height: 30))
    let outlinedChip = textButton(frame: .init(x: 50, y: 350, width: 150, height: 30))
//########################
    let ImgCreateButton = ImageButton(frame: .init(x: 50, y: 400, width: 140, height: 50))
    let ImgActionButton = ImageButton(frame: .init(x: 50, y: 470, width: 160, height:30))
    let TwoImgButton = ImageButton(frame: .init(x: 50, y: 520, width: 180, height: 30))
    let ImgHeartButton = ImageButton(frame: .init(x: 250, y: 350, width: 35, height: 25))
//#
    let radioButton = RadioButton(frame: .init(x: 250, y: 420, width: 100, height: 30))
    
    let checkBox = CheckBox(frame: .init(x: 250, y: 470, width: 50, height: 50))
    
//#######################
    let phoneButton = circleButton(frame: .init(x: 50, y: 580, width: 80, height: 80))
    let addPeoButton = circleButton(frame: .init(x: 150, y: 580, width: 80, height: 80))
    let triangleButton = circleButton(frame: .init(x: 250, y: 580, width: 80, height: 80))
    let redPlusButton = circleButton(frame: .init(x: 50, y: 680, width: 80, height: 80))
    let blackPlusButton = circleButton(frame: .init(x: 150, y: 680, width: 80, height: 80))
    let phoneButton2 = circleButton(frame: .init(x: 250, y: 680, width: 80, height: 80))
    let locationButton = circleButton(frame: .init(x: 50, y: 780, width: 80, height: 80))
    let pencilButton = circleButton(frame: .init(x: 150, y: 780, width: 80, height: 80))
//#######################
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextButton()
        setupSwitchButton()
        setupImageButtonUI2()
        setupradioButton()
        setupCheckBox()
        setupCircleButton()
   }
    
    func setupTextButton() {
        view.addSubview(textBlueButton)
        textBlueButton.adtributte(background: .blue, title: "BUTTON", colorTitle: .white)
    //
        view.addSubview(textBlackButton)
        textBlackButton.adtributte(background: .black, title: "BUTTON", colorTitle: .white)
    //
        view.addSubview(textGrayButton)
        textGrayButton.adtributte(background: .systemGray5, title: "BUTTON", colorTitle: .systemGray3)
        view.addSubview(textTrueBlueButton)
        textTrueBlueButton.adtributte(background: .blue, title: "TRUE", colorTitle: .white)
        view.addSubview(textFalseGrayButton)
        textFalseGrayButton.adtributte(background: .systemGray5, title: "FALSE", colorTitle: .black)
        textFalseGrayButton.shadow()
        view.addSubview(actionChip)
        actionChip.adtributte(background: .systemGray3, title: "Action chip", colorTitle: .black)
        actionChip.cornerRadius()
        view.addSubview(outlinedChip)
        outlinedChip.adtributte(background: .white, title: "Outlined chip", colorTitle: .black)
        outlinedChip.border()
        outlinedChip.cornerRadius()
    }
    func setupImageButtonUI2() {
        view.addSubview(ImgCreateButton)
        ImgCreateButton.adtributte(background: .blue, title: "CREATE", colorTitle: .white, imageL: UIImage(systemName: "plus"),imageR: nil,cornerRadius: 20 )
        view.addSubview(ImgActionButton)
        ImgActionButton.adtributte(background: .systemGray3, title: "Action chip", colorTitle: .black, imageL: UIImage(systemName: "location.fill"),imageR: nil,cornerRadius: 13 )
        ImgActionButton.setImageColor(color: .darkGray)
        view.addSubview(TwoImgButton)
        TwoImgButton.adtributte(background: .systemGray3, title: "Action chip", colorTitle: .black, imageL: UIImage(systemName: "location.fill"),imageR: UIImage(systemName: "multiply.circle.fill"),cornerRadius: 13 )
        TwoImgButton.setImageColor(color: .darkGray)
        view.addSubview(ImgHeartButton)
        ImgHeartButton.adtributte(background: .white, title: "", colorTitle: .black, imageL: UIImage(systemName: "heart.fill"),imageR: nil,cornerRadius: 13 )
        ImgHeartButton.setImageColor(color: .darkGray)
    }
    func setupSwitchButton(){
        view.addSubview(switchButton)
    }
    func setupradioButton(){
        view.addSubview(radioButton)
    }
    func setupCheckBox(){
        view.addSubview(checkBox)
    }
    private func setupCircleButton() {
    
        view.addSubview(phoneButton)
        phoneButton.adtributte(background: .green, image: UIImage(systemName: "phone.fill"))
        view.addSubview(addPeoButton)
        addPeoButton.adtributte(background: .red, image:UIImage(systemName:"person.fill.badge.plus"))
        view.addSubview(triangleButton)
        triangleButton.adtributte(background: .blue, image: UIImage(systemName: "arrow.triangle.turn.up.right.diamond.fill"))
        view.addSubview(redPlusButton)
        redPlusButton.adtributte(background: .orange, image: UIImage(systemName: "plus"))
        view.addSubview(blackPlusButton)
        blackPlusButton.adtributte(background: .black, image: UIImage(systemName: "plus"))
        view.addSubview(phoneButton2)
        phoneButton2.adtributte(background: .orange, image: UIImage(systemName: "phone.down.fill"))
        view.addSubview(locationButton)
        locationButton.adtributte(background: .blue, image: UIImage(systemName:"location.north.fill"))
        view.addSubview(pencilButton)
        pencilButton.adtributte(background: .orange, image: UIImage(systemName: "pencil"))
   }


}
