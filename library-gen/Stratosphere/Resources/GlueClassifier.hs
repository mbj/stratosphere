{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html

module Stratosphere.Resources.GlueClassifier where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.GlueClassifierGrokClassifier

-- | Full data type definition for GlueClassifier. See 'glueClassifier' for a
-- more convenient constructor.
data GlueClassifier =
  GlueClassifier
  { _glueClassifierGrokClassifier :: Maybe GlueClassifierGrokClassifier
  } deriving (Show, Eq)

instance ToJSON GlueClassifier where
  toJSON GlueClassifier{..} =
    object $
    catMaybes
    [ fmap (("GrokClassifier",) . toJSON) _glueClassifierGrokClassifier
    ]

instance FromJSON GlueClassifier where
  parseJSON (Object obj) =
    GlueClassifier <$>
      (obj .:? "GrokClassifier")
  parseJSON _ = mempty

-- | Constructor for 'GlueClassifier' containing required fields as arguments.
glueClassifier
  :: GlueClassifier
glueClassifier  =
  GlueClassifier
  { _glueClassifierGrokClassifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-classifier.html#cfn-glue-classifier-grokclassifier
gcGrokClassifier :: Lens' GlueClassifier (Maybe GlueClassifierGrokClassifier)
gcGrokClassifier = lens _glueClassifierGrokClassifier (\s a -> s { _glueClassifierGrokClassifier = a })
