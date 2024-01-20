t
~/D/c/passwordManager ❯❯❯ git status                                    feature
On branch feature
nothing to commit, working tree clean
~/D/c/passwordManager ❯❯❯ git log                                       feature
commit 167988c451aa260b27c4aba58609c22ee02a710c (HEAD -> feature)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 17:01:00 2024 -0500

    入力値をテキストファイルに保存

commit e748a7faaa1d229b0571f9f4e9d690544da35070
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 15:52:53 2024 -0500

    それぞれの3つの値を入力させる箇所まで実装

commit 0bd4012a25931411f5f8a736845e9a02ac8a4b15 (origin/feature)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 07:55:33 2024 -0500

    ファイルに保存する情報を入力

commit 69d2ff8ab7812ee25d7cecf6b3aa39711e552ca6 (origin/master, master)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Thu Jan 18 20:46:47 2024 -0500

    change contents
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯ git push origin feature                       feature
Enter passphrase for key '/Users/cj/.ssh/id_rsa': 
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
~/D/c/passwordManager ❯❯❯ ls -al ~/..ssh                          ✘ 128 feature
ls: /Users/cj/..ssh: No such file or directory
~/D/c/passwordManager ❯❯❯ ls -al ~/.ssh                             ✘ 1 feature
total 56
drwx------   9 cj  staff   288 Jan  8 15:19 .
drwxr-x---+ 44 cj  staff  1408 Jan 19 17:22 ..
-rw-r--r--   1 cj  staff   144 Jan  7 20:40 config
-rw-------   1 cj  staff   399 Jan  7 20:37 github
-rw-r--r--   1 cj  staff    93 Jan  7 20:37 github.pub
-rw-------   1 cj  staff  2655 Jan 18 20:17 id_rsa
-rw-r--r--   1 cj  staff   577 Jan 18 20:17 id_rsa.pub
-rw-------   1 cj  staff  1680 Jan  8 15:19 known_hosts
-rw-------   1 cj  staff   928 Jan  8 15:18 known_hosts.old
~/D/c/passwordManager ❯❯❯ cd                                            feature
~ ❯❯❯ 
~ ❯❯❯ 
~ ❯❯❯ cd ~/.ssh
~/.ssh ❯❯❯ ls
config          github.pub      id_rsa.pub      known_hosts.old
github          id_rsa          known_hosts
~/.ssh ❯❯❯ ssh-keygen -t rsa -C "sigehiro.0728@gmail.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/cj/.ssh/id_rsa): sige1397
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in sige1397
Your public key has been saved in sige1397.pub
The key fingerprint is:
SHA256:2G4WmxkVWCSJ6v3KC9hBFwJoEWrIvwlS22rFc+n0cuY sigehiro.0728@gmail.com
The key's randomart image is:
+---[RSA 3072]----+
| ++.. ...=+      |
|=.   ...o. .     |
|+o. ...   .      |
|...=.. + .       |
|...o*.= S        |
|. .=+*.o *       |
|  +oo o.@        |
| .   o B.        |
|      +oE        |
+----[SHA256]-----+
~/.ssh ❯❯❯ ssh-add ~/.ssh/id_rsa

Enter passphrase for /Users/cj/.ssh/id_rsa: 
Identity added: /Users/cj/.ssh/id_rsa (sigehiro.0728@gmail.com)
~/.ssh ❯❯❯ pbcopy < ~/.ssh/id_rsa.pub

~/.ssh ❯❯❯ ssh -T git@github.com


Hi sigehiro! You've successfully authenticated, but GitHub does not provide shell access.
~/.ssh ❯❯❯ cd                                                              ✘ 1 
~ ❯❯❯ cd ?/User/
zsh: no matches found: ?/User/
~ ❯❯❯ cd /Users/cj/Documents/class/passwordManager                         ✘ 1 
~/D/c/passwordManager ❯❯❯ git status                                    feature
On branch feature
nothing to commit, working tree clean
~/D/c/passwordManager ❯❯❯ git push origin feature                       feature
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 12 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (7/7), 1.03 KiB | 1.03 MiB/s, done.
Total 7 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), done.
To github.com:sigehiro/AP_passwordManager.git
   0bd4012..167988c  feature -> feature
