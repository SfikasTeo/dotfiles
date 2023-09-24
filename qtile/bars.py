from libqtile.bar import Bar

from libqtile.widget.groupbox import GroupBox
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.windowname import WindowName
from libqtile.widget.cpu import CPU
from libqtile.widget.memory import Memory
from libqtile.widget.net import Net
from libqtile.widget.systray import Systray
from libqtile.widget.clock import Clock
from libqtile.widget.spacer import Spacer
from libqtile.widget.prompt import Prompt
from libqtile.widget.keyboardlayout import KeyboardLayout
from unicodes import left_half_circle, right_half_circle

from themes import base16_default_dark as theme

# All the unicode symbols are from Nerd Fonts
bar1 = Bar([
    left_half_circle(theme['black']),
    Clock(
        background=theme['black'],
        foreground=theme['white'],
        format='%Y-%m-%d %a %I:%M %p'),
    right_half_circle(theme['black']),
    Spacer(length=10),

    WindowName(
        foreground=theme['white'],
        max_chars=30,
    ),

    Spacer(),
    left_half_circle(theme['black']),
    GroupBox(
        background=theme['black'],
        fontsize = 24,
        disable_drag=True,
        highlight_color=theme['black'],
        highlight_method='line',
        block_highlight_text_color=theme['cyan'],
        active=theme['light-gray'],
        inactive=theme['gray'],
        borderwidth=0,
    ),
    right_half_circle(theme['black']),
    Spacer(),
    
    Systray(
        padding=15,
        background='#00000000'
    ),
    Spacer(length=10),

    left_half_circle(theme['black']),
    CPU(
        background=theme['black'],
        foreground=theme['white'],
        format='{freq_current}GHz {load_percent}%'),
    right_half_circle(theme['black']),
    Spacer(length=10),

    left_half_circle(theme['black']),
    Memory(
        background=theme['black'],
        foreground=theme['white'],
        format='{MemUsed: .0f}{mm}'),
    right_half_circle(theme['black']),
    Spacer(length=10),

    left_half_circle(theme['black']),
    KeyboardLayout(
        background=theme['black'],
        foreground=theme['white'],
        configured_keyboards=['us','gr']), 
    right_half_circle(theme['black']),
    Spacer(length=10),
],
    margin=[10, 10, 5, 10],
    background='#00000000',
    opacity=1,
    size=24,
)
