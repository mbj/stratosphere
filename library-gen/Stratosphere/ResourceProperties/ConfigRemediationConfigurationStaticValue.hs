{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html

module Stratosphere.ResourceProperties.ConfigRemediationConfigurationStaticValue where

import Stratosphere.ResourceImports


-- | Full data type definition for ConfigRemediationConfigurationStaticValue.
-- See 'configRemediationConfigurationStaticValue' for a more convenient
-- constructor.
data ConfigRemediationConfigurationStaticValue =
  ConfigRemediationConfigurationStaticValue
  { _configRemediationConfigurationStaticValueValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ConfigRemediationConfigurationStaticValue where
  toJSON ConfigRemediationConfigurationStaticValue{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _configRemediationConfigurationStaticValueValues
    ]

-- | Constructor for 'ConfigRemediationConfigurationStaticValue' containing
-- required fields as arguments.
configRemediationConfigurationStaticValue
  :: ConfigRemediationConfigurationStaticValue
configRemediationConfigurationStaticValue  =
  ConfigRemediationConfigurationStaticValue
  { _configRemediationConfigurationStaticValueValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html#cfn-config-remediationconfiguration-staticvalue-values
crcsvValues :: Lens' ConfigRemediationConfigurationStaticValue (Maybe (ValList Text))
crcsvValues = lens _configRemediationConfigurationStaticValueValues (\s a -> s { _configRemediationConfigurationStaticValueValues = a })
