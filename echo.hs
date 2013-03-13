-- Implement the echo command. 
-- Descr: Print all of the arguments (separated by space).
-- Extra points: '-n' flag to NOT print a newline at the end.
-- Shaun Meyer, Mar 2013
--

import System.Environment
  import System.Exit

  main1 = do { args <- getArgs
             ; putStr (unwords args)
             ; putStr "\n" 
             }
          
main2 = getArgs >>= (putStr . unwords) >> putStr "\n"

main = getArgs >>= putStr . (++"\n") . unwords
                         
