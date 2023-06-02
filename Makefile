# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nrahali <nrahali@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/06 23:22:47 by nrahali           #+#    #+#              #
#    Updated: 2023/02/09 01:12:15 by nrahali          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

build:
	cd /home/nrahali && mkdir -p data/Db_v
	cd /home/nrahali && mkdir -p data/Wp_v
	cd srcs && docker compose build
down:
	cd srcs && docker compose down
up:
	cd srcs && docker compose up 
clean:
	docker system prune -af
	cd /home/nrahali && rm -rf data
	docker volume rm srcs_Db srcs_Wp