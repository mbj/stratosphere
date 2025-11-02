module Stratosphere.WAFv2.RuleGroup.CookiesProperty (
        module Exports, CookiesProperty(..), mkCookiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CookieMatchPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookies.html>
    CookiesProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookies.html#cfn-wafv2-rulegroup-cookies-matchpattern>
                     matchPattern :: CookieMatchPatternProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookies.html#cfn-wafv2-rulegroup-cookies-matchscope>
                     matchScope :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookies.html#cfn-wafv2-rulegroup-cookies-oversizehandling>
                     oversizeHandling :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookiesProperty ::
  CookieMatchPatternProperty
  -> Value Prelude.Text -> Value Prelude.Text -> CookiesProperty
mkCookiesProperty matchPattern matchScope oversizeHandling
  = CookiesProperty
      {haddock_workaround_ = (), matchPattern = matchPattern,
       matchScope = matchScope, oversizeHandling = oversizeHandling}
instance ToResourceProperties CookiesProperty where
  toResourceProperties CookiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.Cookies",
         supportsTags = Prelude.False,
         properties = ["MatchPattern" JSON..= matchPattern,
                       "MatchScope" JSON..= matchScope,
                       "OversizeHandling" JSON..= oversizeHandling]}
instance JSON.ToJSON CookiesProperty where
  toJSON CookiesProperty {..}
    = JSON.object
        ["MatchPattern" JSON..= matchPattern,
         "MatchScope" JSON..= matchScope,
         "OversizeHandling" JSON..= oversizeHandling]
instance Property "MatchPattern" CookiesProperty where
  type PropertyType "MatchPattern" CookiesProperty = CookieMatchPatternProperty
  set newValue CookiesProperty {..}
    = CookiesProperty {matchPattern = newValue, ..}
instance Property "MatchScope" CookiesProperty where
  type PropertyType "MatchScope" CookiesProperty = Value Prelude.Text
  set newValue CookiesProperty {..}
    = CookiesProperty {matchScope = newValue, ..}
instance Property "OversizeHandling" CookiesProperty where
  type PropertyType "OversizeHandling" CookiesProperty = Value Prelude.Text
  set newValue CookiesProperty {..}
    = CookiesProperty {oversizeHandling = newValue, ..}