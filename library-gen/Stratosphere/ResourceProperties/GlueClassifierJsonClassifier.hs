{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html

module Stratosphere.ResourceProperties.GlueClassifierJsonClassifier where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueClassifierJsonClassifier. See
-- 'glueClassifierJsonClassifier' for a more convenient constructor.
data GlueClassifierJsonClassifier =
  GlueClassifierJsonClassifier
  { _glueClassifierJsonClassifierJsonPath :: Val Text
  , _glueClassifierJsonClassifierName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueClassifierJsonClassifier where
  toJSON GlueClassifierJsonClassifier{..} =
    object $
    catMaybes
    [ (Just . ("JsonPath",) . toJSON) _glueClassifierJsonClassifierJsonPath
    , fmap (("Name",) . toJSON) _glueClassifierJsonClassifierName
    ]

-- | Constructor for 'GlueClassifierJsonClassifier' containing required fields
-- as arguments.
glueClassifierJsonClassifier
  :: Val Text -- ^ 'gcjcJsonPath'
  -> GlueClassifierJsonClassifier
glueClassifierJsonClassifier jsonPatharg =
  GlueClassifierJsonClassifier
  { _glueClassifierJsonClassifierJsonPath = jsonPatharg
  , _glueClassifierJsonClassifierName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-jsonpath
gcjcJsonPath :: Lens' GlueClassifierJsonClassifier (Val Text)
gcjcJsonPath = lens _glueClassifierJsonClassifierJsonPath (\s a -> s { _glueClassifierJsonClassifierJsonPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-name
gcjcName :: Lens' GlueClassifierJsonClassifier (Maybe (Val Text))
gcjcName = lens _glueClassifierJsonClassifierName (\s a -> s { _glueClassifierJsonClassifierName = a })
