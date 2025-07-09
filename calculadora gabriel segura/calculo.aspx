using System;

namespace ProyectoHtml
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(valor1.Text))
            {
                resultado.Text = "Ingrese el número 1.";
                return;
            }

            float n1 = float.Parse(valor1.Text);
            float n2 = 0;

            if (!raiz.Checked && !fact.Checked && !fibo.Checked)
            {
                if (string.IsNullOrEmpty(valor2.Text))
                {
                    resultado.Text = "Ingrese el número 2.";
                    return;
                }
                n2 = float.Parse(valor2.Text);
            }

            operaciones.num1 = n1;
            operaciones.num2 = n2;

            if (suma.Checked)
                operaciones.total = operaciones.num1 + operaciones.num2;
            else if (resta.Checked)
                operaciones.total = operaciones.num1 - operaciones.num2;
            else if (multi.Checked)
                operaciones.total = operaciones.num1 * operaciones.num2;
            else if (div.Checked)
                operaciones.total = operaciones.num2 != 0 ? operaciones.num1 / operaciones.num2 : 0;
            else if (cuadrado.Checked)
                operaciones.total = operaciones.num1 * operaciones.num1;
            else if (cubo.Checked)
                operaciones.total = operaciones.num1 * operaciones.num1 * operaciones.num1;
            else if (raiz.Checked)
                operaciones.total = (float)Math.Sqrt(operaciones.num1);
            else if (fact.Checked)
                operaciones.total = Factorial((int)operaciones.num1);
            else if (fibo.Checked)
                operaciones.total = Fibonacci((int)operaciones.num1);

            resultado.Text = "Resultado: " + operaciones.total.ToString();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            valor1.Text = "";
            valor2.Text = "";
            resultado.Text = "";
        }

        private int Factorial(int n)
        {
            int f = 1;
            for (int i = 1; i <= n; i++)
                f *= i;
            return f;
        }

        private int Fibonacci(int n)
        {
            if (n <= 1) return n;
            int a = 0, b = 1, temp;
            for (int i = 2; i <= n; i++)
            {
                temp = a + b;
                a = b;
                b = temp;
            }
            return b;
        }
    }
}
