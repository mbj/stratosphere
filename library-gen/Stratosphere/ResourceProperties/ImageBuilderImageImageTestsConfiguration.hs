{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagetestsconfiguration.html

module Stratosphere.ResourceProperties.ImageBuilderImageImageTestsConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ImageBuilderImageImageTestsConfiguration.
-- See 'imageBuilderImageImageTestsConfiguration' for a more convenient
-- constructor.
data ImageBuilderImageImageTestsConfiguration =
  ImageBuilderImageImageTestsConfiguration
  { _imageBuilderImageImageTestsConfigurationImageTestsEnabled :: Maybe (Val Bool)
  , _imageBuilderImageImageTestsConfigurationTimeoutMinutes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImageImageTestsConfiguration where
  toJSON ImageBuilderImageImageTestsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ImageTestsEnabled",) . toJSON) _imageBuilderImageImageTestsConfigurationImageTestsEnabled
    , fmap (("TimeoutMinutes",) . toJSON) _imageBuilderImageImageTestsConfigurationTimeoutMinutes
    ]

-- | Constructor for 'ImageBuilderImageImageTestsConfiguration' containing
-- required fields as arguments.
imageBuilderImageImageTestsConfiguration
  :: ImageBuilderImageImageTestsConfiguration
imageBuilderImageImageTestsConfiguration  =
  ImageBuilderImageImageTestsConfiguration
  { _imageBuilderImageImageTestsConfigurationImageTestsEnabled = Nothing
  , _imageBuilderImageImageTestsConfigurationTimeoutMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagetestsconfiguration.html#cfn-imagebuilder-image-imagetestsconfiguration-imagetestsenabled
ibiitcImageTestsEnabled :: Lens' ImageBuilderImageImageTestsConfiguration (Maybe (Val Bool))
ibiitcImageTestsEnabled = lens _imageBuilderImageImageTestsConfigurationImageTestsEnabled (\s a -> s { _imageBuilderImageImageTestsConfigurationImageTestsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-image-imagetestsconfiguration.html#cfn-imagebuilder-image-imagetestsconfiguration-timeoutminutes
ibiitcTimeoutMinutes :: Lens' ImageBuilderImageImageTestsConfiguration (Maybe (Val Integer))
ibiitcTimeoutMinutes = lens _imageBuilderImageImageTestsConfigurationTimeoutMinutes (\s a -> s { _imageBuilderImageImageTestsConfigurationTimeoutMinutes = a })
