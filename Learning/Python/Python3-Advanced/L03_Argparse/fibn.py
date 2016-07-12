import argparse

def fib(n):
    a, b = 0, 1
    for i in range(n):
        a, b = b, a+b
    return a

def Main():
    parser = argparse.ArgumentParser()

    group = parser.add_mutually_exclusive_group()
    group.add_argument("-v", "--verbose", action="store_true")
    group.add_argument("-q", "--quiet", action="store_true")

    parser.add_argument("num", help="The fibonacci number you wish to calculate.", type=int)

    parser.add_argument("-o", "--output", help="Output result to a file.",\
                        action="store_true")

    args = parser.parse_args()

    result = fib(args.num)

    if args.verbose:
        print("The %sth fib number is %s." % (args.num, result))
    elif args.quiet:
        print(result)
    else:
        print("Fib(%s) = %s" % (args.num, result))
    

    if args.output:
        print("The result has been stored.")
        with open("fibonacci.txt", "a") as f:
            f.write(str(result)+"\n")


if __name__ == "__main__":
    Main()
