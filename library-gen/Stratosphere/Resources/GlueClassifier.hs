{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html

module Stratosphere.Resources.GlueClassifier where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueClassifierCsvClassifier
import Stratosphere.ResourceProperties.GlueClassifierGrokClassifier
import Stratosphere.ResourceProperties.GlueClassifierJsonClassifier
import Stratosphere.ResourceProperties.GlueClassifierXMLClassifier

-- | Full data type definition for GlueClassifier. See 'glueClassifier' for a
-- more convenient constructor.
data GlueClassifier =
  GlueClassifier
  { _glueClassifierCsvClassifier :: Maybe GlueClassifierCsvClassifier
  , _glueClassifierGrokClassifier :: Maybe GlueClassifierGrokClassifier
  , _glueClassifierJsonClassifier :: Maybe GlueClassifierJsonClassifier
  , _glueClassifierXMLClassifier :: Maybe GlueClassifierXMLClassifier
  } deriving (Show, Eq)

instance ToResourceProperties GlueClassifier where
  toResourceProperties GlueClassifier{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Classifier"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CsvClassifier",) . toJSON) _glueClassifierCsvClassifier
        , fmap (("GrokClassifier",) . toJSON) _glueClassifierGrokClassifier
        , fmap (("JsonClassifier",) . toJSON) _glueClassifierJsonClassifier
        , fmap (("XMLClassifier",) . toJSON) _glueClassifierXMLClassifier
        ]
    }

-- | Constructor for 'GlueClassifier' containing required fields as arguments.
glueClassifier
  :: GlueClassifier
glueClassifier  =
  GlueClassifier
  { _glueClassifierCsvClassifier = Nothing
  , _glueClassifierGrokClassifier = Nothing
  , _glueClassifierJsonClassifier = Nothing
  , _glueClassifierXMLClassifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-csvclassifier
gcCsvClassifier :: Lens' GlueClassifier (Maybe GlueClassifierCsvClassifier)
gcCsvClassifier = lens _glueClassifierCsvClassifier (\s a -> s { _glueClassifierCsvClassifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-grokclassifier
gcGrokClassifier :: Lens' GlueClassifier (Maybe GlueClassifierGrokClassifier)
gcGrokClassifier = lens _glueClassifierGrokClassifier (\s a -> s { _glueClassifierGrokClassifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-jsonclassifier
gcJsonClassifier :: Lens' GlueClassifier (Maybe GlueClassifierJsonClassifier)
gcJsonClassifier = lens _glueClassifierJsonClassifier (\s a -> s { _glueClassifierJsonClassifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-xmlclassifier
gcXMLClassifier :: Lens' GlueClassifier (Maybe GlueClassifierXMLClassifier)
gcXMLClassifier = lens _glueClassifierXMLClassifier (\s a -> s { _glueClassifierXMLClassifier = a })
