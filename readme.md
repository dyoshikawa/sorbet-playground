# 基本

`sig` を使うにはclassやmoduleの中で

```ruby
extend T::Sig
```

する必要がある。

# putsでエラー

```
main.rb:9: Method puts does not exist on MySorbet https://srb.help/7003
     9 |    puts message
            ^^^^^^^^^^^^
  Did you mean to `include Kernel` in this module?
    https://github.com/sorbet/sorbet/tree/21b05b4018be869ce282dd4e48e3046e8c8f93e8/rbi/core/kernel.rbi#L706: Did you mean: Kernel#puts?
     706 |  def puts(*arg0); end
```

[https://sorbet.org/docs/error-reference](https://sorbet.org/docs/error-reference)

```
include Kernel
```

が必要。