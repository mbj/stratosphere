
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html

module Stratosphere.ResourceProperties.EMRClusterScriptBootstrapActionConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterScriptBootstrapActionConfig. See
-- 'emrClusterScriptBootstrapActionConfig' for a more convenient
-- constructor.
data EMRClusterScriptBootstrapActionConfig =
  EMRClusterScriptBootstrapActionConfig
  { _eMRClusterScriptBootstrapActionConfigArgs :: Maybe (ValList Text)
  , _eMRClusterScriptBootstrapActionConfigPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterScriptBootstrapActionConfig where
  toJSON EMRClusterScriptBootstrapActionConfig{..} =
    object $
    catMaybes
    [ fmap (("Args",) . toJSON) _eMRClusterScriptBootstrapActionConfigArgs
    , (Just . ("Path",) . toJSON) _eMRClusterScriptBootstrapActionConfigPath
    ]

-- | Constructor for 'EMRClusterScriptBootstrapActionConfig' containing
-- required fields as arguments.
emrClusterScriptBootstrapActionConfig
  :: Val Text -- ^ 'emrcsbacPath'
  -> EMRClusterScriptBootstrapActionConfig
emrClusterScriptBootstrapActionConfig patharg =
  EMRClusterScriptBootstrapActionConfig
  { _eMRClusterScriptBootstrapActionConfigArgs = Nothing
  , _eMRClusterScriptBootstrapActionConfigPath = patharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-args
emrcsbacArgs :: Lens' EMRClusterScriptBootstrapActionConfig (Maybe (ValList Text))
emrcsbacArgs = lens _eMRClusterScriptBootstrapActionConfigArgs (\s a -> s { _eMRClusterScriptBootstrapActionConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scriptbootstrapactionconfig.html#cfn-elasticmapreduce-cluster-scriptbootstrapactionconfig-path
emrcsbacPath :: Lens' EMRClusterScriptBootstrapActionConfig (Val Text)
emrcsbacPath = lens _eMRClusterScriptBootstrapActionConfigPath (\s a -> s { _eMRClusterScriptBootstrapActionConfigPath = a })
