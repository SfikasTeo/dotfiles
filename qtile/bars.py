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
from themes import nord as theme

# All the unicode symbols are from Nerd Fonts
bar1 = Bar([
    left_half_circle(theme['dark-blue']),
    Clock(
        background=theme['dark-blue'],
        foreground=theme['fg'],
        format='%Y-%m-%d %a %I:%M %p'),
    right_half_circle(theme['dark-blue']),
    Spacer(length=10),

    WindowName(
        foreground=theme['fg'],
        max_chars=30,
    ),

    Spacer(length=200),
    left_half_circle(theme['bg']),
    GroupBox(
        background=theme['bg'],
        fontsize = 26,
        disable_drag=True,
        active=theme['dark-blue'],
        inactive=theme['dark-gray'],
        highlight_method='line',
        block_highlight_text_color=theme['dark-cyan'],
        borderwidth=0,
        highlight_color=theme['bg'],
    ),
    right_half_circle(theme['bg']),
    Spacer(length=400),
    
    Systray(
        padding=15,
        background='#00000000'
    ),
    Spacer(length=10),

    left_half_circle(theme['blue']),
    CPU(
        background=theme['blue'],
        foreground=theme['fg'],
        format='{freq_current}GHz {load_percent}%'),
    right_half_circle(theme['blue']),
    Spacer(length=10),

    left_half_circle(theme['black']),
    Memory(
        background=theme['black'],
        foreground=theme['fg'],
        format='{MemUsed: .0f}{mm}'),
    right_half_circle(theme['black']),
    Spacer(length=10),

    left_half_circle(theme['dark-blue']),
    KeyboardLayout(
        background=theme['dark-blue'],
        foreground=theme['fg'],
        configured_keyboards=['us','gr']), 
    right_half_circle(theme['dark-blue']),
    Spacer(length=10),
],
    margin=[10, 10, 5, 10],
    background='#00000000',
    opacity=1,
    size=24,
)
