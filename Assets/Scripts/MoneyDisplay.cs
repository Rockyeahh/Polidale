using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MoneyDisplay : MonoBehaviour
{
    public TextAsset inkJSON;
    //public Text moneyTextPrefab;
    Text moneyText;
    GameController gameController;
    
    private Story story;

    // Start is called before the first frame update
    void Start()
    {
        story = new Story(inkJSON.text);
        // Get gameobject component Text
        Text moneyText = GetComponent<Text>();
        GameController gameController = GetComponent<GameController>();
        moneyText.text = gameController.currentMoney.ToString();    // ERROR Not set to an instance of an object.
    }

    // Update is called once per frame
    void Update()
    {
        //Text moneyText = Instantiate(moneyTextPrefab) as Text;
        //Text moneyText = GetComponent<Text>();

        // story.ObserveVariable("starting_money", (variableName, newValue) =>
        //  {
        //Print the new value
        //     Debug.Log(newValue);
        //     moneyText.text = newValue.ToString();
        //     moneyText.text = "Money: " + (int)newValue;
        //  });

        // IGNORE ALL OF THE above.
        // Grab the currentMoney and ToString it to the moneyText componenent.

        //moneyText.text = gameController.currentMoney.ToString();
    }
}
