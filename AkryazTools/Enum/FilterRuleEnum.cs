using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkryazTools.Enum
{
    public enum FilterRuleEnum
    {
        [Description("Equals")]
        equals,

        [Description("Does Not Equals")]
        doesNotEqual,

        [Description("Is Greater Than")]
        isGreaterThan,

        [Description("Is Greater Than Equal To")]
        isGreaterThanOrEqualTo,

        [Description("Is Less Than")]
        isLessThan,

        [Description("Is Less Than Or Equal To")]
        isLessThanOrEqualTo,

        [Description("Contains")]
        contians,

        [Description("Does Not Contains")]
        doesNotContains,

        [Description("Begins With")]
        beginsWith,

        [Description("Does Not Begins With")]
        doesNotBeginsWith,

        [Description("Ends With")]
        endsWith,

        [Description("Does Not Ends WIth")]
        doesNotEndsWith,

        [Description("Has A Value")]
        hasAValue,

        [Description("Has No Value")]
        hasNoValue
    }
}
