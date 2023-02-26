module Stratosphere.WAFv2.RuleGroup.CookieMatchPatternProperty (
        CookieMatchPatternProperty(..), mkCookieMatchPatternProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookieMatchPatternProperty
  = CookieMatchPatternProperty {all :: (Prelude.Maybe JSON.Object),
                                excludedCookies :: (Prelude.Maybe (ValueList Prelude.Text)),
                                includedCookies :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCookieMatchPatternProperty :: CookieMatchPatternProperty
mkCookieMatchPatternProperty
  = CookieMatchPatternProperty
      {all = Prelude.Nothing, excludedCookies = Prelude.Nothing,
       includedCookies = Prelude.Nothing}
instance ToResourceProperties CookieMatchPatternProperty where
  toResourceProperties CookieMatchPatternProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.CookieMatchPattern",
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