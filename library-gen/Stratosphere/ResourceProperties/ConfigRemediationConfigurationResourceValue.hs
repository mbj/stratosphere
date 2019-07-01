{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-resourcevalue.html

module Stratosphere.ResourceProperties.ConfigRemediationConfigurationResourceValue where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ConfigRemediationConfigurationResourceValue. See
-- 'configRemediationConfigurationResourceValue' for a more convenient
-- constructor.
data ConfigRemediationConfigurationResourceValue =
  ConfigRemediationConfigurationResourceValue
  { _configRemediationConfigurationResourceValueValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ConfigRemediationConfigurationResourceValue where
  toJSON ConfigRemediationConfigurationResourceValue{..} =
    object $
    catMaybes
    [ fmap (("Value",) . toJSON) _configRemediationConfigurationResourceValueValue
    ]

-- | Constructor for 'ConfigRemediationConfigurationResourceValue' containing
-- required fields as arguments.
configRemediationConfigurationResourceValue
  :: ConfigRemediationConfigurationResourceValue
configRemediationConfigurationResourceValue  =
  ConfigRemediationConfigurationResourceValue
  { _configRemediationConfigurationResourceValueValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-resourcevalue.html#cfn-config-remediationconfiguration-resourcevalue-value
crcrvValue :: Lens' ConfigRemediationConfigurationResourceValue (Maybe (Val Text))
crcrvValue = lens _configRemediationConfigurationResourceValueValue (\s a -> s { _configRemediationConfigurationResourceValueValue = a })