~/D/c/passwordManager ❯❯❯ \                                             feature
>         
~/D/c/passwordManager ❯❯❯                                         ✘ 130 feature
~/D/c/passwordManager ❯❯❯ ls                                      ✘ 130 feature
README.md          pass.sh            saved_password.txt
~/D/c/passwordManager ❯❯❯ mv pass.sh password_manager.sh                feature
~/D/c/passwordManager ❯❯❯ ls                                        feature ✖ ◼
README.md           password_manager.sh saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .                                 feature ✖ ◼
~/D/c/passwordManager ❯❯❯ git commit -m "ファイル名の変更"            feature ➜
[feature 0ac3ebd] ファイル名の変更
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename pass.sh => password_manager.sh (100%)
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh                     feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 23: syntax error near unexpected token `fi'
./password_manager.sh: line 23: `fi'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 26: syntax error: unexpected end of file
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif ["$choice"=="Exit"];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice"=="Exit" ];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice" == "Exit" ];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice" == "Exit" ]; then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password 
enter service name:if 文でサービス名出力できた
enter user name: user1
enter password: user1
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ls            feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .     feature ✱
~/D/c/passwordManager ❯❯❯ git commit -m "if文で３ パターンの分岐を記載"
[feature 26e2e6c] if文で３パターンの分岐を記載
 2 files changed, 30 insertions(+), 8 deletions(-)
~/D/c/passwordManager ❯❯❯ git push origin feature
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 12 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.13 KiB | 1.13 MiB/s, done.
Total 6 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:sigehiro/AP_passwordManager.git
   167988c..26e2e6c  feature -> feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ vi ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.txt
zsh: no such file or directory: ./password_manager.txt
~/D/c/passwordManager ❯❯❯ ./saved_password.txt
zsh: permission denied: ./saved_password.txt
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ vi ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:ささささ
enter user name: sasasa
enter password: 333333
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ls            feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vi ./saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .     feature ✱
~/D/c/passwordManager ❯❯❯ git commit    feature ✚
hint: Waiting for your editor to close the file...[feature f13b4f0] feature テキストファイルへの保存方法変更。 サービス名：ユーザー名：パスワード の順に並べ替え。
 2 files changed, 3 insertions(+), 7 deletions(-)
~/D/c/passwordManager ❯❯❯ git push origin feature
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 12 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 655 bytes | 655.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:sigehiro/AP_passwordManager.git
   26e2e6c..f13b4f0  feature -> feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:444
enter user name: 555
enter password: 666
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get PassWord
入力が間違えています。Add Password/Get Password/Exit から入力してください。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:ああああ
enter user name: いいいい
enter password: おおおおお
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:思いデ     
enter user name: たくさん
enter password: 88888
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:service_nameああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：

入力が間違えています。Add Password/Get Password/Exit から入力してください。
~/D/c/passwordManager ❯❯❯ ls        ✘ 1 feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt          feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:4444
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt          feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:ああああ
enter user name: １１１１
enter password: aaaa
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ ks                                feature ✱
zsh: correct ks to ls [nyae]? n
zsh: command not found: ks
~/D/c/passwordManager ❯❯❯ ls                          ✘ 127 feature ✱
README.md           password_manager.sh saved_password.txt
~/D/c/passwordManager ❯❯❯ vi ./saved_password.txt           feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
ユーザー名: １１１１, Password: 
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ vi ./saved_password.txt       ✘ 1 feature ✱
~/D/c/passwordManager ❯❯❯                                   feature ✱
~/D/c/passwordManager ❯❯❯                                   feature ✱
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
ユーザー名: １１１１
Password : 
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:1111
enter user name: 2222
enter password: 333333
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get password
入力が間違えています。Add Password/Get Password/Exit から入力してください。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh         ✘ 1 feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:1111
ユーザー名: 2222
Password : 
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
ユーザー名: １１１１
Password : aaaa
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:1111
ユーザー名: 2222
Password : 333333
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:service canada
enter user name: omiya
enter password:  sigehiro
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:service canada
ユーザー名: omiya
Password : sigehiro
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:1111
ユーザー名: 2222
Password : 333333
~/D/c/passwordManager ❯❯❯ git add .        feature ✱
~/D/c/passwordManager ❯❯❯ git commit -m "GetPassword の実装。"
[feature 9088f6f] GetPasswordの実装。
 2 files changed, 20 insertions(+), 14 deletions(-)
