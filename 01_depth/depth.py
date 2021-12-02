with open('input.txt', 'r') as input_file:
    depths = [int(l) for l in input_file]
windows = list(map(lambda x,y,z: x+y+z, depths[:-2], depths[1:-1], depths[2:]))
result = sum(map(lambda x,y: x-y<0, windows[:-1], windows[1:]))