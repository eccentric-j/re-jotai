@@ocaml.doc("
The main Provider \"wrapper\" for the whole application

```
module App = {
  @react.component
  let make = () =>
    <Jotai.Provider>
       ...
    </Jotai.Provider>
}
```
")

@module("jotai/esm") @react.component
external make: (~children: React.element) => React.element = "Provider"
