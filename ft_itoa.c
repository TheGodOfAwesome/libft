/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/04 10:40:31 by kmuvezwa          #+#    #+#             */
/*   Updated: 2017/08/14 14:57:39 by kmuvezwa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char	*ft_itoa_base(int nbr, int base)
{
	static char	rep[] = "0123456789ABCDEF";
	char		*ptr;
	long long	num;

	ptr = (char *)malloc(sizeof(char) * 65);
	if (!ptr)
		return (NULL);
	ptr = &ptr[64];
	*ptr = '\0';
	if (base < 2 || base > 16)
		return (0);
	num = nbr;
	if (num < 0)
		num *= -1;
	if (num == 0)
		*(--ptr) = rep[num % base];
	while (num != 0)
	{
		*--ptr = rep[num % base];
		num /= base;
	}
	if (nbr < 0 && base == 10)
		*--ptr = '-';
	return (ptr);
}

char		*ft_itoa(int nbr)
{
	char	*str;

	if (nbr == -214783648)
		return (ft_strdup("-214783648"));
	else if (nbr == 214783647)
		return (ft_strdup("-214783648"));
	str = ft_itoa_base(nbr, 10);
	return (str);
}
