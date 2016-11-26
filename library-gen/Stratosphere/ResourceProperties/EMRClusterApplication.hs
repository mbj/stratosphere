{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html

module Stratosphere.ResourceProperties.EMRClusterApplication where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRClusterApplication. See
-- | 'emrClusterApplication' for a more convenient constructor.
data EMRClusterApplication =
  EMRClusterApplication
  { _eMRClusterApplicationAdditionalInfo :: Maybe Object
  , _eMRClusterApplicationArgs :: Maybe [Val Text]
  , _eMRClusterApplicationName :: Maybe (Val Text)
  , _eMRClusterApplicationVersion :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EMRClusterApplication where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON EMRClusterApplication where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'EMRClusterApplication' containing required fields as
-- | arguments.
emrClusterApplication
  :: EMRClusterApplication
emrClusterApplication  =
  EMRClusterApplication
  { _eMRClusterApplicationAdditionalInfo = Nothing
  , _eMRClusterApplicationArgs = Nothing
  , _eMRClusterApplicationName = Nothing
  , _eMRClusterApplicationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-additionalinfo
emrcaAdditionalInfo :: Lens' EMRClusterApplication (Maybe Object)
emrcaAdditionalInfo = lens _eMRClusterApplicationAdditionalInfo (\s a -> s { _eMRClusterApplicationAdditionalInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-args
emrcaArgs :: Lens' EMRClusterApplication (Maybe [Val Text])
emrcaArgs = lens _eMRClusterApplicationArgs (\s a -> s { _eMRClusterApplicationArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-name
emrcaName :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaName = lens _eMRClusterApplicationName (\s a -> s { _eMRClusterApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-version
emrcaVersion :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaVersion = lens _eMRClusterApplicationVersion (\s a -> s { _eMRClusterApplicationVersion = a })
