
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html

module Stratosphere.ResourceProperties.ConfigRemediationConfigurationSsmControls where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ConfigRemediationConfigurationSsmControls.
-- See 'configRemediationConfigurationSsmControls' for a more convenient
-- constructor.
data ConfigRemediationConfigurationSsmControls =
  ConfigRemediationConfigurationSsmControls
  { _configRemediationConfigurationSsmControlsConcurrentExecutionRatePercentage :: Maybe (Val Integer)
  , _configRemediationConfigurationSsmControlsErrorPercentage :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ConfigRemediationConfigurationSsmControls where
  toJSON ConfigRemediationConfigurationSsmControls{..} =
    object $
    catMaybes
    [ fmap (("ConcurrentExecutionRatePercentage",) . toJSON) _configRemediationConfigurationSsmControlsConcurrentExecutionRatePercentage
    , fmap (("ErrorPercentage",) . toJSON) _configRemediationConfigurationSsmControlsErrorPercentage
    ]

-- | Constructor for 'ConfigRemediationConfigurationSsmControls' containing
-- required fields as arguments.
configRemediationConfigurationSsmControls
  :: ConfigRemediationConfigurationSsmControls
configRemediationConfigurationSsmControls  =
  ConfigRemediationConfigurationSsmControls
  { _configRemediationConfigurationSsmControlsConcurrentExecutionRatePercentage = Nothing
  , _configRemediationConfigurationSsmControlsErrorPercentage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-concurrentexecutionratepercentage
crcscConcurrentExecutionRatePercentage :: Lens' ConfigRemediationConfigurationSsmControls (Maybe (Val Integer))
crcscConcurrentExecutionRatePercentage = lens _configRemediationConfigurationSsmControlsConcurrentExecutionRatePercentage (\s a -> s { _configRemediationConfigurationSsmControlsConcurrentExecutionRatePercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-errorpercentage
crcscErrorPercentage :: Lens' ConfigRemediationConfigurationSsmControls (Maybe (Val Integer))
crcscErrorPercentage = lens _configRemediationConfigurationSsmControlsErrorPercentage (\s a -> s { _configRemediationConfigurationSsmControlsErrorPercentage = a })
