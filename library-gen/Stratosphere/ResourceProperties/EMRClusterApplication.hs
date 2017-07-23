{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html

module Stratosphere.ResourceProperties.EMRClusterApplication where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRClusterApplication. See
-- 'emrClusterApplication' for a more convenient constructor.
data EMRClusterApplication =
  EMRClusterApplication
  { _eMRClusterApplicationAdditionalInfo :: Maybe Object
  , _eMRClusterApplicationArgs :: Maybe (ValList Text)
  , _eMRClusterApplicationName :: Maybe (Val Text)
  , _eMRClusterApplicationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRClusterApplication where
  toJSON EMRClusterApplication{..} =
    object $
    catMaybes
    [ fmap (("AdditionalInfo",) . toJSON) _eMRClusterApplicationAdditionalInfo
    , fmap (("Args",) . toJSON) _eMRClusterApplicationArgs
    , fmap (("Name",) . toJSON) _eMRClusterApplicationName
    , fmap (("Version",) . toJSON) _eMRClusterApplicationVersion
    ]

instance FromJSON EMRClusterApplication where
  parseJSON (Object obj) =
    EMRClusterApplication <$>
      (obj .:? "AdditionalInfo") <*>
      (obj .:? "Args") <*>
      (obj .:? "Name") <*>
      (obj .:? "Version")
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterApplication' containing required fields as
-- arguments.
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
emrcaArgs :: Lens' EMRClusterApplication (Maybe (ValList Text))
emrcaArgs = lens _eMRClusterApplicationArgs (\s a -> s { _eMRClusterApplicationArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-name
emrcaName :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaName = lens _eMRClusterApplicationName (\s a -> s { _eMRClusterApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-application.html#cfn-emr-cluster-application-version
emrcaVersion :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaVersion = lens _eMRClusterApplicationVersion (\s a -> s { _eMRClusterApplicationVersion = a })
