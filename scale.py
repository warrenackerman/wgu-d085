#!/usr/bin/env python3
import sys, getopt

def main(argv):
   currusercount = ''
   try:
      opts, args = getopt.getopt(argv,"c:",["cuc="])
   except getopt.GetoptError:
      print 'scale.py -c <current_user_count>'
      sys.exit(2)
   for opt, arg in opts:
      if opt in ("-c", "--cuc"):
         current_user_count = int(arg)
   min_clusters = round(current_user_count / 30000)
   if min_clusters == int(0):
	min_clusters = 1
   print("Cluster count should be increased by ",min_clusters)

if __name__ == "__main__":
   main(sys.argv[1:])
