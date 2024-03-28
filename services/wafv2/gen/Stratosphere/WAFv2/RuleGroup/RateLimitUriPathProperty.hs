module Stratosphere.WAFv2.RuleGroup.RateLimitUriPathProperty (
        module Exports, RateLimitUriPathProperty(..),
        mkRateLimitUriPathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
data RateLimitUriPathProperty
  = RateLimitUriPathProperty {textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitUriPathProperty ::
  [TextTransformationProperty] -> RateLimitUriPathProperty
mkRateLimitUriPathProperty textTransformations
  = RateLimitUriPathProperty
      {textTransformations = textTransformations}
instance ToResourceProperties RateLimitUriPathProperty where
  toResourceProperties RateLimitUriPathProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateLimitUriPath",
         supportsTags = Prelude.False,
         properties = ["TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitUriPathProperty where
  toJSON RateLimitUriPathProperty {..}
    = JSON.object ["TextTransformations" JSON..= textTransformations]
instance Property "TextTransformations" RateLimitUriPathProperty where
  type PropertyType "TextTransformations" RateLimitUriPathProperty = [TextTransformationProperty]
  set newValue RateLimitUriPathProperty {}
    = RateLimitUriPathProperty {textTransformations = newValue, ..}