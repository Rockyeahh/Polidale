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
    public Button buttonPrefab;

    public int currentMoney;

    void Start()
    {

        story = new Story(inkJSON.text);             // Creates a new Story object and then passing in a JSON string of text.

        Refresh();

    }

    private void Refresh()      // Basically redraws the UI.
    {
        // Clear the UI
        eraseUI();

        Text storyText = Instantiate(textPrefab) as Text;

        story.ObserveVariable("starting_money", (variableName, newValue) =>
        {
            // Print the new value
            Debug.Log(newValue);
            currentMoney = (int)newValue;   //  This works. Don't fuck with it.
            //print("currentMoney " + currentMoney);
        });

        string text = LoadStoryChunk();

        List<string> tags = story.currentTags;  // ?

        if (tags.Count > 0)
        {
            text = "<b>" + tags[0] + "<b> - " + text;   // ?
        }

        storyText.text = text;
        storyText.transform.SetParent(this.transform, false);

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
