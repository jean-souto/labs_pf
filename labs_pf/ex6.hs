import System.IO

menu :: IO ()
menu = do
    putStrLn "Menu:"
    putStrLn "1. Salvar uma frase em um arquivo texto"
    putStrLn "2. Imprimir o conteúdo do arquivo texto"
    putStrLn "3. Sair"
    putStrLn "Escolha uma opção:"

main :: IO ()
main = do
    menu
    opcao <- getLine
    case opcao of
        "1" -> do
            putStrLn "Digite a frase a ser salva:"
            frase <- getLine
            writeFile "arquivo.txt" frase
            putStrLn "Frase salva no arquivo."
            main
        "2" -> do
            conteudo <- readFile "arquivo.txt"
            putStrLn "Conteúdo do arquivo:"
            putStrLn conteudo
            main
        "3" -> putStrLn "Saindo..."
        _ -> do
            putStrLn "Opção inválida, tente novamente."
            main
