{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig.html

module Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    [ Just ("Name" .= _eMRClusterBootstrapActionConfigName)
    , Just ("ScriptBootstrapAction" .= _eMRClusterBootstrapActionConfigScriptBootstrapAction)
    ]

instance FromJSON EMRClusterBootstrapActionConfig where
  parseJSON (Object obj) =
    EMRClusterBootstrapActionConfig <$>
      obj .: "Name" <*>
      obj .: "ScriptBootstrapAction"
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-name
emrcbacName :: Lens' EMRClusterBootstrapActionConfig (Val Text)
emrcbacName = lens _eMRClusterBootstrapActionConfigName (\s a -> s { _eMRClusterBootstrapActionConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-scriptbootstrapaction
emrcbacScriptBootstrapAction :: Lens' EMRClusterBootstrapActionConfig EMRClusterScriptBootstrapActionConfig
emrcbacScriptBootstrapAction = lens _eMRClusterBootstrapActionConfigScriptBootstrapAction (\s a -> s { _eMRClusterBootstrapActionConfigScriptBootstrapAction = a })
