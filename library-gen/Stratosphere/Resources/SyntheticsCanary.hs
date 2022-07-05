{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html

module Stratosphere.Resources.SyntheticsCanary where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SyntheticsCanaryCode
import Stratosphere.ResourceProperties.SyntheticsCanaryRunConfig
import Stratosphere.ResourceProperties.SyntheticsCanarySchedule
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.SyntheticsCanaryVPCConfig

-- | Full data type definition for SyntheticsCanary. See 'syntheticsCanary'
-- for a more convenient constructor.
data SyntheticsCanary =
  SyntheticsCanary
  { _syntheticsCanaryArtifactS3Location :: Val Text
  , _syntheticsCanaryCode :: SyntheticsCanaryCode
  , _syntheticsCanaryExecutionRoleArn :: Val Text
  , _syntheticsCanaryFailureRetentionPeriod :: Maybe (Val Integer)
  , _syntheticsCanaryName :: Val Text
  , _syntheticsCanaryRunConfig :: Maybe SyntheticsCanaryRunConfig
  , _syntheticsCanaryRuntimeVersion :: Val Text
  , _syntheticsCanarySchedule :: SyntheticsCanarySchedule
  , _syntheticsCanaryStartCanaryAfterCreation :: Val Bool
  , _syntheticsCanarySuccessRetentionPeriod :: Maybe (Val Integer)
  , _syntheticsCanaryTags :: Maybe [Tag]
  , _syntheticsCanaryVPCConfig :: Maybe SyntheticsCanaryVPCConfig
  } deriving (Show, Eq)

instance ToResourceProperties SyntheticsCanary where
  toResourceProperties SyntheticsCanary{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Synthetics::Canary"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ArtifactS3Location",) . toJSON) _syntheticsCanaryArtifactS3Location
        , (Just . ("Code",) . toJSON) _syntheticsCanaryCode
        , (Just . ("ExecutionRoleArn",) . toJSON) _syntheticsCanaryExecutionRoleArn
        , fmap (("FailureRetentionPeriod",) . toJSON) _syntheticsCanaryFailureRetentionPeriod
        , (Just . ("Name",) . toJSON) _syntheticsCanaryName
        , fmap (("RunConfig",) . toJSON) _syntheticsCanaryRunConfig
        , (Just . ("RuntimeVersion",) . toJSON) _syntheticsCanaryRuntimeVersion
        , (Just . ("Schedule",) . toJSON) _syntheticsCanarySchedule
        , (Just . ("StartCanaryAfterCreation",) . toJSON) _syntheticsCanaryStartCanaryAfterCreation
        , fmap (("SuccessRetentionPeriod",) . toJSON) _syntheticsCanarySuccessRetentionPeriod
        , fmap (("Tags",) . toJSON) _syntheticsCanaryTags
        , fmap (("VPCConfig",) . toJSON) _syntheticsCanaryVPCConfig
        ]
    }

-- | Constructor for 'SyntheticsCanary' containing required fields as
-- arguments.
syntheticsCanary
  :: Val Text -- ^ 'scArtifactS3Location'
  -> SyntheticsCanaryCode -- ^ 'scCode'
  -> Val Text -- ^ 'scExecutionRoleArn'
  -> Val Text -- ^ 'scName'
  -> Val Text -- ^ 'scRuntimeVersion'
  -> SyntheticsCanarySchedule -- ^ 'scSchedule'
  -> Val Bool -- ^ 'scStartCanaryAfterCreation'
  -> SyntheticsCanary
syntheticsCanary artifactS3Locationarg codearg executionRoleArnarg namearg runtimeVersionarg schedulearg startCanaryAfterCreationarg =
  SyntheticsCanary
  { _syntheticsCanaryArtifactS3Location = artifactS3Locationarg
  , _syntheticsCanaryCode = codearg
  , _syntheticsCanaryExecutionRoleArn = executionRoleArnarg
  , _syntheticsCanaryFailureRetentionPeriod = Nothing
  , _syntheticsCanaryName = namearg
  , _syntheticsCanaryRunConfig = Nothing
  , _syntheticsCanaryRuntimeVersion = runtimeVersionarg
  , _syntheticsCanarySchedule = schedulearg
  , _syntheticsCanaryStartCanaryAfterCreation = startCanaryAfterCreationarg
  , _syntheticsCanarySuccessRetentionPeriod = Nothing
  , _syntheticsCanaryTags = Nothing
  , _syntheticsCanaryVPCConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-artifacts3location
scArtifactS3Location :: Lens' SyntheticsCanary (Val Text)
scArtifactS3Location = lens _syntheticsCanaryArtifactS3Location (\s a -> s { _syntheticsCanaryArtifactS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-code
scCode :: Lens' SyntheticsCanary SyntheticsCanaryCode
scCode = lens _syntheticsCanaryCode (\s a -> s { _syntheticsCanaryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-executionrolearn
scExecutionRoleArn :: Lens' SyntheticsCanary (Val Text)
scExecutionRoleArn = lens _syntheticsCanaryExecutionRoleArn (\s a -> s { _syntheticsCanaryExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-failureretentionperiod
scFailureRetentionPeriod :: Lens' SyntheticsCanary (Maybe (Val Integer))
scFailureRetentionPeriod = lens _syntheticsCanaryFailureRetentionPeriod (\s a -> s { _syntheticsCanaryFailureRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-name
scName :: Lens' SyntheticsCanary (Val Text)
scName = lens _syntheticsCanaryName (\s a -> s { _syntheticsCanaryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-runconfig
scRunConfig :: Lens' SyntheticsCanary (Maybe SyntheticsCanaryRunConfig)
scRunConfig = lens _syntheticsCanaryRunConfig (\s a -> s { _syntheticsCanaryRunConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-runtimeversion
scRuntimeVersion :: Lens' SyntheticsCanary (Val Text)
scRuntimeVersion = lens _syntheticsCanaryRuntimeVersion (\s a -> s { _syntheticsCanaryRuntimeVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-schedule
scSchedule :: Lens' SyntheticsCanary SyntheticsCanarySchedule
scSchedule = lens _syntheticsCanarySchedule (\s a -> s { _syntheticsCanarySchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-startcanaryaftercreation
scStartCanaryAfterCreation :: Lens' SyntheticsCanary (Val Bool)
scStartCanaryAfterCreation = lens _syntheticsCanaryStartCanaryAfterCreation (\s a -> s { _syntheticsCanaryStartCanaryAfterCreation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-successretentionperiod
scSuccessRetentionPeriod :: Lens' SyntheticsCanary (Maybe (Val Integer))
scSuccessRetentionPeriod = lens _syntheticsCanarySuccessRetentionPeriod (\s a -> s { _syntheticsCanarySuccessRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-tags
scTags :: Lens' SyntheticsCanary (Maybe [Tag])
scTags = lens _syntheticsCanaryTags (\s a -> s { _syntheticsCanaryTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-synthetics-canary.html#cfn-synthetics-canary-vpcconfig
scVPCConfig :: Lens' SyntheticsCanary (Maybe SyntheticsCanaryVPCConfig)
scVPCConfig = lens _syntheticsCanaryVPCConfig (\s a -> s { _syntheticsCanaryVPCConfig = a })
