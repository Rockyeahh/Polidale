using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MoneyDisplay : MonoBehaviour
{
    public TextAsset inkJSON;
    Text moneyText;
    GameController gameController;
    
    private Story story;

    void Start()
    {
        story = new Story(inkJSON.text);
    }

    void Update()
    {
        Text moneyText = GetComponent<Text>();
        GameController gameController = GameObject.FindWithTag("Canvas").GetComponent<GameController>();
        moneyText.text = gameController.currentMoney.ToString();
    }
}
