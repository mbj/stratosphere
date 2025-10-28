module Stratosphere.Lightsail.Distribution.CookieObjectProperty (
        CookieObjectProperty(..), mkCookieObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookieObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html>
    CookieObjectProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html#cfn-lightsail-distribution-cookieobject-cookiesallowlist>
                          cookiesAllowList :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cookieobject.html#cfn-lightsail-distribution-cookieobject-option>
                          option :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookieObjectProperty :: CookieObjectProperty
mkCookieObjectProperty
  = CookieObjectProperty
      {haddock_workaround_ = (), cookiesAllowList = Prelude.Nothing,
       option = Prelude.Nothing}
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