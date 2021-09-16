import mido
from pynput import keyboard
import argparse
import signal
import sys

parser = argparse.ArgumentParser(description='Listen for MIDI events and simulate keyboard keys.')
parser.add_argument('-l', '--list', help='list MIDI devices', dest='list', action='store_true')
parser.add_argument('-c', '--config', help='Generate config', dest='config', action='store_true')
parser.add_argument('-d', '--device', help='MIDI device to listen to', dest='device', default=None, type=int)

args = parser.parse_args()

# TODO: Move to JSON file
keys = {
    48: 'q',
    50: 'w',
    52: 'e',
    53: 'r',
    55: 't',
    57: 'y',
    59: 'u',
    60: 'a',
    62: 's',
    64: 'd',
    65: 'f',
    67: 'g',
    69: 'h',
    71: 'j',
    72: 'z',
    74: 'x',
    76: 'c',
    77: 'v',
    79: 'b',
    81: 'n',
    83: 'm',
    84: '\\',
    49: '=',
    51: ']',
    54: ',',
    56: '.',
    58: '/',
    61: '6',
    63: '7',
    66: '8',
    68: '9',
    70: '0',
    73: '1',
    75: '2',
    78: '3',
    80: '4',
    82: '5',
}


def generate_config():
    ...


def main():
    if args.device is not None:
        kb_controller = keyboard.Controller()
        devices = mido.get_input_names()
        print(f'Listening on device {args.device}: {devices[args.device]}')
        print(f'Press Ctrl+C to stop listening')

        try:
            with mido.open_input(devices[args.device]) as port_in:
                for message in port_in:
                    try:
                        if message.type == 'note_on':
                            kb_controller.press(keys[message.note])
                        elif message.type == 'note_off':
                            kb_controller.release(keys[message.note])
                    except KeyError as ke:
                        print(f'-- {ke} ')
                        pass

        except KeyboardInterrupt:
            print('\nInterrupted by user.')

    elif args.list is not False:
        print(f'\nDevices found:\n--------------')
        for device in enumerate(mido.get_input_names()):
            print(device)
        print('--------------------------------------')
        print(f'Use the device number to start listening on this device (eg: py2midi.py -d 0)\n\n')

    elif args.config is not False:
        print('Generating default config.')
    else:
        print(f'No MIDI device selected. Please select a device.')


if __name__ == '__main__':
    main()
