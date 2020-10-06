import sys
import subprocess

def count_first_char(words):
    """from a dict to count each number of first char

    :words: dict
    :returns: TODO

    """
    chars = {}
    for word, num in words.items():
        chars[word[0]] = 1 if word[0] not in chars.keys() else chars[word[0]]+1
    chars = sorted(chars.items(), key=lambda d: d[1], reverse=True)
    with open("first_char.txt", 'w') as f:
        for c in chars[:20]:
            f.write(f"{c[0]} {c[1]}\n")
    
    run_test(chars[:20])
    
def run_test(chars):
    ten_times = {}
    for i in range(10):
        subprocess.Popen("echo 3 | sudo tee /proc/sys/vm/drop_caches", shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        for c in chars:
            if i == 0:
                ten_times[c[0]] = []
            cmd = f"./test_common --bench CPY s {c[0]} | grep 'searched prefix ' | grep -Eo '[0-9]+\.[0-9]+'"
            output = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            data = output.communicate()[0].decode("utf-8").replace('\n', '')
            ten_times[c[0]].append(data)

    with open("test_first_char.txt", "w") as f:
        for c, v in ten_times.items():
            f.write(f"{c[0]}")
            for data in v:
                f.write(' ')
                f.write(data)
            f.write('\n')


def main():
    if len(sys.argv) < 2:
        print("argc must equal to 2")
        sys.exit()

    words = {}
    with open(sys.argv[1], 'r') as f:
        lines = f.readlines()
        for l in lines:
            for w in l.replace(' ', '').split(','):
                words[w] = 1 if w not in words.keys() else words[w]+1

    count_first_char(words)


if __name__ == "__main__":
    main()
