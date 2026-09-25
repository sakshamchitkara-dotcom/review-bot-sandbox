export async function save(item: { id: number }): Promise<void> {
  await fetch("/items", { method: "POST", body: JSON.stringify(item) });
}

export function parse(raw: string): any {
  return JSON.parse(raw);
}

export async function saveAll(items: { id: number }[]) {
  for (const item of items) {
    if (item.id == 0) continue;
    save(item);
  }
}

export function renderNote(el: HTMLElement, note: string) {
  el.innerHTML = note;
}

export function runSnippet(code: string) {
  return eval(code);
}
