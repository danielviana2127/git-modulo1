import unittest

from app import somar


class TestSomar(unittest.TestCase):
    """Testes unitários para a função somar."""

    def test_somar_valores_validos(self):
        """Deve retornar a soma correta para números válidos."""
        self.assertEqual(somar(2, 3), 5)
        self.assertEqual(somar(-1, 1), 0)
        self.assertEqual(somar(0, 0), 0)
        self.assertEqual(somar(2.5, 2.5), 5.0)

    def test_somar_valores_invalidos(self):
        """Deve lançar TypeError para valores não numéricos."""
        with self.assertRaises(TypeError):
            somar("2", 3)

        with self.assertRaises(TypeError):
            somar(2, "3")

        with self.assertRaises(TypeError):
            somar(None, 1)


if __name__ == "__main__":
    unittest.main()
