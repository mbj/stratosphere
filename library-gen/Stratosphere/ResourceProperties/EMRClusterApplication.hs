{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html

module Stratosphere.ResourceProperties.EMRClusterApplication where

import Stratosphere.ResourceImports


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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-additionalinfo
emrcaAdditionalInfo :: Lens' EMRClusterApplication (Maybe Object)
emrcaAdditionalInfo = lens _eMRClusterApplicationAdditionalInfo (\s a -> s { _eMRClusterApplicationAdditionalInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-args
emrcaArgs :: Lens' EMRClusterApplication (Maybe (ValList Text))
emrcaArgs = lens _eMRClusterApplicationArgs (\s a -> s { _eMRClusterApplicationArgs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-name
emrcaName :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaName = lens _eMRClusterApplicationName (\s a -> s { _eMRClusterApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-application.html#cfn-elasticmapreduce-cluster-application-version
emrcaVersion :: Lens' EMRClusterApplication (Maybe (Val Text))
emrcaVersion = lens _eMRClusterApplicationVersion (\s a -> s { _eMRClusterApplicationVersion = a })
