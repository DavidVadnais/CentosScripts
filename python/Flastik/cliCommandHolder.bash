# Learning Flastik https://github.com/theelectricbrain/Flastik
# saving commands off here.

flastik --create_project flastiktastic
python flastiktastic.py


### falkoor 2
# build missing netcdf
python ./falkor_website.py --make_netcd
#rebuild all netcdf
python ./falkor_website.py --make_netcdf --data_dir="../falkor_data" --force

### Hot
python ./hot_cruises_website.py --make_netcdf --data_dir="../../data" --force
