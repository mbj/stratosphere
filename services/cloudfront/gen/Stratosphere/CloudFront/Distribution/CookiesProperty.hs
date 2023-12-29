module Stratosphere.CloudFront.Distribution.CookiesProperty (
        CookiesProperty(..), mkCookiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookiesProperty
  = CookiesProperty {forward :: (Value Prelude.Text),
                     whitelistedNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookiesProperty :: Value Prelude.Text -> CookiesProperty
mkCookiesProperty forward
  = CookiesProperty
      {forward = forward, whitelistedNames = Prelude.Nothing}
instance ToResourceProperties CookiesProperty where
  toResourceProperties CookiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Cookies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Forward" JSON..= forward]
                           (Prelude.catMaybes
                              [(JSON..=) "WhitelistedNames" Prelude.<$> whitelistedNames]))}
instance JSON.ToJSON CookiesProperty where
  toJSON CookiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Forward" JSON..= forward]
              (Prelude.catMaybes
                 [(JSON..=) "WhitelistedNames" Prelude.<$> whitelistedNames])))
instance Property "Forward" CookiesProperty where
  type PropertyType "Forward" CookiesProperty = Value Prelude.Text
  set newValue CookiesProperty {..}
    = CookiesProperty {forward = newValue, ..}
instance Property "WhitelistedNames" CookiesProperty where
  type PropertyType "WhitelistedNames" CookiesProperty = ValueList Prelude.Text
  set newValue CookiesProperty {..}
    = CookiesProperty {whitelistedNames = Prelude.pure newValue, ..}