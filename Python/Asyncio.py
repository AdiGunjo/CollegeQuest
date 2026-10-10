import asyncio

async def fetch_data(name, delay):
    print(f"Fetching {name}...")
    await asyncio.sleep(delay)
    print(f"Got {name}")
    return f"{name}-data"

async def main():
    results = await asyncio.gather(
        fetch_data("A", 1),
        fetch_data("B", 2),
        fetch_data("C", 1.5),
    )
    print("All results:", results)

asyncio.run(main())