~/D/c/passwordManager ❯❯❯ git push origin feature
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 12 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 831 bytes | 831.00 KiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:sigehiro/AP_passwordManager.git
   f13b4f0..9088f6f  feature -> feature
~/D/c/passwordManager ❯❯❯ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
zsh: no such file or directory: ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ls            ✘ 127 master
README.md pass.sh
~/D/c/passwordManager ❯❯❯ cd  ../             master
~/D/class ❯❯❯ ls
passwordManager webProgramming
~/D/class ❯❯❯ cd passwordManager
~/D/c/passwordManager ❯❯❯ ls                  master
README.md pass.sh
~/D/c/passwordManager ❯❯❯ git checkout feature
Switched to branch 'feature'
~/D/c/passwordManager ❯❯❯ ls                 feature
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
~/D/c/passwordManager ❯❯❯ git pull origin feature
From github.com:sigehiro/AP_passwordManager
 * branch            feature    -> FETCH_HEAD
Updating 69d2ff8..9088f6f
Fast-forward
 pass.sh             |  2 --
 password_manager.sh | 44 ++++++++++++++++++++++++++
 saved_password.txt  |  3 ++
 3 files changed, 47 insertions(+), 2 deletions(-)
 delete mode 100644 pass.sh
 create mode 100755 password_manager.sh
 create mode 100644 saved_password.txt
~/D/c/passwordManager ❯❯❯ ls                master ⬆
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯  ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:1111
ユーザー名: 2222
Password : 333333
~/D/c/passwordManager ❯❯❯ vim README.md     master ⬆
~/D/c/passwordManager ❯❯❯ ./README.md     master ⬆ ✱
zsh: permission denied: ./README.md
~/D/c/passwordManager ❯❯❯ chmod +x README.md
~/D/c/passwordManager ❯❯❯ ./README.md     master ⬆ ✱
./README.md: line 1: syntax error near unexpected token `newline'
./README.md: line 1: `<h1>パスワードマネージャー</h1>'
~/D/c/passwordManager ❯❯❯ vim README.md
~/D/c/passwordManager ❯❯❯ ./README.md     master ⬆ ✱
./README.md: line 2: syntax error near unexpected token `newline'
./README.md: line 2: `<p>シェルスクリプトでパスワードマネージャーを作成</p>'
~/D/c/passwordManager ❯❯❯ vim README.md
~/D/c/passwordManager ❯❯❯ ./README.md     master ⬆ ✱
./README.md: line 2: シェルスクリプトでパスワードマネージャーを作成: command not found
./README.md: line 3: 今回学びたいスキル: command not found
./README.md: line 4: -: command not found
./README.md: line 5: -: command not found
./README.md: line 6: -: command not found
~/D/c/passwordManager ❯❯❯ vim README.md
~/D/c/passwordManager ❯❯❯ ./README.md     master ⬆ ✱
./README.md: line 2: シェルスクリプトでパスワードマネージャーを作成: command not found
./README.md: line 3: 今回学びたいスキル: command not found
./README.md: line 5: -: command not found
./README.md: line 6: -: command not found
./README.md: line 7: -: command not found
~/D/c/passwordManager ❯❯❯ git add .
~/D/c/passwordManager ❯❯❯ git commit -m "READM.mdの加筆E"
[master 28f2540] READM.mdの加筆E
 1 file changed, 8 insertions(+)
 mode change 100644 => 100755 README.md
~/D/c/passwordManager ❯❯❯ git push origin master
To github.com:sigehiro/AP_passwordManager.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'github.com:sigehiro/AP_passwordManager.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
~/D/c/passwordManager ❯❯❯ vim README.md

# パスワードマネージャー 
シェルスクリプトでパスワードマネージャーを作成
今回学びたいスキル

- シェルスクリプトの基本の書き方
- Githubの使い方
- Vimの基本的な使い方

