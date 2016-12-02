{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html

module Stratosphere.ResourceProperties.Tag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Tag. See 'tag' for a more convenient
-- | constructor.
data Tag =
  Tag
  { _tagKey :: Val Text
  , _tagValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON Tag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

instance FromJSON Tag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

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
