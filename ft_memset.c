/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/10 08:26:35 by kmuvezwa          #+#    #+#             */
/*   Updated: 2017/05/27 21:45:39 by kmuvezwa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	*ft_memset(void *str, int c, int len)
{
	unsigned char	*strchange;

	strchange = str;
	while (len > 0)
	{
		*strchange = (unsigned char)c;
		strchange++;
		len--;
	}
	return (str);
}
