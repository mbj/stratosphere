{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html

module Stratosphere.ResourceProperties.Tag where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for Tag. See 'tag' for a more convenient
-- constructor.
data Tag =
  Tag
  { _tagKey :: Val Text
  , _tagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON Tag where
  toJSON Tag{..} =
    object $
    catMaybes
    [ Just ("Key" .= _tagKey)
    , Just ("Value" .= _tagValue)
    ]

instance FromJSON Tag where
  parseJSON (Object obj) =
    Tag <$>
      obj .: "Key" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'Tag' containing required fields as arguments.
tag
  :: Val Text -- ^ 'tagKey'
  -> Val Text -- ^ 'tagValue'
  -> Tag
tag keyarg valuearg =
  Tag
  { _tagKey = keyarg
  , _tagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-key
tagKey :: Lens' Tag (Val Text)
tagKey = lens _tagKey (\s a -> s { _tagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html#cfn-resource-tags-value
tagValue :: Lens' Tag (Val Text)
tagValue = lens _tagValue (\s a -> s { _tagValue = a })
