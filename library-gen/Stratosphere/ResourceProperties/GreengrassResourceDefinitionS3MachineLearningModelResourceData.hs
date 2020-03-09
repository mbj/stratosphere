{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionS3MachineLearningModelResourceData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDownloadOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionS3MachineLearningModelResourceData. See
-- 'greengrassResourceDefinitionS3MachineLearningModelResourceData' for a
-- more convenient constructor.
data GreengrassResourceDefinitionS3MachineLearningModelResourceData =
  GreengrassResourceDefinitionS3MachineLearningModelResourceData
  { _greengrassResourceDefinitionS3MachineLearningModelResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionS3MachineLearningModelResourceDataOwnerSetting :: Maybe GreengrassResourceDefinitionResourceDownloadOwnerSetting
  , _greengrassResourceDefinitionS3MachineLearningModelResourceDataS3Uri :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionS3MachineLearningModelResourceData where
  toJSON GreengrassResourceDefinitionS3MachineLearningModelResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionS3MachineLearningModelResourceDataDestinationPath
    , fmap (("OwnerSetting",) . toJSON) _greengrassResourceDefinitionS3MachineLearningModelResourceDataOwnerSetting
    , (Just . ("S3Uri",) . toJSON) _greengrassResourceDefinitionS3MachineLearningModelResourceDataS3Uri
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionS3MachineLearningModelResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionS3MachineLearningModelResourceData
  :: Val Text -- ^ 'grdsmlmrdDestinationPath'
  -> Val Text -- ^ 'grdsmlmrdS3Uri'
  -> GreengrassResourceDefinitionS3MachineLearningModelResourceData
greengrassResourceDefinitionS3MachineLearningModelResourceData destinationPatharg s3Uriarg =
  GreengrassResourceDefinitionS3MachineLearningModelResourceData
  { _greengrassResourceDefinitionS3MachineLearningModelResourceDataDestinationPath = destinationPatharg
  , _greengrassResourceDefinitionS3MachineLearningModelResourceDataOwnerSetting = Nothing
  , _greengrassResourceDefinitionS3MachineLearningModelResourceDataS3Uri = s3Uriarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-destinationpath
grdsmlmrdDestinationPath :: Lens' GreengrassResourceDefinitionS3MachineLearningModelResourceData (Val Text)
grdsmlmrdDestinationPath = lens _greengrassResourceDefinitionS3MachineLearningModelResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionS3MachineLearningModelResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-ownersetting
grdsmlmrdOwnerSetting :: Lens' GreengrassResourceDefinitionS3MachineLearningModelResourceData (Maybe GreengrassResourceDefinitionResourceDownloadOwnerSetting)
grdsmlmrdOwnerSetting = lens _greengrassResourceDefinitionS3MachineLearningModelResourceDataOwnerSetting (\s a -> s { _greengrassResourceDefinitionS3MachineLearningModelResourceDataOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-s3uri
grdsmlmrdS3Uri :: Lens' GreengrassResourceDefinitionS3MachineLearningModelResourceData (Val Text)
grdsmlmrdS3Uri = lens _greengrassResourceDefinitionS3MachineLearningModelResourceDataS3Uri (\s a -> s { _greengrassResourceDefinitionS3MachineLearningModelResourceDataS3Uri = a })
