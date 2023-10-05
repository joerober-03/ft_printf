/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joerober <joerober@student.42lausan>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/11 09:52:20 by joerober          #+#    #+#             */
/*   Updated: 2022/10/24 09:49:02 by joerober         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	unsigned char	*conv;
	size_t			i;

	conv = (unsigned char *) b;
	i = 0;
	while (i < len)
	{
		conv[i] = c;
		i++;
	}
	return (b);
}
