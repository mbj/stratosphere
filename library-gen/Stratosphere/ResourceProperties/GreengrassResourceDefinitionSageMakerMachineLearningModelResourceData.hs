{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDownloadOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData.
-- See
-- 'greengrassResourceDefinitionSageMakerMachineLearningModelResourceData'
-- for a more convenient constructor.
data GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData =
  GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData
  { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataOwnerSetting :: Maybe GreengrassResourceDefinitionResourceDownloadOwnerSetting
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData where
  toJSON GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath
    , fmap (("OwnerSetting",) . toJSON) _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataOwnerSetting
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
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataOwnerSetting = Nothing
  , _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn = sageMakerJobArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-destinationpath
grdsmmlmrdDestinationPath :: Lens' GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData (Val Text)
grdsmmlmrdDestinationPath = lens _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-ownersetting
grdsmmlmrdOwnerSetting :: Lens' GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData (Maybe GreengrassResourceDefinitionResourceDownloadOwnerSetting)
grdsmmlmrdOwnerSetting = lens _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataOwnerSetting (\s a -> s { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
grdsmmlmrdSageMakerJobArn :: Lens' GreengrassResourceDefinitionSageMakerMachineLearningModelResourceData (Val Text)
grdsmmlmrdSageMakerJobArn = lens _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn (\s a -> s { _greengrassResourceDefinitionSageMakerMachineLearningModelResourceDataSageMakerJobArn = a })
