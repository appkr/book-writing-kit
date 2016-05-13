# Chapter 2. An exhibit of Markdown

## Unordered list

-   An item
-   Another item[^1]
-   Yet another item
-   And there's more...

## Fenced code block

```php
// code 33-1 app/Http/Middleware/AuthenticateOnceWithBasicAuth.php

public function handle($request, Closure $next)
{
    return auth()->onceBasic() ?: $next($request);
}
```

## Blockquote

> **Note** 
>
> All policies are resolved via the Laravel service container, meaning you may type-hint any needed dependencies in the policy's constructor and they will be automatically injected.

---

[^1]: Another Item_ http://blog.appkr.kr 