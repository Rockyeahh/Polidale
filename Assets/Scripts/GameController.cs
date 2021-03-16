using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour
{

    public TextAsset inkJSON;
    private Story story;        // Loads the Ink.Runtime Story class that represents the complete Ink narrative.

    public Text textPrefab;
    public Text moneyTextPrefab;
    public Button buttonPrefab;

    void Start()
    {

        story = new Story(inkJSON.text);             // Creates a new Story object and then passing in a JSON string of text.

        Refresh();

    }

    private void Refresh()      // Basically redraws the UI.
    {
        // Clear the UI
        eraseUI();


        Text moneyText = Instantiate(moneyTextPrefab) as Text;
        Text storyText = Instantiate(textPrefab) as Text;

        // Try Text moneyText moneyTextPrefab
        // Then in the editor just have it be it's own thing that doesn't need to be spawned.
        // May need to be a whole other canvas with it attached that also uses the ink script? Fuck that'll probably fail.
        // Is it possible to work this shit without the vertical group crap?

        //moneyText.transform.SetParent(this.transform, false);

        // When it changes, call a lambda expression.
        // Pass it the name of the variable and the new value.
        story.ObserveVariable("starting_money", (variableName, newValue) =>
        {
            // Print the new value
            Debug.Log(newValue);
            //moneyText.text = newValue.ToString();
            moneyText.text = "Money: " + (int)newValue;
        });

        string text = LoadStoryChunk();

        List<string> tags = story.currentTags;  // ?

        if (tags.Count > 0)
        {
            text = "<b>" + tags[0] + "<b> - " + text;   // ?
        }

        storyText.text = text;
        storyText.transform.SetParent(this.transform, false);       // (this.transform, false);
        //moneyText.text = text;
        //moneyText.transform.SetParent(this.transform, false);

        foreach (Choice choice in story.currentChoices)
        {
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            choiceButton.transform.SetParent(this.transform, false);

            // Gets the text from the button prefab
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;

            // Set listener
            choiceButton.onClick.AddListener(delegate
            {
                chooseStoryChoice(choice);
            });

        }
    }

    // Clear out all of the UI, calling Destory() in reverse
    void eraseUI()
    {
        for (int i = 0; i < this.transform.childCount; i++)
        {
            Destroy(this.transform.GetChild(i).gameObject);
        }
    }

    // When we click the choice button, tell the story to choose that choice!
    void chooseStoryChoice(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        Refresh();
    }

    string LoadStoryChunk()
    {
        string text = "";

        if (story.canContinue)
        {
            text = story.ContinueMaximally();           // ContinueMaximally will load the next line into the next choice line or it runs out of content.
        }

        return text;
    }

}
