module Stratosphere.WAFv2.RuleGroup.RateLimitCookieProperty (
        module Exports, RateLimitCookieProperty(..),
        mkRateLimitCookieProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitCookieProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitcookie.html>
    RateLimitCookieProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitcookie.html#cfn-wafv2-rulegroup-ratelimitcookie-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitcookie.html#cfn-wafv2-rulegroup-ratelimitcookie-texttransformations>
                             textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitCookieProperty ::
  Value Prelude.Text
  -> [TextTransformationProperty] -> RateLimitCookieProperty
mkRateLimitCookieProperty name textTransformations
  = RateLimitCookieProperty
      {haddock_workaround_ = (), name = name,
       textTransformations = textTransformations}
instance ToResourceProperties RateLimitCookieProperty where
  toResourceProperties RateLimitCookieProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateLimitCookie",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitCookieProperty where
  toJSON RateLimitCookieProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "TextTransformations" JSON..= textTransformations]
instance Property "Name" RateLimitCookieProperty where
  type PropertyType "Name" RateLimitCookieProperty = Value Prelude.Text
  set newValue RateLimitCookieProperty {..}
    = RateLimitCookieProperty {name = newValue, ..}
instance Property "TextTransformations" RateLimitCookieProperty where
  type PropertyType "TextTransformations" RateLimitCookieProperty = [TextTransformationProperty]
  set newValue RateLimitCookieProperty {..}
    = RateLimitCookieProperty {textTransformations = newValue, ..}