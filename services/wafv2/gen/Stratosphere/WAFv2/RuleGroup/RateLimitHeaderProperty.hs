module Stratosphere.WAFv2.RuleGroup.RateLimitHeaderProperty (
        module Exports, RateLimitHeaderProperty(..),
        mkRateLimitHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitheader.html>
    RateLimitHeaderProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitheader.html#cfn-wafv2-rulegroup-ratelimitheader-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitheader.html#cfn-wafv2-rulegroup-ratelimitheader-texttransformations>
                             textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitHeaderProperty ::
  Value Prelude.Text
  -> [TextTransformationProperty] -> RateLimitHeaderProperty
mkRateLimitHeaderProperty name textTransformations
  = RateLimitHeaderProperty
      {haddock_workaround_ = (), name = name,
       textTransformations = textTransformations}
instance ToResourceProperties RateLimitHeaderProperty where
  toResourceProperties RateLimitHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateLimitHeader",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitHeaderProperty where
  toJSON RateLimitHeaderProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "TextTransformations" JSON..= textTransformations]
instance Property "Name" RateLimitHeaderProperty where
  type PropertyType "Name" RateLimitHeaderProperty = Value Prelude.Text
  set newValue RateLimitHeaderProperty {..}
    = RateLimitHeaderProperty {name = newValue, ..}
instance Property "TextTransformations" RateLimitHeaderProperty where
  type PropertyType "TextTransformations" RateLimitHeaderProperty = [TextTransformationProperty]
  set newValue RateLimitHeaderProperty {..}
    = RateLimitHeaderProperty {textTransformations = newValue, ..}