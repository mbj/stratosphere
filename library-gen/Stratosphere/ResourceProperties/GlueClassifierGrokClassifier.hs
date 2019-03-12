{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html

module Stratosphere.ResourceProperties.GlueClassifierGrokClassifier where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueClassifierGrokClassifier. See
-- 'glueClassifierGrokClassifier' for a more convenient constructor.
data GlueClassifierGrokClassifier =
  GlueClassifierGrokClassifier
  { _glueClassifierGrokClassifierClassification :: Val Text
  , _glueClassifierGrokClassifierCustomPatterns :: Maybe (Val Text)
  , _glueClassifierGrokClassifierGrokPattern :: Val Text
  , _glueClassifierGrokClassifierName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueClassifierGrokClassifier where
  toJSON GlueClassifierGrokClassifier{..} =
    object $
    catMaybes
    [ (Just . ("Classification",) . toJSON) _glueClassifierGrokClassifierClassification
    , fmap (("CustomPatterns",) . toJSON) _glueClassifierGrokClassifierCustomPatterns
    , (Just . ("GrokPattern",) . toJSON) _glueClassifierGrokClassifierGrokPattern
    , fmap (("Name",) . toJSON) _glueClassifierGrokClassifierName
    ]

-- | Constructor for 'GlueClassifierGrokClassifier' containing required fields
-- as arguments.
glueClassifierGrokClassifier
  :: Val Text -- ^ 'gcgcClassification'
  -> Val Text -- ^ 'gcgcGrokPattern'
  -> GlueClassifierGrokClassifier
glueClassifierGrokClassifier classificationarg grokPatternarg =
  GlueClassifierGrokClassifier
  { _glueClassifierGrokClassifierClassification = classificationarg
  , _glueClassifierGrokClassifierCustomPatterns = Nothing
  , _glueClassifierGrokClassifierGrokPattern = grokPatternarg
  , _glueClassifierGrokClassifierName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-classification
gcgcClassification :: Lens' GlueClassifierGrokClassifier (Val Text)
gcgcClassification = lens _glueClassifierGrokClassifierClassification (\s a -> s { _glueClassifierGrokClassifierClassification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-custompatterns
gcgcCustomPatterns :: Lens' GlueClassifierGrokClassifier (Maybe (Val Text))
gcgcCustomPatterns = lens _glueClassifierGrokClassifierCustomPatterns (\s a -> s { _glueClassifierGrokClassifierCustomPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-grokpattern
gcgcGrokPattern :: Lens' GlueClassifierGrokClassifier (Val Text)
gcgcGrokPattern = lens _glueClassifierGrokClassifierGrokPattern (\s a -> s { _glueClassifierGrokClassifierGrokPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-grokclassifier.html#cfn-glue-classifier-grokclassifier-name
gcgcName :: Lens' GlueClassifierGrokClassifier (Maybe (Val Text))
gcgcName = lens _glueClassifierGrokClassifierName (\s a -> s { _glueClassifierGrokClassifierName = a })
