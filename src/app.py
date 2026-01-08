def somar(a: float, b: float) -> float:
    """
    Soma dois números e retorna o resultado.

    :param a: Primeiro número
    :param b: Segundo número
    :return: Soma de a e b
    :raises TypeError: Se os parâmetros não forem numéricos
    """

    if not isinstance(a, (int, float)) or not isinstance(b, (int, float)):
        raise TypeError("Os parâmetros devem ser números (int ou float)")

    return a + b
