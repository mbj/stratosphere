{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html

module Stratosphere.ResourceProperties.EMRClusterScriptBootstrapActionConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("Args" .=) <$> _eMRClusterScriptBootstrapActionConfigArgs
    , Just ("Path" .= _eMRClusterScriptBootstrapActionConfigPath)
    ]

instance FromJSON EMRClusterScriptBootstrapActionConfig where
  parseJSON (Object obj) =
    EMRClusterScriptBootstrapActionConfig <$>
      obj .:? "Args" <*>
      obj .: "Path"
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-scriptbootstrapaction-args
emrcsbacArgs :: Lens' EMRClusterScriptBootstrapActionConfig (Maybe (ValList Text))
emrcsbacArgs = lens _eMRClusterScriptBootstrapActionConfigArgs (\s a -> s { _eMRClusterScriptBootstrapActionConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-scriptbootstrapaction-path
emrcsbacPath :: Lens' EMRClusterScriptBootstrapActionConfig (Val Text)
emrcsbacPath = lens _eMRClusterScriptBootstrapActionConfigPath (\s a -> s { _eMRClusterScriptBootstrapActionConfigPath = a })
