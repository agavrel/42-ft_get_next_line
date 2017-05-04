/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: angavrel <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/30 11:57:02 by angavrel          #+#    #+#             */
/*   Updated: 2017/01/20 14:30:38 by angavrel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

int		main(int ac, char **av)
{
	int		fd;
	int		ret;
	char	*line;

	while (--ac)
	{
		av++;
		if ((fd = open(*av, O_RDONLY)) < 0)
			fd = 0;
		while ((ret = (get_next_line(fd, &line))) == 1)
		{
			ft_putendl(line);
			free(line);
			ft_putnbr(ret);
		}
		free(line);
		ft_putnbr(ret);
	}
	while (1);
	return (0);
}