~
~
~
~
~
~
~
~
~
~
~
~
README.md [+]                      1,1            All
-- INSERT --
Last login: Fri Jan 19 17:16:02 on ttys000
~ ❯❯❯ cd /Users/cj/Documents/class/passwordManager
~/D/c/passwordManager ❯❯❯ ls                                            feature
README.md          pass.sh            saved_password.txt
~/D/c/passwordManager ❯❯❯ git status                                    feature
On branch feature
nothing to commit, working tree clean
~/D/c/passwordManager ❯❯❯ git log                                       feature
commit 167988c451aa260b27c4aba58609c22ee02a710c (HEAD -> feature)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 17:01:00 2024 -0500

    入力値をテキストファイルに保存

commit e748a7faaa1d229b0571f9f4e9d690544da35070
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 15:52:53 2024 -0500

    それぞれの3つの値を入力させる箇所まで実装

commit 0bd4012a25931411f5f8a736845e9a02ac8a4b15 (origin/feature)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Fri Jan 19 07:55:33 2024 -0500

    ファイルに保存する情報を入力

commit 69d2ff8ab7812ee25d7cecf6b3aa39711e552ca6 (origin/master, master)
Author: sigehiro <sigehiro.0728@gmail.com>
Date:   Thu Jan 18 20:46:47 2024 -0500

    change contents
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯                                               feature
~/D/c/passwordManager ❯❯❯ git push origin feature                       feature
Enter passphrase for key '/Users/cj/.ssh/id_rsa': 
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
~/D/c/passwordManager ❯❯❯ ls -al ~/..ssh                          ✘ 128 feature
ls: /Users/cj/..ssh: No such file or directory
~/D/c/passwordManager ❯❯❯ ls -al ~/.ssh                             ✘ 1 feature
total 56
drwx------   9 cj  staff   288 Jan  8 15:19 .
drwxr-x---+ 44 cj  staff  1408 Jan 19 17:22 ..
-rw-r--r--   1 cj  staff   144 Jan  7 20:40 config
-rw-------   1 cj  staff   399 Jan  7 20:37 github
-rw-r--r--   1 cj  staff    93 Jan  7 20:37 github.pub
-rw-------   1 cj  staff  2655 Jan 18 20:17 id_rsa
-rw-r--r--   1 cj  staff   577 Jan 18 20:17 id_rsa.pub
-rw-------   1 cj  staff  1680 Jan  8 15:19 known_hosts
-rw-------   1 cj  staff   928 Jan  8 15:18 known_hosts.old
~/D/c/passwordManager ❯❯❯ cd                                            feature
~ ❯❯❯ 
~ ❯❯❯ 
~ ❯❯❯ cd ~/.ssh
~/.ssh ❯❯❯ ls
config          github.pub      id_rsa.pub      known_hosts.old
github          id_rsa          known_hosts
~/.ssh ❯❯❯ ssh-keygen -t rsa -C "sigehiro.0728@gmail.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/cj/.ssh/id_rsa): sige1397
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in sige1397
Your public key has been saved in sige1397.pub
The key fingerprint is:
SHA256:2G4WmxkVWCSJ6v3KC9hBFwJoEWrIvwlS22rFc+n0cuY sigehiro.0728@gmail.com
The key's randomart image is:
+---[RSA 3072]----+
| ++.. ...=+      |
|=.   ...o. .     |
|+o. ...   .      |
|...=.. + .       |
|...o*.= S        |
|. .=+*.o *       |
|  +oo o.@        |
| .   o B.        |
|      +oE        |
+----[SHA256]-----+
~/.ssh ❯❯❯ ssh-add ~/.ssh/id_rsa

Enter passphrase for /Users/cj/.ssh/id_rsa: 
Identity added: /Users/cj/.ssh/id_rsa (sigehiro.0728@gmail.com)
~/.ssh ❯❯❯ pbcopy < ~/.ssh/id_rsa.pub

~/.ssh ❯❯❯ ssh -T git@github.com


Hi sigehiro! You've successfully authenticated, but GitHub does not provide shell access.
~/.ssh ❯❯❯ cd                                                              ✘ 1 
~ ❯❯❯ cd ?/User/
zsh: no matches found: ?/User/
~ ❯❯❯ cd /Users/cj/Documents/class/passwordManager                         ✘ 1 
~/D/c/passwordManager ❯❯❯ git status                                    feature
On branch feature
nothing to commit, working tree clean
~/D/c/passwordManager ❯❯❯ git push origin feature                       feature
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 12 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (7/7), 1.03 KiB | 1.03 MiB/s, done.
Total 7 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), done.
To github.com:sigehiro/AP_passwordManager.git
   0bd4012..167988c  feature -> feature
