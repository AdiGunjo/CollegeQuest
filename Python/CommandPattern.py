class Command:
    def execute(self): raise NotImplementedError
    def undo(self): raise NotImplementedError

class AddTextCommand(Command):
    def __init__(self, document, text):
        self.document = document
        self.text = text

    def execute(self):
        self.document.content += self.text

    def undo(self):
        self.document.content = self.document.content[: -len(self.text)]

class Document:
    def __init__(self):
        self.content = ""

class Editor:
    def __init__(self, document):
        self.document = document
        self.history = []

    def run(self, command):
        command.execute()
        self.history.append(command)

    def undo_last(self):
        if self.history:
            self.history.pop().undo()

doc = Document()
editor = Editor(doc)
editor.run(AddTextCommand(doc, "Hello "))
editor.run(AddTextCommand(doc, "World"))
print(doc.content)
editor.undo_last()
print(doc.content)