# vim-smilebasic3-syntax

[SmileBASIC](http://smilebasic.com/) ver3 syntax highlighting for Vim.


## Known Issues

-   END命令でインデントが減る

    行頭(空白を含む)にENDが来た場合、DEFの終わりと判定されるためインデントが減る。

    END命令とDEF終わりのENDの区別をつけるためにはコードを最初から追いかける必要があるため、現状では対応が難しい。

    現状、制御構文のうち最初に出てきたものにしか反応しないので下のようにすると回避できる。

        WHILE TRUE
          IF 1 THEN END
        WEND

-   1行IFの中に完結したIF文があるとIFが途中で途切れる

        IF A THEN IF B THEN ENDIF ELSE ?"NG"

    上のプログラムは行末までIFが続くはずだけど、途中のENDIFで止まってしまうため、ELSEがエラー表示になってしまう。

-   READMEが日本語

    :p


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
