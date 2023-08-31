calcularSituacao :: Double -> Double -> Double -> String
calcularSituacao nota1 nota2 nota3 = 
    let media = (nota1 + nota2 + nota3) / 3
    in if media < 3
        then "Reprovado"
        else if media >= 3 && media < 7
            then "Exame Especial"
            else "Aprovado"

main :: IO ()
main = do
    putStrLn "Digite a primeira nota:"
    nota1 <- readLn
    putStrLn "Digite a segunda nota:"
    nota2 <- readLn
    putStrLn "Digite a terceira nota:"
    nota3 <- readLn

    let situacao = calcularSituacao nota1 nota2 nota3
    putStrLn $ "Situação do aluno: " ++ situacao
