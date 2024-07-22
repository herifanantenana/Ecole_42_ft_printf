/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_pf.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arakotom <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/10 15:47:41 by arakotom          #+#    #+#             */
/*   Updated: 2024/07/21 23:30:09 by arakotom         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void	ft_putstr_pf(int *count, const char *s)
{
	if (!s)
		ft_putstr_pf(count, "(null)");
	else
		while (*s)
			ft_putchar_pf(count, *(s++));
}
