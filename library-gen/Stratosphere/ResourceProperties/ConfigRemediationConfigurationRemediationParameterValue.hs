
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html

module Stratosphere.ResourceProperties.ConfigRemediationConfigurationRemediationParameterValue where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigRemediationConfigurationResourceValue
import Stratosphere.ResourceProperties.ConfigRemediationConfigurationStaticValue

-- | Full data type definition for
-- ConfigRemediationConfigurationRemediationParameterValue. See
-- 'configRemediationConfigurationRemediationParameterValue' for a more
-- convenient constructor.
data ConfigRemediationConfigurationRemediationParameterValue =
  ConfigRemediationConfigurationRemediationParameterValue
  { _configRemediationConfigurationRemediationParameterValueResourceValue :: Maybe ConfigRemediationConfigurationResourceValue
  , _configRemediationConfigurationRemediationParameterValueStaticValue :: Maybe ConfigRemediationConfigurationStaticValue
  } deriving (Show, Eq)

instance ToJSON ConfigRemediationConfigurationRemediationParameterValue where
  toJSON ConfigRemediationConfigurationRemediationParameterValue{..} =
    object $
    catMaybes
    [ fmap (("ResourceValue",) . toJSON) _configRemediationConfigurationRemediationParameterValueResourceValue
    , fmap (("StaticValue",) . toJSON) _configRemediationConfigurationRemediationParameterValueStaticValue
    ]

-- | Constructor for 'ConfigRemediationConfigurationRemediationParameterValue'
-- containing required fields as arguments.
configRemediationConfigurationRemediationParameterValue
  :: ConfigRemediationConfigurationRemediationParameterValue
configRemediationConfigurationRemediationParameterValue  =
  ConfigRemediationConfigurationRemediationParameterValue
  { _configRemediationConfigurationRemediationParameterValueResourceValue = Nothing
  , _configRemediationConfigurationRemediationParameterValueStaticValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-resourcevalue
crcrpvResourceValue :: Lens' ConfigRemediationConfigurationRemediationParameterValue (Maybe ConfigRemediationConfigurationResourceValue)
crcrpvResourceValue = lens _configRemediationConfigurationRemediationParameterValueResourceValue (\s a -> s { _configRemediationConfigurationRemediationParameterValueResourceValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-staticvalue
crcrpvStaticValue :: Lens' ConfigRemediationConfigurationRemediationParameterValue (Maybe ConfigRemediationConfigurationStaticValue)
crcrpvStaticValue = lens _configRemediationConfigurationRemediationParameterValueStaticValue (\s a -> s { _configRemediationConfigurationRemediationParameterValueStaticValue = a })
