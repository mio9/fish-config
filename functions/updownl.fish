function updownl
    set -l service $argv[1]
    docker compose down && docker compose up -d && docker compose logs -f $service
end
