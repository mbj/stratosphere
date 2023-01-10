
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-componentconfiguration.html

module Stratosphere.ResourceProperties.ImageBuilderImageRecipeComponentConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ImageBuilderImageRecipeComponentConfiguration. See
-- 'imageBuilderImageRecipeComponentConfiguration' for a more convenient
-- constructor.
data ImageBuilderImageRecipeComponentConfiguration =
  ImageBuilderImageRecipeComponentConfiguration
  { _imageBuilderImageRecipeComponentConfigurationComponentArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImageRecipeComponentConfiguration where
  toJSON ImageBuilderImageRecipeComponentConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ComponentArn",) . toJSON) _imageBuilderImageRecipeComponentConfigurationComponentArn
    ]

-- | Constructor for 'ImageBuilderImageRecipeComponentConfiguration'
-- containing required fields as arguments.
imageBuilderImageRecipeComponentConfiguration
  :: ImageBuilderImageRecipeComponentConfiguration
imageBuilderImageRecipeComponentConfiguration  =
  ImageBuilderImageRecipeComponentConfiguration
  { _imageBuilderImageRecipeComponentConfigurationComponentArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-componentconfiguration.html#cfn-imagebuilder-imagerecipe-componentconfiguration-componentarn
ibirccComponentArn :: Lens' ImageBuilderImageRecipeComponentConfiguration (Maybe (Val Text))
ibirccComponentArn = lens _imageBuilderImageRecipeComponentConfigurationComponentArn (\s a -> s { _imageBuilderImageRecipeComponentConfigurationComponentArn = a })
