{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html

module Stratosphere.ResourceProperties.ImageBuilderImagePipelineImageTestsConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ImageBuilderImagePipelineImageTestsConfiguration. See
-- 'imageBuilderImagePipelineImageTestsConfiguration' for a more convenient
-- constructor.
data ImageBuilderImagePipelineImageTestsConfiguration =
  ImageBuilderImagePipelineImageTestsConfiguration
  { _imageBuilderImagePipelineImageTestsConfigurationImageTestsEnabled :: Maybe (Val Bool)
  , _imageBuilderImagePipelineImageTestsConfigurationTimeoutMinutes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImagePipelineImageTestsConfiguration where
  toJSON ImageBuilderImagePipelineImageTestsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ImageTestsEnabled",) . toJSON) _imageBuilderImagePipelineImageTestsConfigurationImageTestsEnabled
    , fmap (("TimeoutMinutes",) . toJSON) _imageBuilderImagePipelineImageTestsConfigurationTimeoutMinutes
    ]

-- | Constructor for 'ImageBuilderImagePipelineImageTestsConfiguration'
-- containing required fields as arguments.
imageBuilderImagePipelineImageTestsConfiguration
  :: ImageBuilderImagePipelineImageTestsConfiguration
imageBuilderImagePipelineImageTestsConfiguration  =
  ImageBuilderImagePipelineImageTestsConfiguration
  { _imageBuilderImagePipelineImageTestsConfigurationImageTestsEnabled = Nothing
  , _imageBuilderImagePipelineImageTestsConfigurationTimeoutMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration-imagetestsenabled
ibipitcImageTestsEnabled :: Lens' ImageBuilderImagePipelineImageTestsConfiguration (Maybe (Val Bool))
ibipitcImageTestsEnabled = lens _imageBuilderImagePipelineImageTestsConfigurationImageTestsEnabled (\s a -> s { _imageBuilderImagePipelineImageTestsConfigurationImageTestsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-imagetestsconfiguration.html#cfn-imagebuilder-imagepipeline-imagetestsconfiguration-timeoutminutes
ibipitcTimeoutMinutes :: Lens' ImageBuilderImagePipelineImageTestsConfiguration (Maybe (Val Integer))
ibipitcTimeoutMinutes = lens _imageBuilderImagePipelineImageTestsConfigurationTimeoutMinutes (\s a -> s { _imageBuilderImagePipelineImageTestsConfigurationTimeoutMinutes = a })
