import Foundation

func gerarSenha(comprimento: Int, incluirMaiusculas: Bool, incluirNumeros: Bool, incluirEspeciais: Bool) -> String {
    let letrasMinusculas = "abcdefghijklmnopqrstuvwxyz"
    let letrasMaiusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let numeros = "0123456789"
    let especiais = "!@#$%^&*()_+-=[]{}|;:,.<>?/~`"

    var caracteres = letrasMinusculas
    if incluirMaiusculas {
        caracteres += letrasMaiusculas
    }
    if incluirNumeros {
        caracteres += numeros
    }
    if incluirEspeciais {
        caracteres += especiais
    }

    return String((0..<comprimento).map { _ in caracteres.randomElement()! })
}

print("Digite o comprimento da senha:")
if let input = readLine(), let comprimento = Int(input) {
    print("Incluir letras maiúsculas? (s/n):")
    let incluirMaiusculas = readLine()?.lowercased() == "s"
    print("Incluir números? (s/n):")
    let incluirNumeros = readLine()?.lowercased() == "s"
    print("Incluir caracteres especiais? (s/n):")
    let incluirEspeciais = readLine()?.lowercased() == "s"

    let senha = gerarSenha(comprimento: comprimento, incluirMaiusculas: incluirMaiusculas, incluirNumeros: incluirNumeros, incluirEspeciais: incluirEspeciais)
    print("Sua senha gerada é: \(senha)")
}
