server {
    liten ${LITEN_PORT};

    localtion /static {
        alias /vol/static;
    }

    localtion / {
        uwsgi_pass              ${APP_HOST}:${APP_POST};
        include                 /etc/nginx/uwsgi_params;
        client_max_body_size    10M;
    }
}