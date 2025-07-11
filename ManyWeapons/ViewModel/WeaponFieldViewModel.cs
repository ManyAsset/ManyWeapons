using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ManyWeapons.Base;

    namespace ManyWeapons.ViewModel
    {
        public class WeaponFieldViewModel : ViewModelBase
        {
            public string Key { get; set; }

            private string _value;
            public string Value
            {
                get => _value;
                set => SetProperty(ref _value, value);
            }
        }
    }
