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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimituripath.html>
    RateLimitUriPathProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimituripath.html#cfn-wafv2-rulegroup-ratelimituripath-texttransformations>
                              textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitUriPathProperty ::
  [TextTransformationProperty] -> RateLimitUriPathProperty
mkRateLimitUriPathProperty textTransformations
  = RateLimitUriPathProperty
      {haddock_workaround_ = (),
       textTransformations = textTransformations}
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
  set newValue RateLimitUriPathProperty {..}
    = RateLimitUriPathProperty {textTransformations = newValue, ..}