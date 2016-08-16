{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The RoutingRules property is an embedded property of the Amazon S3
-- Website Configuration Property property. This property describes the
-- redirect behavior and when a redirect is applied.

module Stratosphere.ResourceProperties.S3WebsiteRoutingRules where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3WebsiteRedirectRule
import Stratosphere.ResourceProperties.S3WebsiteRoutingRuleCondition

-- | Full data type definition for S3WebsiteRoutingRules. See
-- 's3WebsiteRoutingRules' for a more convenient constructor.
data S3WebsiteRoutingRules =
  S3WebsiteRoutingRules
  { _s3WebsiteRoutingRulesRedirectRule :: S3WebsiteRedirectRule
  , _s3WebsiteRoutingRulesRoutingRuleCondition :: Maybe S3WebsiteRoutingRuleCondition
  } deriving (Show, Generic)

instance ToJSON S3WebsiteRoutingRules where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON S3WebsiteRoutingRules where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'S3WebsiteRoutingRules' containing required fields as
-- arguments.
s3WebsiteRoutingRules
  :: S3WebsiteRedirectRule -- ^ 'swrrRedirectRule'
  -> S3WebsiteRoutingRules
s3WebsiteRoutingRules redirectRulearg =
  S3WebsiteRoutingRules
  { _s3WebsiteRoutingRulesRedirectRule = redirectRulearg
  , _s3WebsiteRoutingRulesRoutingRuleCondition = Nothing
  }

-- | Redirect requests to another host, to another page, or with another
-- protocol.
swrrRedirectRule :: Lens' S3WebsiteRoutingRules S3WebsiteRedirectRule
swrrRedirectRule = lens _s3WebsiteRoutingRulesRedirectRule (\s a -> s { _s3WebsiteRoutingRulesRedirectRule = a })

-- | Rules that define when a redirect is applied.
swrrRoutingRuleCondition :: Lens' S3WebsiteRoutingRules (Maybe S3WebsiteRoutingRuleCondition)
swrrRoutingRuleCondition = lens _s3WebsiteRoutingRulesRoutingRuleCondition (\s a -> s { _s3WebsiteRoutingRulesRoutingRuleCondition = a })