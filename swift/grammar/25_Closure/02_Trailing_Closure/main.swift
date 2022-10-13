let onAction = UIAlertAction(title: "On", style: 
 UIAlertAction.Style.default) { 
   ACTION in self.lampImg.image = self.imgOn
   self.isLampOn=true
}

let removeAction = UIAlertAction(title: "제거", style: 
  UIAlertAction.Style.destructive, handler: { 
    ACTION in self.lampImg.image = self.imgRemove
    self.isLampOn=false
})