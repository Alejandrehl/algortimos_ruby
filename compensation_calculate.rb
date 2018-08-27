#Función que recibe un salario y una cantidad de meses y calcula la indemnización a pagar.
def compensation salary, worked_months
    if worked_months >= 12
      worked_months >= 18 ? worked_time = (worked_months / 6) - 1 : worked_time = 1
      compensation_amount = salary * worked_time
      return compensation_amount
    else
      redirect_to root_url, notice: 'No hay beneficio'
    end
  end