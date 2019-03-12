{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html

module Stratosphere.ResourceProperties.GlueClassifierXMLClassifier where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueClassifierXMLClassifier. See
-- 'glueClassifierXMLClassifier' for a more convenient constructor.
data GlueClassifierXMLClassifier =
  GlueClassifierXMLClassifier
  { _glueClassifierXMLClassifierClassification :: Val Text
  , _glueClassifierXMLClassifierName :: Maybe (Val Text)
  , _glueClassifierXMLClassifierRowTag :: Val Text
  } deriving (Show, Eq)

instance ToJSON GlueClassifierXMLClassifier where
  toJSON GlueClassifierXMLClassifier{..} =
    object $
    catMaybes
    [ (Just . ("Classification",) . toJSON) _glueClassifierXMLClassifierClassification
    , fmap (("Name",) . toJSON) _glueClassifierXMLClassifierName
    , (Just . ("RowTag",) . toJSON) _glueClassifierXMLClassifierRowTag
    ]

-- | Constructor for 'GlueClassifierXMLClassifier' containing required fields
-- as arguments.
glueClassifierXMLClassifier
  :: Val Text -- ^ 'gcxmlcClassification'
  -> Val Text -- ^ 'gcxmlcRowTag'
  -> GlueClassifierXMLClassifier
glueClassifierXMLClassifier classificationarg rowTagarg =
  GlueClassifierXMLClassifier
  { _glueClassifierXMLClassifierClassification = classificationarg
  , _glueClassifierXMLClassifierName = Nothing
  , _glueClassifierXMLClassifierRowTag = rowTagarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-classification
gcxmlcClassification :: Lens' GlueClassifierXMLClassifier (Val Text)
gcxmlcClassification = lens _glueClassifierXMLClassifierClassification (\s a -> s { _glueClassifierXMLClassifierClassification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-name
gcxmlcName :: Lens' GlueClassifierXMLClassifier (Maybe (Val Text))
gcxmlcName = lens _glueClassifierXMLClassifierName (\s a -> s { _glueClassifierXMLClassifierName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-xmlclassifier.html#cfn-glue-classifier-xmlclassifier-rowtag
gcxmlcRowTag :: Lens' GlueClassifierXMLClassifier (Val Text)
gcxmlcRowTag = lens _glueClassifierXMLClassifierRowTag (\s a -> s { _glueClassifierXMLClassifierRowTag = a })
