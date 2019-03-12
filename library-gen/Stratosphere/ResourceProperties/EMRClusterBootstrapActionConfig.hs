{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html

module Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterScriptBootstrapActionConfig

-- | Full data type definition for EMRClusterBootstrapActionConfig. See
-- 'emrClusterBootstrapActionConfig' for a more convenient constructor.
data EMRClusterBootstrapActionConfig =
  EMRClusterBootstrapActionConfig
  { _eMRClusterBootstrapActionConfigName :: Val Text
  , _eMRClusterBootstrapActionConfigScriptBootstrapAction :: EMRClusterScriptBootstrapActionConfig
  } deriving (Show, Eq)

instance ToJSON EMRClusterBootstrapActionConfig where
  toJSON EMRClusterBootstrapActionConfig{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _eMRClusterBootstrapActionConfigName
    , (Just . ("ScriptBootstrapAction",) . toJSON) _eMRClusterBootstrapActionConfigScriptBootstrapAction
    ]

-- | Constructor for 'EMRClusterBootstrapActionConfig' containing required
-- fields as arguments.
emrClusterBootstrapActionConfig
  :: Val Text -- ^ 'emrcbacName'
  -> EMRClusterScriptBootstrapActionConfig -- ^ 'emrcbacScriptBootstrapAction'
  -> EMRClusterBootstrapActionConfig
emrClusterBootstrapActionConfig namearg scriptBootstrapActionarg =
  EMRClusterBootstrapActionConfig
  { _eMRClusterBootstrapActionConfigName = namearg
  , _eMRClusterBootstrapActionConfigScriptBootstrapAction = scriptBootstrapActionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-name
emrcbacName :: Lens' EMRClusterBootstrapActionConfig (Val Text)
emrcbacName = lens _eMRClusterBootstrapActionConfigName (\s a -> s { _eMRClusterBootstrapActionConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-bootstrapactionconfig.html#cfn-elasticmapreduce-cluster-bootstrapactionconfig-scriptbootstrapaction
emrcbacScriptBootstrapAction :: Lens' EMRClusterBootstrapActionConfig EMRClusterScriptBootstrapActionConfig
emrcbacScriptBootstrapAction = lens _eMRClusterBootstrapActionConfigScriptBootstrapAction (\s a -> s { _eMRClusterBootstrapActionConfigScriptBootstrapAction = a })
