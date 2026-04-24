#include <stdlib.h>



int main(int argc, char *argv[])
{
        system("echo setting layout latam");
        system("setxkbmap latam");
        system("echo setting xmodmap");
        system("xmodmap -e \"keycode 47 = semicolon colon semicolon colon\"");
        system("xmodmap -e \"keycode 34 = minus question slash underscore\"");
        system("nohup autokey");

        return 0;
}
