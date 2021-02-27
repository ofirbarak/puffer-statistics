## Puffer-Statistics
cloned from puffer-statistics and changed to work with local run.

## How To Run?
`make && sudo ./scripts/private_data_release.sh`
* give premission rwx `chmod 755 -R puffer-data-release/`

## Components:
0. `{slow|all}_watch_times.txt` should exists in root folder (`puffer-data-release/`).
1. `private_data_release.sh` is the main script shell that runs all scripts.
2. `export_constants.sh` used in other programs.
3. `private_entrance.sh`:
    - `experiments/dump-puffer-experiments` connect to postgress db to get expt_settings
    - `influx_export` is done and feed to `influx_to_csv` in order to generate csv files.
    - errors are written to `logs` dir inside `puffer-data-release/${date}` folder.
4. `public_entrance.sh`:
     - generate stream stats and output plots.
