using Microsoft.Extensions.Configuration;
using System;

namespace ContactsDataAccessLayer
{
    static class clsDataAccessSettings
    {
        public static string ConnectionString = new ConfigurationBuilder()
                        .AddJsonFile("appsettings.json")
                        .Build()
                        .GetSection("constr").Value;
    }
}
