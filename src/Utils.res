type atom
type writer<'value> = 'value => unit
type callback<'value> = writer<'value> => @uncurry (unit => unit)
%%private(
  @set
  external _onMount: (Atom.t<'value, _, _>, callback<'update>) => unit = "onMount"
)

@ocaml.doc("
* Runs a function when the atom is mounted in React. Useful for setting and
* removing event listeners
")
let onMount = (atom: Atom.t<'value, 'writer, [> Atom.Permissions.w]>, mountFn) => {
  atom->_onMount(mountFn)
  atom
}
