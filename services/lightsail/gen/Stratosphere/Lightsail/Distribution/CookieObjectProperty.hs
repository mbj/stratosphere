module Stratosphere.Lightsail.Distribution.CookieObjectProperty (
        CookieObjectProperty(..), mkCookieObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookieObjectProperty
  = CookieObjectProperty {cookiesAllowList :: (Prelude.Maybe (ValueList Prelude.Text)),
                          option :: (Prelude.Maybe (Value Prelude.Text))}
mkCookieObjectProperty :: CookieObjectProperty
mkCookieObjectProperty
  = CookieObjectProperty
      {cookiesAllowList = Prelude.Nothing, option = Prelude.Nothing}
instance ToResourceProperties CookieObjectProperty where
  toResourceProperties CookieObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CookieObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CookiesAllowList" Prelude.<$> cookiesAllowList,
                            (JSON..=) "Option" Prelude.<$> option])}
instance JSON.ToJSON CookieObjectProperty where
  toJSON CookieObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CookiesAllowList" Prelude.<$> cookiesAllowList,
               (JSON..=) "Option" Prelude.<$> option]))
instance Property "CookiesAllowList" CookieObjectProperty where
  type PropertyType "CookiesAllowList" CookieObjectProperty = ValueList Prelude.Text
  set newValue CookieObjectProperty {..}
    = CookieObjectProperty
        {cookiesAllowList = Prelude.pure newValue, ..}
instance Property "Option" CookieObjectProperty where
  type PropertyType "Option" CookieObjectProperty = Value Prelude.Text
  set newValue CookieObjectProperty {..}
    = CookieObjectProperty {option = Prelude.pure newValue, ..}