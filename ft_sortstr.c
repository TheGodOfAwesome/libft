/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sortstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: exam <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/08/09 11:10:11 by exam              #+#    #+#             */
/*   Updated: 2017/08/26 18:27:45 by kmuvezwa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_sortstr(char *tab)
{
	unsigned int		i;
	int					j;
	unsigned int		k;
	int					s;

	k = ft_strlen(tab) - 1;
	s = 1;
	while (s > 0)
	{
		i = 0;
		j = 1;
		s = 0;
		while (i < k)
		{
			if (ift_strcmp(tab[i], tab[j]) == 1)
			{
				ft_swap(&tab[i], &tab[j]);
				s++;
			}
			i++;
			j++;
		}
	}
}
