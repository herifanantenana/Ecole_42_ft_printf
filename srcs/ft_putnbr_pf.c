/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_pf.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arakotom <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/11 09:38:45 by arakotom          #+#    #+#             */
/*   Updated: 2024/07/21 23:30:06 by arakotom         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void	ft_putnbr_pf(int *count, int n)
{
	if (n == -2147483648)
	{
		ft_putstr_pf(count, "-2147483648");
		return ;
	}
	else if (n < 0)
		ft_putchar_pf(count, '-');
	ft_putnbr_base_pf(count, n, BASE_DEC);
}