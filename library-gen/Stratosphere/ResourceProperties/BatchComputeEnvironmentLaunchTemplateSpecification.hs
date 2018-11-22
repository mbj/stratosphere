{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html

module Stratosphere.ResourceProperties.BatchComputeEnvironmentLaunchTemplateSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- BatchComputeEnvironmentLaunchTemplateSpecification. See
-- 'batchComputeEnvironmentLaunchTemplateSpecification' for a more
-- convenient constructor.
data BatchComputeEnvironmentLaunchTemplateSpecification =
  BatchComputeEnvironmentLaunchTemplateSpecification
  { _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateId :: Maybe (Val Text)
  , _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateName :: Maybe (Val Text)
  , _batchComputeEnvironmentLaunchTemplateSpecificationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchComputeEnvironmentLaunchTemplateSpecification where
  toJSON BatchComputeEnvironmentLaunchTemplateSpecification{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateName
    , fmap (("Version",) . toJSON) _batchComputeEnvironmentLaunchTemplateSpecificationVersion
    ]

instance FromJSON BatchComputeEnvironmentLaunchTemplateSpecification where
  parseJSON (Object obj) =
    BatchComputeEnvironmentLaunchTemplateSpecification <$>
      (obj .:? "LaunchTemplateId") <*>
      (obj .:? "LaunchTemplateName") <*>
      (obj .:? "Version")
  parseJSON _ = mempty

-- | Constructor for 'BatchComputeEnvironmentLaunchTemplateSpecification'
-- containing required fields as arguments.
batchComputeEnvironmentLaunchTemplateSpecification
  :: BatchComputeEnvironmentLaunchTemplateSpecification
batchComputeEnvironmentLaunchTemplateSpecification  =
  BatchComputeEnvironmentLaunchTemplateSpecification
  { _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateId = Nothing
  , _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateName = Nothing
  , _batchComputeEnvironmentLaunchTemplateSpecificationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplateid
bceltsLaunchTemplateId :: Lens' BatchComputeEnvironmentLaunchTemplateSpecification (Maybe (Val Text))
bceltsLaunchTemplateId = lens _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateId (\s a -> s { _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplatename
bceltsLaunchTemplateName :: Lens' BatchComputeEnvironmentLaunchTemplateSpecification (Maybe (Val Text))
bceltsLaunchTemplateName = lens _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateName (\s a -> s { _batchComputeEnvironmentLaunchTemplateSpecificationLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-version
bceltsVersion :: Lens' BatchComputeEnvironmentLaunchTemplateSpecification (Maybe (Val Text))
bceltsVersion = lens _batchComputeEnvironmentLaunchTemplateSpecificationVersion (\s a -> s { _batchComputeEnvironmentLaunchTemplateSpecificationVersion = a })
