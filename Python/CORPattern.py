class SupportHandler:
    def __init__(self, next_handler=None):
        self.next_handler = next_handler

    def handle(self, ticket_level):
        if self.next_handler:
            return self.next_handler.handle(ticket_level)
        return "Unhandled ticket"

class Level1Support(SupportHandler):
    def handle(self, ticket_level):
        if ticket_level == 1:
            return "Resolved by Level 1"
        return super().handle(ticket_level)

class Level2Support(SupportHandler):
    def handle(self, ticket_level):
        if ticket_level == 2:
            return "Resolved by Level 2"
        return super().handle(ticket_level)

class Level3Support(SupportHandler):
    def handle(self, ticket_level):
        if ticket_level == 3:
            return "Resolved by Level 3"
        return super().handle(ticket_level)

chain = Level1Support(Level2Support(Level3Support()))
for level in [1, 2, 3, 5]:
    print(f"Ticket level {level}: {chain.handle(level)}")