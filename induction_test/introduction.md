# 1. INDUCTION TEST
TABLE OF CONTENTS
- [1. INDUCTION TEST](#1-induction-test)
- [2. All you as an incoming Intern on probation need to know:](#2-all-you-as-an-incoming-intern-on-probation-need-to-know)
  - [2.1. What we expect](#21-what-we-expect)
  - [2.2. What you can expect from us](#22-what-you-can-expect-from-us)
  - [2.3. What you should record while performing tasks](#23-what-you-should-record-while-performing-tasks)
- [3. Some thoughts on teamwork, especially for new/inducted interns (by PMR):](#3-some-thoughts-on-teamwork-especially-for-newinducted-interns-by-pmr)
  - [3.1. Teamwork and Openness](#31-teamwork-and-openness)
  - [3.2. How we work.](#32-how-we-work)
  - [3.3. The wider picture](#33-the-wider-picture)
- [4. Assigned Tasks for the probation period](#4-assigned-tasks-for-the-probation-period)
  - [4.1. `pygetpapers`](#41-pygetpapers)
  - [4.2. `pyami`](#42-pyami)
- [5. Intern’s documentation](#5-interns-documentation)

# 2. All you as an incoming Intern on probation need to know: 
CEVOpen is an online platform for remote internships during the Pandemic, conducted at the interface of NIPGR, India and the University of Cambridge, U.K. 

We would like you to go through our main GitHub repository to familiarize yourself with the workflow, software, project, and so on. The [Wiki Home page](https://github.com/petermr/CEVOpen/wiki) is a good place to start. We are an open-source community. Please make sure to read the [Code of Conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/) and adhere to it. It basically says, "be respectable and helpful towards everyone".

For the first week or two, you will be assigned certain tasks which you should try completing independently. You should also document your steps as you go. This isn’t an exam.

The induction process is designed to find out whether you and we are a good fit for a longer internship period. 


## 2.1. What we expect
- Early warnings about other commitments like college, exam and so on. 
- Correct equipment at your end
- Clear writing and communication skills
- Prior experience with running software
- Interactions on a daily basis through stand-ups
## 2.2. What you can expect from us
- Collaborative workspace
- An opportunity to learn transferable skills
- An introduction to the open-source community
- Valued member of a research team 


## 2.3. What you should record while performing tasks
Recording what you perform is crucial to the project. Proper documentation helps reproduce the same task, debug errors and so on.
 
Here is a Wiki section on [how to report errors](https://github.com/petermr/CEVOpen/wiki#23-reporting-errors). Though it talks about error reporting, a lot of those principles are true for documentation as well. 

In short, when you are running our tools, make sure to note down:
- What commands you ran
- What you expected it to do 
- Results you get
- Errors, if any
Comments and feedback on how to improve our existing documentation would be useful. Avoid screenshots and always format your code in the code block using backticks.

# 3. Some thoughts on teamwork, especially for new/inducted interns (by PMR):
## 3.1. Teamwork and Openness
CEVOpen is based on Open Teamwork, which may be new to some of you. Unlike traditional taught courses , and some research projects, the goal is for the project members, as a whole, to build tools and do research. The approach is like being in a sports team , e.g. cricket or soccer, where success is contributed by the whole team working together, sometimes in new ways. So, sometimes we will all do repetitive tasks such as annotating documents because we need several independent annotations. Or different members will work on different dictionaries or document sections. If one of these is missing, the whole project will be lessened or delayed or give the wrong results. Therefore the priority is the success of the project.

But always because of the way we work we recognise and appreciate your individual contributions.

Openness may be new to you although it is becoming mainstream in many scientific organizations. It involves:
- transparency. What did you do? what are you thinking?
- sharing. If you have a solution, or a problem then by sharing it with others we all benefit.
- continued improvement. When you create something, if you share it immediately then you only have to create it once. It won't be perfect, but that's fine. The system is designed for continual improvement.
## 3.2. How we work.
Whenever possible we work in small teams and share daily. We ask for a daily "standup" where  you tell everyone (in a sentence, with links):
- what I did yesterday
- what I am going to do today
- what's blocking me (obstacles of any kind)  

This means that we can all connect with your activity and make comments or offer help. Any problem over a few hours can be discussed by the community as a whole. We recognise when things are going well and badly (they will do both!).

We discuss and plan using Github Wikis - essentially a communal notebook of "pages" where you can record and edit. We often create small communal miniprojects which act as targets and make sure we can integrate the work we have all done. We know that people come with a wide variety of knowledge and skills and through frequent communal discussion we adjust for this. There is a lot to learn and people do this at different rates.
## 3.3. The wider picture
The principles and practice of CEVOpen are increasingly important in modern science and industry, particularly software. Being a team player is highly valued. This is also true of science funding where governments are insisting that research is Open, and there are specific funded projects.
We also know from experience that Open Science is Better Science. The data and practice are continually refined from the start, the records are clearer (there is no "copying from private machine"), and the data are more validated.
And the world can watch and appreciate what we are doing. We make presentations whenever opportunities arise.

# 4. Assigned Tasks for the probation period
Assuming you have installed `git` and python, follow the [prerequisites](https://github.com/petermr/CEVOpen/wiki#3-prerequisites) section to install our tools. Please spend some time learning the workings of git if you aren’t well-versed in using it. 

Below are the details of your tasks. It mainly involves downloading, testing and using the tools. `pygetpapers` is beta quality, i.e. tested in many environments, so we expect it to work. `pyami` is alpha quality, more recent and might not work on all platforms. If you believe you have a problem, report it clearly and carefully so that we can reproduce it.

## 4.1. `pygetpapers` 
- Read the [official documentation](https://github.com/petermr/pygetpapers)
- [Install](https://github.com/petermr/pygetpapers#6-installation) the tool
- Run a query to download a 25 papers related to “Climate Change” (from EPMC repository) in XML and PDF formats
- Comment on downloaded papers 
   * Number of hits (not the number of hits you limited your query to)
   * Read the abstracts and see which ones are actually about the topic you chose.
- Document your steps coherently. Include the following:
   * Feedback on improving existing documentation
   * Brief account of your understanding of the software and the query you put in.



## 4.2. `pyami`
["Pyami (py4ami) is one of the main tools that we are using and developing. It is therefore partially documented (your role might be to test/document it). This task shows us how well and quickly you can understand it and whether you have the skills and aptitude to improve it and its use.]

-You can use any reasonable means to tackle these tasks, including asking other people. 
-You may post issues but make sure they are well explained

-py4ami can be found at https://github.com/petermr/py4ami. 
- Read Documentation
- Clone the Repo
     * You can do this using cmd, or GitHub’s front end
- Following are your tasks: 
  - How many current branches does the Repo have? When was the last merge?
  - How many open issues are there? (It is always a good practice to also read closed issues, that might answer any problems you encounter while doing the induction)
  - After downloading pyami, use “pyami –-help” (This will display commands used by software to users.) 
  - Read the commands and their description and briefly describe in layman’s language what each command does.
  - Find the config.ini file in the pyami folder, and make sure to update its settings to the latest version as in the GitHub documentation 
  - Can you run the unit tests? There are two methods (choose whichever works for you)
 -    Method 1. Use PyCharm (or other IDE):
      * Here you should right-click on the `test` directory and run the Unit tests
 -    Method 2. Use the commandline:
        * cd pyami
        * python3 -m test.test_wikidata
 
 (FYI: We have tested both of these methods and they worked. If you cannot run them try to identify/document what went wrong so we can help to correct it.)

- We are using py4ami to retrieve Wikidata entries. 
- We would like you to explore these interatively on wikidata.org:
- What does the method: test_wikidata_id_lookup(self) do?
  * _You may need to browse Wikidata.org and its api._

**Try to see how much you can understand what we are doing **

- Record your documentation in doc. Template Given below.
- Briefly describe your understanding of the software. 

## 4.3 (Older version of pyami - Optional)
- Read the [documentation](https://github.com/petermr/pyami). Might not be complete
- `git clone` the Repo since it's not packaged yet.
- You would have to ensure that you've also git cloned the following repositories
    - dictionary  https://github.com/petermr/dictionary.git
    - CEVOpen  https://github.com/petermr/CEVOpen.git
    - openVirus https://github.com/petermr/openvirus.git
- Make changes to the `config.ini` as outlined in the documentation which you can find, [here](https://github.com/petermr/pyami/blob/main/CONFIG.md) 
- Run `examples.py`
- Record your documentation in doc. Template below.
- Briefly describe your understanding of the software. 

# 5. Intern’s documentation
- Perform the above Tasks 4.1 and 4.2
- Please email the documentation to cbl@nipgr.ac.in
