export interface ZendeskChat2Plugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
