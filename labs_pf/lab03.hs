reverte :: IO ()
reverte = do
  putStrLn "Digite uma frase: "
  palavra <- getLine
  if palavra == (reverse palavra)
    then putStrLn "Eh palindromo"
    else putStrLn "Nao eh palindromo"

multi :: Float -> Float -> Float -> Float
multi x y z = x * y * z

numeros :: IO ()
numeros = do
  putStrLn "Digite tres numeros: "
  n1 <- getLine
  n2 <- getLine
  n3 <- getLine
  putStrLn (show (multi (read n1) (read n2) (read n3)))

celsius :: Double -> Double
celsius f = (5 / 9) * (f - 32)

converte :: IO ()
converte = do
  putStrLn "Digite a temperatura em F: "
  f <- getLine
  putStr "A temperatura em celsius eh: "
  putStrLn (show (celsius (read f)))