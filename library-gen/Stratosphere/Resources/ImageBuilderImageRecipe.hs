{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html

module Stratosphere.Resources.ImageBuilderImageRecipe where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderImageRecipeInstanceBlockDeviceMapping
import Stratosphere.ResourceProperties.ImageBuilderImageRecipeComponentConfiguration

-- | Full data type definition for ImageBuilderImageRecipe. See
-- 'imageBuilderImageRecipe' for a more convenient constructor.
data ImageBuilderImageRecipe =
  ImageBuilderImageRecipe
  { _imageBuilderImageRecipeBlockDeviceMappings :: Maybe [ImageBuilderImageRecipeInstanceBlockDeviceMapping]
  , _imageBuilderImageRecipeComponents :: [ImageBuilderImageRecipeComponentConfiguration]
  , _imageBuilderImageRecipeDescription :: Maybe (Val Text)
  , _imageBuilderImageRecipeName :: Val Text
  , _imageBuilderImageRecipeParentImage :: Val Text
  , _imageBuilderImageRecipeTags :: Maybe Object
  , _imageBuilderImageRecipeVersion :: Val Text
  , _imageBuilderImageRecipeWorkingDirectory :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderImageRecipe where
  toResourceProperties ImageBuilderImageRecipe{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::ImageRecipe"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BlockDeviceMappings",) . toJSON) _imageBuilderImageRecipeBlockDeviceMappings
        , (Just . ("Components",) . toJSON) _imageBuilderImageRecipeComponents
        , fmap (("Description",) . toJSON) _imageBuilderImageRecipeDescription
        , (Just . ("Name",) . toJSON) _imageBuilderImageRecipeName
        , (Just . ("ParentImage",) . toJSON) _imageBuilderImageRecipeParentImage
        , fmap (("Tags",) . toJSON) _imageBuilderImageRecipeTags
        , (Just . ("Version",) . toJSON) _imageBuilderImageRecipeVersion
        , fmap (("WorkingDirectory",) . toJSON) _imageBuilderImageRecipeWorkingDirectory
        ]
    }

-- | Constructor for 'ImageBuilderImageRecipe' containing required fields as
-- arguments.
imageBuilderImageRecipe
  :: [ImageBuilderImageRecipeComponentConfiguration] -- ^ 'ibirComponents'
  -> Val Text -- ^ 'ibirName'
  -> Val Text -- ^ 'ibirParentImage'
  -> Val Text -- ^ 'ibirVersion'
  -> ImageBuilderImageRecipe
imageBuilderImageRecipe componentsarg namearg parentImagearg versionarg =
  ImageBuilderImageRecipe
  { _imageBuilderImageRecipeBlockDeviceMappings = Nothing
  , _imageBuilderImageRecipeComponents = componentsarg
  , _imageBuilderImageRecipeDescription = Nothing
  , _imageBuilderImageRecipeName = namearg
  , _imageBuilderImageRecipeParentImage = parentImagearg
  , _imageBuilderImageRecipeTags = Nothing
  , _imageBuilderImageRecipeVersion = versionarg
  , _imageBuilderImageRecipeWorkingDirectory = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-blockdevicemappings
ibirBlockDeviceMappings :: Lens' ImageBuilderImageRecipe (Maybe [ImageBuilderImageRecipeInstanceBlockDeviceMapping])
ibirBlockDeviceMappings = lens _imageBuilderImageRecipeBlockDeviceMappings (\s a -> s { _imageBuilderImageRecipeBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-components
ibirComponents :: Lens' ImageBuilderImageRecipe [ImageBuilderImageRecipeComponentConfiguration]
ibirComponents = lens _imageBuilderImageRecipeComponents (\s a -> s { _imageBuilderImageRecipeComponents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-description
ibirDescription :: Lens' ImageBuilderImageRecipe (Maybe (Val Text))
ibirDescription = lens _imageBuilderImageRecipeDescription (\s a -> s { _imageBuilderImageRecipeDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-name
ibirName :: Lens' ImageBuilderImageRecipe (Val Text)
ibirName = lens _imageBuilderImageRecipeName (\s a -> s { _imageBuilderImageRecipeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-parentimage
ibirParentImage :: Lens' ImageBuilderImageRecipe (Val Text)
ibirParentImage = lens _imageBuilderImageRecipeParentImage (\s a -> s { _imageBuilderImageRecipeParentImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-tags
ibirTags :: Lens' ImageBuilderImageRecipe (Maybe Object)
ibirTags = lens _imageBuilderImageRecipeTags (\s a -> s { _imageBuilderImageRecipeTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-version
ibirVersion :: Lens' ImageBuilderImageRecipe (Val Text)
ibirVersion = lens _imageBuilderImageRecipeVersion (\s a -> s { _imageBuilderImageRecipeVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-workingdirectory
ibirWorkingDirectory :: Lens' ImageBuilderImageRecipe (Maybe (Val Text))
ibirWorkingDirectory = lens _imageBuilderImageRecipeWorkingDirectory (\s a -> s { _imageBuilderImageRecipeWorkingDirectory = a })
