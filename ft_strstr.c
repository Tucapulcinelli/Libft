/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: telias-p <telias-p@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/12 18:28:16 by telias-p          #+#    #+#             */
/*   Updated: 2021/03/12 19:38:47 by telias-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		check(int i, char *src, char *to_find);

char	*ft_strstr(char *str, char *to_find)
{
	int i;

	i = 0;
	if (to_find[i] == 0)
	{
		return (str);
	}
	while (str[i] != '\0')
	{
		if (str[i] == to_find[0])
		{
			if (check(i, str, to_find))
			{
				return (&str[i]);
			}
		}
		i++;
	}
	return (NULL);
}

int		check(int i, char *str, char *to_find)
{
	int j;

	j = 0;
	while (to_find[j] != '\0')
	{
		if (str[i + j] != to_find[j])
		{
			return (0);
		}
		j++;
	}
	return (1);
}
