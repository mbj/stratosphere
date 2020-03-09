{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData.
-- See
-- 'greengrassResourceDefinitionVersionS3MachineLearningModelResourceData'
-- for a more convenient constructor.
data GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData =
  GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData
  { _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataOwnerSetting :: Maybe GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting
  , _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataS3Uri :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData where
  toJSON GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataDestinationPath
    , fmap (("OwnerSetting",) . toJSON) _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataOwnerSetting
    , (Just . ("S3Uri",) . toJSON) _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataS3Uri
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionVersionS3MachineLearningModelResourceData
  :: Val Text -- ^ 'grdvsmlmrdDestinationPath'
  -> Val Text -- ^ 'grdvsmlmrdS3Uri'
  -> GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData
greengrassResourceDefinitionVersionS3MachineLearningModelResourceData destinationPatharg s3Uriarg =
  GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData
  { _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataDestinationPath = destinationPatharg
  , _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataOwnerSetting = Nothing
  , _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataS3Uri = s3Uriarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-destinationpath
grdvsmlmrdDestinationPath :: Lens' GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData (Val Text)
grdvsmlmrdDestinationPath = lens _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-ownersetting
grdvsmlmrdOwnerSetting :: Lens' GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData (Maybe GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting)
grdvsmlmrdOwnerSetting = lens _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataOwnerSetting (\s a -> s { _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-s3uri
grdvsmlmrdS3Uri :: Lens' GreengrassResourceDefinitionVersionS3MachineLearningModelResourceData (Val Text)
grdvsmlmrdS3Uri = lens _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataS3Uri (\s a -> s { _greengrassResourceDefinitionVersionS3MachineLearningModelResourceDataS3Uri = a })
