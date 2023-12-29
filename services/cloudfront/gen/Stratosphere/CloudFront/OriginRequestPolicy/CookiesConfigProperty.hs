module Stratosphere.CloudFront.OriginRequestPolicy.CookiesConfigProperty (
        CookiesConfigProperty(..), mkCookiesConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookiesConfigProperty
  = CookiesConfigProperty {cookieBehavior :: (Value Prelude.Text),
                           cookies :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookiesConfigProperty ::
  Value Prelude.Text -> CookiesConfigProperty
mkCookiesConfigProperty cookieBehavior
  = CookiesConfigProperty
      {cookieBehavior = cookieBehavior, cookies = Prelude.Nothing}
instance ToResourceProperties CookiesConfigProperty where
  toResourceProperties CookiesConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginRequestPolicy.CookiesConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CookieBehavior" JSON..= cookieBehavior]
                           (Prelude.catMaybes [(JSON..=) "Cookies" Prelude.<$> cookies]))}
instance JSON.ToJSON CookiesConfigProperty where
  toJSON CookiesConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CookieBehavior" JSON..= cookieBehavior]
              (Prelude.catMaybes [(JSON..=) "Cookies" Prelude.<$> cookies])))
instance Property "CookieBehavior" CookiesConfigProperty where
  type PropertyType "CookieBehavior" CookiesConfigProperty = Value Prelude.Text
  set newValue CookiesConfigProperty {..}
    = CookiesConfigProperty {cookieBehavior = newValue, ..}
instance Property "Cookies" CookiesConfigProperty where
  type PropertyType "Cookies" CookiesConfigProperty = ValueList Prelude.Text
  set newValue CookiesConfigProperty {..}
    = CookiesConfigProperty {cookies = Prelude.pure newValue, ..}