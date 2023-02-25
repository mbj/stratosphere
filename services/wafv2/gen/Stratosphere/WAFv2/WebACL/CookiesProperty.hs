module Stratosphere.WAFv2.WebACL.CookiesProperty (
        module Exports, CookiesProperty(..), mkCookiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.CookieMatchPatternProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookiesProperty
  = CookiesProperty {matchPattern :: CookieMatchPatternProperty,
                     matchScope :: (Value Prelude.Text),
                     oversizeHandling :: (Value Prelude.Text)}
mkCookiesProperty ::
  CookieMatchPatternProperty
  -> Value Prelude.Text -> Value Prelude.Text -> CookiesProperty
mkCookiesProperty matchPattern matchScope oversizeHandling
  = CookiesProperty
      {matchPattern = matchPattern, matchScope = matchScope,
       oversizeHandling = oversizeHandling}
instance ToResourceProperties CookiesProperty where
  toResourceProperties CookiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.Cookies",
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