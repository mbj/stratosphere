{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html

module Stratosphere.ResourceProperties.EMRStepHadoopJarStepConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRStepKeyValue

-- | Full data type definition for EMRStepHadoopJarStepConfig. See
-- | 'emrStepHadoopJarStepConfig' for a more convenient constructor.
data EMRStepHadoopJarStepConfig =
  EMRStepHadoopJarStepConfig
  { _eMRStepHadoopJarStepConfigArgs :: Maybe [Val Text]
  , _eMRStepHadoopJarStepConfigJar :: Val Text
  , _eMRStepHadoopJarStepConfigMainClass :: Maybe (Val Text)
  , _eMRStepHadoopJarStepConfigStepProperties :: Maybe [EMRStepKeyValue]
  } deriving (Show, Generic)

instance ToJSON EMRStepHadoopJarStepConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON EMRStepHadoopJarStepConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'EMRStepHadoopJarStepConfig' containing required fields
-- | as arguments.
emrStepHadoopJarStepConfig
  :: Val Text -- ^ 'emrshjscJar'
  -> EMRStepHadoopJarStepConfig
emrStepHadoopJarStepConfig jararg =
  EMRStepHadoopJarStepConfig
  { _eMRStepHadoopJarStepConfigArgs = Nothing
  , _eMRStepHadoopJarStepConfigJar = jararg
  , _eMRStepHadoopJarStepConfigMainClass = Nothing
  , _eMRStepHadoopJarStepConfigStepProperties = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-args
emrshjscArgs :: Lens' EMRStepHadoopJarStepConfig (Maybe [Val Text])
emrshjscArgs = lens _eMRStepHadoopJarStepConfigArgs (\s a -> s { _eMRStepHadoopJarStepConfigArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-jar
emrshjscJar :: Lens' EMRStepHadoopJarStepConfig (Val Text)
emrshjscJar = lens _eMRStepHadoopJarStepConfigJar (\s a -> s { _eMRStepHadoopJarStepConfigJar = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-mainclass
emrshjscMainClass :: Lens' EMRStepHadoopJarStepConfig (Maybe (Val Text))
emrshjscMainClass = lens _eMRStepHadoopJarStepConfigMainClass (\s a -> s { _eMRStepHadoopJarStepConfigMainClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-stepproperties
emrshjscStepProperties :: Lens' EMRStepHadoopJarStepConfig (Maybe [EMRStepKeyValue])
emrshjscStepProperties = lens _eMRStepHadoopJarStepConfigStepProperties (\s a -> s { _eMRStepHadoopJarStepConfigStepProperties = a })