~/D/c/passwordManager ❯❯❯ \                                             feature
>         
~/D/c/passwordManager ❯❯❯                                         ✘ 130 feature
~/D/c/passwordManager ❯❯❯ ls                                      ✘ 130 feature
README.md          pass.sh            saved_password.txt
~/D/c/passwordManager ❯❯❯ mv pass.sh password_manager.sh                feature
~/D/c/passwordManager ❯❯❯ ls                                        feature ✖ ◼
README.md           password_manager.sh saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .                                 feature ✖ ◼
~/D/c/passwordManager ❯❯❯ git commit -m "ファイル名の変更"            feature ➜
[feature 0ac3ebd] ファイル名の変更
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename pass.sh => password_manager.sh (100%)
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh                     feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 23: syntax error near unexpected token `fi'
./password_manager.sh: line 23: `fi'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 26: syntax error: unexpected end of file
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif ["$choice"=="Exit"];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice"=="Exit" ];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice" == "Exit" ];then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
./password_manager.sh: line 25: syntax error near unexpected token `elif'
./password_manager.sh: line 25: `elif [ "$choice" == "Exit" ]; then'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password 
enter service name:if 文でサービス名出力できた
enter user name: user1
enter password: user1
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ls            feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .     feature ✱
~/D/c/passwordManager ❯❯❯ git commit -m "if文で３ パターンの分岐を記載"
[feature 26e2e6c] if文で３パターンの分岐を記載
 2 files changed, 30 insertions(+), 8 deletions(-)
~/D/c/passwordManager ❯❯❯ git push origin feature
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 12 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.13 KiB | 1.13 MiB/s, done.
Total 6 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:sigehiro/AP_passwordManager.git
   167988c..26e2e6c  feature -> feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ vi ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.txt
zsh: no such file or directory: ./password_manager.txt
~/D/c/passwordManager ❯❯❯ ./saved_password.txt
zsh: permission denied: ./saved_password.txt
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ vi ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:ささささ
enter user name: sasasa
enter password: 333333
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ls            feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vi ./saved_password.txt
~/D/c/passwordManager ❯❯❯ git add .     feature ✱
~/D/c/passwordManager ❯❯❯ git commit    feature ✚
hint: Waiting for your editor to close the ;wq
file...[feature f13b4f0] feature テキストファイルへの保存方法変更。 サービス名：ユーザー名：パスワード の順に並べ替え。
 2 files changed, 3 insertions(+), 7 deletions(-)
~/D/c/passwordManager ❯❯❯ git push origin feature
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 12 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 655 bytes | 655.00 KiB/s, done.
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To github.com:sigehiro/AP_passwordManager.git
   26e2e6c..f13b4f0  feature -> feature
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:444
enter user name: 555
enter password: 666
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Exit
Thank you!
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get PassWord
入力が間違えています。Add Password/Get Password/Exit から入力してください。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:ああああ
enter user name: いいいい
enter password: おおおおお
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Add Password
enter service name:思いデ     
enter user name: たくさん
enter password: 88888
パスワードの追加は成功しました。
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
./password_manager.sh: line 3: file_path: command not found
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
awk: syntax error at source line 1
 context is
	 >>> {? <<< 
awk: illegal statement at source line 1
awk: illegal statement at source line 1
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:service_nameああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：

入力が間違えています。Add Password/Get Password/Exit から入力してください。
~/D/c/passwordManager ❯❯❯ ls        ✘ 1 feature ✱
README.md           saved_password.txt
password_manager.sh
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 22: IFS: command not found
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
./password_manager.sh: line 30: [: missing `]'
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:ああああ
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt          feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：
Get Password
enter service name:4444
そのサービスは保存されていません
~/D/c/passwordManager ❯❯❯ vim ./password_manager.sh         feature ✱
~/D/c/passwordManager ❯❯❯ vim ./saved_password.txt          feature ✱
~/D/c/passwordManager ❯❯❯ ./password_manager.sh             feature ✱
PassWordマネージャーへ
# パスワードマネージャー 
シェルスクリプトでパスワードマネージャーを作成
今回学びたいスキル

- シェルスクリプトの基本の書き方
- Githubの使い方
- Vimの基本的な使い方
