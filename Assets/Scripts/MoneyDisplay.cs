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

    void Awake()
    {   //moneyText.text = ("203"); // This just made it permantly stay as 203.
        //moneyText.text.ToString();
    }

    void Start()
    {
        story = new Story(inkJSON.text);

        // DO I put this shit back in Start, rather than in Update or some other method?

        //Text moneyText = GetComponent<Text>();

        //GameController gameController = GameObject.Find("Canvas").GetComponent<GameController>(); // Use find with tag or something else that's faster and better than GameObject.Find
        //moneyText.text = gameController.currentMoney.ToString();
    }

    void Update()
    {
        Text moneyText = GetComponent<Text>();
        GameController gameController = GameObject.FindWithTag("Canvas").GetComponent<GameController>();
        moneyText.text = gameController.currentMoney.ToString();
    }
}
