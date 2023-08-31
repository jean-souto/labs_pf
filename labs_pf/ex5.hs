classificarEleitor :: Int -> String
classificarEleitor idade
    | idade < 16 = "Não Eleitor"
    | idade >= 16 && idade < 18 = "Eleitor Facultativo"
    | idade >= 18 && idade <= 65 = "Eleitor Obrigatório"
    | idade > 65 = "Eleitor Facultativo"
    | otherwise = "Idade inválida"

main :: IO ()
main = do
    putStrLn "Digite a idade da pessoa:"
    idade <- readLn

    let classeEleitoral = classificarEleitor idade
    putStrLn $ "Classe eleitoral: " ++ classeEleitoral
