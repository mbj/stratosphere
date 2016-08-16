{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The RoutingRuleCondition property is an embedded property of the Amazon
-- S3 Website Configuration Routing Rules Property that describes a condition
-- that must be met for a redirect to apply.

module Stratosphere.ResourceProperties.S3WebsiteRoutingRuleCondition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3WebsiteRoutingRuleCondition. See
-- 's3WebsiteRoutingRuleCondition' for a more convenient constructor.
data S3WebsiteRoutingRuleCondition =
  S3WebsiteRoutingRuleCondition
  { _s3WebsiteRoutingRuleConditionHttpErrorCodeReturnedEquals :: Maybe (Val Text)
  , _s3WebsiteRoutingRuleConditionKeyPrefixEquals :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3WebsiteRoutingRuleCondition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON S3WebsiteRoutingRuleCondition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'S3WebsiteRoutingRuleCondition' containing required
-- fields as arguments.
s3WebsiteRoutingRuleCondition
  :: S3WebsiteRoutingRuleCondition
s3WebsiteRoutingRuleCondition  =
  S3WebsiteRoutingRuleCondition
  { _s3WebsiteRoutingRuleConditionHttpErrorCodeReturnedEquals = Nothing
  , _s3WebsiteRoutingRuleConditionKeyPrefixEquals = Nothing
  }

-- | Applies this redirect if the error code equals this value in the event of
-- an error.
swrrcHttpErrorCodeReturnedEquals :: Lens' S3WebsiteRoutingRuleCondition (Maybe (Val Text))
swrrcHttpErrorCodeReturnedEquals = lens _s3WebsiteRoutingRuleConditionHttpErrorCodeReturnedEquals (\s a -> s { _s3WebsiteRoutingRuleConditionHttpErrorCodeReturnedEquals = a })

-- | The object key name prefix when the redirect is applied. For example, to
-- redirect requests for ExamplePage.html, set the key prefix to
-- ExamplePage.html. To redirect request for all pages with the prefix docs/,
-- set the key prefix to docs/, which identifies all objects in the docs/
-- folder.
swrrcKeyPrefixEquals :: Lens' S3WebsiteRoutingRuleCondition (Maybe (Val Text))
swrrcKeyPrefixEquals = lens _s3WebsiteRoutingRuleConditionKeyPrefixEquals (\s a -> s { _s3WebsiteRoutingRuleConditionKeyPrefixEquals = a })