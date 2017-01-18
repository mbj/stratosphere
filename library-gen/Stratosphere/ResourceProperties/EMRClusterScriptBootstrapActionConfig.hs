{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html

module Stratosphere.ResourceProperties.EMRClusterScriptBootstrapActionConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRClusterScriptBootstrapActionConfig. See
-- | 'emrClusterScriptBootstrapActionConfig' for a more convenient
-- | constructor.
data EMRClusterScriptBootstrapActionConfig =
  EMRClusterScriptBootstrapActionConfig
  { _eMRClusterScriptBootstrapActionConfigArgs :: Maybe [Val Text]
  , _eMRClusterScriptBootstrapActionConfigPath :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EMRClusterScriptBootstrapActionConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON EMRClusterScriptBootstrapActionConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'EMRClusterScriptBootstrapActionConfig' containing
-- | required fields as arguments.
emrClusterScriptBootstrapActionConfig
  :: Val Text -- ^ 'emrcsbacPath'
  -> EMRClusterScriptBootstrapActionConfig
emrClusterScriptBootstrapActionConfig patharg =
  EMRClusterScriptBootstrapActionConfig
  { _eMRClusterScriptBootstrapActionConfigArgs = Nothing
  , _eMRClusterScriptBootstrapActionConfigPath = patharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-scriptbootstrapaction-args
emrcsbacArgs :: Lens' EMRClusterScriptBootstrapActionConfig (Maybe [Val Text])
emrcsbacArgs = lens _eMRClusterScriptBootstrapActionConfigArgs (\s a -> s { _eMRClusterScriptBootstrapActionConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-bootstrapactionconfig-scriptbootstrapactionconfig.html#cfn-emr-cluster-bootstrapactionconfig-scriptbootstrapaction-path
emrcsbacPath :: Lens' EMRClusterScriptBootstrapActionConfig (Val Text)
emrcsbacPath = lens _eMRClusterScriptBootstrapActionConfigPath (\s a -> s { _eMRClusterScriptBootstrapActionConfigPath = a })
