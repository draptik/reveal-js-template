# Title of presentation

## Subtitle

Homer Simpson

1.1.2019

x---

## Second slide

foo

x--

### Vertical Slide

bar


x---

## Customized syntax highlighting 

```css
/* Custom font for code samples: Fira Code ;-) */
.reveal code {
  font-family: "Fira Code", "Lato", sans-serif;
}

/* Tweak size of text in pre (code) blocks */
.reveal pre {
    font-size: 0.49em; /* default value: 0.55em */
    line-height: 1.2em;  /* default value: 1.2em */
	display: inline-grid;
}

/* Increase area for code samples */
.reveal pre code {
    max-height: 700px;
}
```

x---

```javascript
let list = [1, 2, 3, 4, 5];
let result = list.map(x => x + 1); // oder eine "addOne" Funktion nehmen
console.log(result)
```

x---

```csharp
// expression
public int AddOne(int i) => i + 1;
```

<pre>
<code data-noescape data-trim class="lang-csharp hljs">
Func&lt;int, bool> isLargerThanFive = x => x > 5;
Func&lt;int, bool> isSmallerThenTen = x => x < 10;

<span class="mycodemark-always">Func&lt;int, bool> isBetweenFiveAndTen = x => 
    isLargerThanFive(x) && isSmallerThenTen(x);</span>

isBetweenFiveAndTen(7); // TRUE
</code>
</pre>

x---

<pre>
<code data-noescape data-trim class="lang-fsharp hljs">
let add1 x = x + 1
let times2 x = x * 2

let add1Times2 x = times2(add1 x) // ok...
<span class="mycodemark-always">
let add1Times2 = add1 >> times2   // ">>": composition operator
</span>
</code>
</pre>

<pre>
<code data-noescape data-trim class="lang-fsharp hljs">
open System
type Person = { FirstName: string; LastName: string }
let p = {FirstName = "Joe"; LastName = "Smith"}
let abbreviate (s: string) = s.[0..1].ToLower()
let abbreviateName p = abbreviate(p.FirstName) + abbreviate(p.LastName)
let appendDomain (s: string) = s + "@company.com"
<span class="mycodemark-always">
let emailFor = abbreviateName >> appendDomain
</span>
p |> emailFor // josm@company.com
</code>
</pre>

x---

## Font awesome icons...

- https://fontawesome.com/
- <i class="fa fa-twitter" aria-hidden="true"></i>&nbsp;@yourtwitterhandle
- <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;foo@bar.de
- <i class="fa fa-desktop" aria-hidden="true"></i>&nbsp;<i class="fa fa-laptop" aria-hidden="true"></i>&nbsp;<i class="fa fa-keyboard" aria-hidden="true"></i>&nbsp;<i class="fa fa-bluetooth" aria-hidden="true"></i>&nbsp;<i class="fa fa-bug" aria-hidden="true"></i>&nbsp;<i class="fa fa-cloud" aria-hidden="true"></i>&nbsp;<i class="fa fa-coffee" aria-hidden="true"></i>

x---

## Background images...

x---
<!-- .slide: data-background-image="resources/chaos.jpg" data-background-size="cover" -->

x---
<!-- .slide: data-background-image="resources/chaos.jpg" data-background-size="cover" data-state="dimmed"-->

## Using background images...

See `data-state` attribute for details...

```markdown
<!-- 
    .slide: 
    data-background-image="resources/chaos.jpg" 
    data-background-size="cover" 
    data-state="dimmed"
-->

## Using background images...
See `data-state` attribute for details...
```

```css
.dimmed .slide-background { opacity: 0.25 !important; }
.dimmed h2, .dimmed p { color: black }
.dimmed p { background-color: white; }
```

x---

## Logo in lower left corner

```css
/* Company logo ---------------------------------------- */
body {
    background-image: url(../resources/Softwerkskammer.png);
    background-size: 10%;
    background-repeat: no-repeat;
    background-position: 3% 96%;
}
```

x---

## Tagcloud plugin

x---

<section tagcloud large>
    <span tagcloud-weight="16">Unit </span>
    <span tagcloud-weight="44">Currying </span>
    <span tagcloud-weight="29">Higher Order Functions </span>
    <span tagcloud-weight="10">Event Sourcing/CQRS </span>
    <span tagcloud-weight="35">Applicatives </span>
    <span tagcloud-weight="13">Monad </span>
    <span tagcloud-weight="30">filter/map/reduce </span>
    <span tagcloud-weight="18">bind </span>
    <span tagcloud-weight="40">side effects </span>
    <span tagcloud-weight="22">purity </span>
    <span tagcloud-weight="39">honest functions </span>
    <span tagcloud-weight="19">Functor </span>
    <span tagcloud-weight="50">Immutability </span>
    <span tagcloud-weight="34">category theory </span>
    <span tagcloud-weight="15">Monoid </span>
    <span tagcloud-weight="29">tuples  </span> 
    <span tagcloud-weight="17">discriminated unions </span>
    <span tagcloud-weight="20">elevated types </span>
    <span tagcloud-weight="33">Typed FP </span>
    <span tagcloud-weight="28">Either </span>
    <span tagcloud-weight="34">Option </span>
    <span tagcloud-weight="14">arrow notation </span>
    <span tagcloud-weight="24">railway oriented programming </span>
    <span tagcloud-weight="26">Lambda </span>
    <span tagcloud-weight="12">Composition </span>
<section>
