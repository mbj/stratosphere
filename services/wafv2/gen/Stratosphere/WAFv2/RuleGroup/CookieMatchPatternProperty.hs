module Stratosphere.WAFv2.RuleGroup.CookieMatchPatternProperty (
        CookieMatchPatternProperty(..), mkCookieMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookieMatchPatternProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookiematchpattern.html>
    CookieMatchPatternProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookiematchpattern.html#cfn-wafv2-rulegroup-cookiematchpattern-all>
                                all :: (Prelude.Maybe JSON.Object),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookiematchpattern.html#cfn-wafv2-rulegroup-cookiematchpattern-excludedcookies>
                                excludedCookies :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-cookiematchpattern.html#cfn-wafv2-rulegroup-cookiematchpattern-includedcookies>
                                includedCookies :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookieMatchPatternProperty :: CookieMatchPatternProperty
mkCookieMatchPatternProperty
  = CookieMatchPatternProperty
      {haddock_workaround_ = (), all = Prelude.Nothing,
       excludedCookies = Prelude.Nothing,
       includedCookies = Prelude.Nothing}
instance ToResourceProperties CookieMatchPatternProperty where
  toResourceProperties CookieMatchPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CookieMatchPattern",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "All" Prelude.<$> all,
                            (JSON..=) "ExcludedCookies" Prelude.<$> excludedCookies,
                            (JSON..=) "IncludedCookies" Prelude.<$> includedCookies])}
instance JSON.ToJSON CookieMatchPatternProperty where
  toJSON CookieMatchPatternProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "All" Prelude.<$> all,
               (JSON..=) "ExcludedCookies" Prelude.<$> excludedCookies,
               (JSON..=) "IncludedCookies" Prelude.<$> includedCookies]))
instance Property "All" CookieMatchPatternProperty where
  type PropertyType "All" CookieMatchPatternProperty = JSON.Object
  set newValue CookieMatchPatternProperty {..}
    = CookieMatchPatternProperty {all = Prelude.pure newValue, ..}
instance Property "ExcludedCookies" CookieMatchPatternProperty where
  type PropertyType "ExcludedCookies" CookieMatchPatternProperty = ValueList Prelude.Text
  set newValue CookieMatchPatternProperty {..}
    = CookieMatchPatternProperty
        {excludedCookies = Prelude.pure newValue, ..}
instance Property "IncludedCookies" CookieMatchPatternProperty where
  type PropertyType "IncludedCookies" CookieMatchPatternProperty = ValueList Prelude.Text
  set newValue CookieMatchPatternProperty {..}
    = CookieMatchPatternProperty
        {includedCookies = Prelude.pure newValue, ..}