{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData.
-- See
-- 'greengrassResourceDefinitionSageMakerMachineLearningModelResourceData'
-- for a more convenient constructor.
data GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData =
  GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
  { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData where
  toJSON GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath
    , (Just . ("SageMakerJobArn",) . toJSON) _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionSageMakerMachineLearningModelResourceData
  :: Val Text -- ^ 'grdsmmlmrdDestinationPath'
  -> Val Text -- ^ 'grdsmmlmrdSageMakerJobArn'
  -> GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
greengrassResourceDefinitionSageMakerMachineLearningModelResourceData destinationPatharg sageMakerJobArnarg =
  GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
  { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath = destinationPatharg
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn = sageMakerJobArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-destinationpath
grdsmmlmrdDestinationPath :: Lens' GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData (Val Text)
grdsmmlmrdDestinationPath = lens _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
grdsmmlmrdSageMakerJobArn :: Lens' GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData (Val Text)
grdsmmlmrdSageMakerJobArn = lens _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn (\s a -> s { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn = a })
