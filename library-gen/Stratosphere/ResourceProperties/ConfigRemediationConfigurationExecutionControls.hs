
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html

module Stratosphere.ResourceProperties.ConfigRemediationConfigurationExecutionControls where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigRemediationConfigurationSsmControls

-- | Full data type definition for
-- ConfigRemediationConfigurationExecutionControls. See
-- 'configRemediationConfigurationExecutionControls' for a more convenient
-- constructor.
data ConfigRemediationConfigurationExecutionControls =
  ConfigRemediationConfigurationExecutionControls
  { _configRemediationConfigurationExecutionControlsSsmControls :: Maybe ConfigRemediationConfigurationSsmControls
  } deriving (Show, Eq)

instance ToJSON ConfigRemediationConfigurationExecutionControls where
  toJSON ConfigRemediationConfigurationExecutionControls{..} =
    object $
    catMaybes
    [ fmap (("SsmControls",) . toJSON) _configRemediationConfigurationExecutionControlsSsmControls
    ]

-- | Constructor for 'ConfigRemediationConfigurationExecutionControls'
-- containing required fields as arguments.
configRemediationConfigurationExecutionControls
  :: ConfigRemediationConfigurationExecutionControls
configRemediationConfigurationExecutionControls  =
  ConfigRemediationConfigurationExecutionControls
  { _configRemediationConfigurationExecutionControlsSsmControls = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html#cfn-config-remediationconfiguration-executioncontrols-ssmcontrols
crcecSsmControls :: Lens' ConfigRemediationConfigurationExecutionControls (Maybe ConfigRemediationConfigurationSsmControls)
crcecSsmControls = lens _configRemediationConfigurationExecutionControlsSsmControls (\s a -> s { _configRemediationConfigurationExecutionControlsSsmControls = a })
