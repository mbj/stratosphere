{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | A pair of name and value. Used in ELB Attributes

module Stratosphere.ResourceProperties.NameValuePair where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for NameValuePair. See 'nameValuePair' for a
-- more convenient constructor.
data NameValuePair =
  NameValuePair
  { _nameValuePairName :: Val Text
  , _nameValuePairValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON NameValuePair where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON NameValuePair where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'NameValuePair' containing required fields as arguments.
nameValuePair
  :: Val Text -- ^ 'nvpName'
  -> Val Text -- ^ 'nvpValue'
  -> NameValuePair
nameValuePair namearg valuearg =
  NameValuePair
  { _nameValuePairName = namearg
  , _nameValuePairValue = valuearg
  }

-- | The name of an attribute
nvpName :: Lens' NameValuePair (Val Text)
nvpName = lens _nameValuePairName (\s a -> s { _nameValuePairName = a })

-- | The value of an attribute
nvpValue :: Lens' NameValuePair (Val Text)
nvpValue = lens _nameValuePairValue (\s a -> s { _nameValuePairValue = a })