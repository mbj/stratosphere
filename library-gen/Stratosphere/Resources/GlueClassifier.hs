{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html

module Stratosphere.Resources.GlueClassifier where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueClassifierGrokClassifier
import Stratosphere.ResourceProperties.GlueClassifierJsonClassifier
import Stratosphere.ResourceProperties.GlueClassifierXMLClassifier

-- | Full data type definition for GlueClassifier. See 'glueClassifier' for a
-- more convenient constructor.
data GlueClassifier =
  GlueClassifier
  { _glueClassifierGrokClassifier :: Maybe GlueClassifierGrokClassifier
  , _glueClassifierJsonClassifier :: Maybe GlueClassifierJsonClassifier
  , _glueClassifierXMLClassifier :: Maybe GlueClassifierXMLClassifier
  } deriving (Show, Eq)

instance ToJSON GlueClassifier where
  toJSON GlueClassifier{..} =
    object $
    catMaybes
    [ fmap (("GrokClassifier",) . toJSON) _glueClassifierGrokClassifier
    , fmap (("JsonClassifier",) . toJSON) _glueClassifierJsonClassifier
    , fmap (("XMLClassifier",) . toJSON) _glueClassifierXMLClassifier
    ]

instance FromJSON GlueClassifier where
  parseJSON (Object obj) =
    GlueClassifier <$>
      (obj .:? "GrokClassifier") <*>
      (obj .:? "JsonClassifier") <*>
      (obj .:? "XMLClassifier")
  parseJSON _ = mempty

-- | Constructor for 'GlueClassifier' containing required fields as arguments.
glueClassifier
  :: GlueClassifier
glueClassifier  =
  GlueClassifier
  { _glueClassifierGrokClassifier = Nothing
  , _glueClassifierJsonClassifier = Nothing
  , _glueClassifierXMLClassifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-grokclassifier
gcGrokClassifier :: Lens' GlueClassifier (Maybe GlueClassifierGrokClassifier)
gcGrokClassifier = lens _glueClassifierGrokClassifier (\s a -> s { _glueClassifierGrokClassifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-jsonclassifier
gcJsonClassifier :: Lens' GlueClassifier (Maybe GlueClassifierJsonClassifier)
gcJsonClassifier = lens _glueClassifierJsonClassifier (\s a -> s { _glueClassifierJsonClassifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-xmlclassifier
gcXMLClassifier :: Lens' GlueClassifier (Maybe GlueClassifierXMLClassifier)
gcXMLClassifier = lens _glueClassifierXMLClassifier (\s a -> s { _glueClassifierXMLClassifier = a })
