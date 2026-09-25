export async function save(item: { id: number }): Promise<void> {
  await fetch("/items", { method: "POST", body: JSON.stringify(item) });
}
