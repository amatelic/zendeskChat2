export interface ZendeskChat2Plugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initialize(): Promise<void>;
  open(): Promise<void>;
  setVisitorInfo(): Promise<void>;
}
