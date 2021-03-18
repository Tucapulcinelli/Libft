/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin_free.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: telias-p <telias-p@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/12 17:37:26 by telias-p          #+#    #+#             */
/*   Updated: 2021/03/12 18:55:29 by telias-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
** stjoin junta as strings fornecidas no argumento, e retorna uma string
** alocada new_str, depois libera mem com strdel, de dest
*/

char	*ft_strjoin_free(char *dest, char *src)
{
	char	*new_str;
	int		i;
	int		dest_len;
	int		src_len;

	if (!dest || !src)
		return (NULL);
	i = -1;
	dest_len = ft_strlen(dest);
	src_len = ft_strlen(src);
	new_str = malloc((dest_len + src_len + 1) * sizeof(*new_str));
	if (!new_str)
	{
		ft_strdel(&dest);
		return (NULL);
	}
	while (dest[++i])
		new_str[i] = dest[i];
	i = -1;
	while (src[++i])
		new_str[dest_len++] = src[i];
	new_str[dest_len] = '\0';
	ft_strdel(&dest);
	return (new_str);
}
