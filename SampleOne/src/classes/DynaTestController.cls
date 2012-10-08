public class DynaTestController {

    
    
     public Component.Apex.OutputPanel getComponentValue() {
        Component.Apex.OutputPanel dynOutPanel= new Component.Apex.OutputPanel();
        
        Component.Apex.OutputText outText = new Component.Apex.OutputText();
        outText.value = 'Some dynamic output text.';
           dynOutPanel.childComponents.add(outText);
        
        return dynOutPanel;
    }

}