module Stratosphere.ServiceCatalog.Portfolio (
        Portfolio(..), mkPortfolio
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Portfolio
  = Portfolio {acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               displayName :: (Value Prelude.Text),
               providerName :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkPortfolio ::
  Value Prelude.Text -> Value Prelude.Text -> Portfolio
mkPortfolio displayName providerName
  = Portfolio
      {displayName = displayName, providerName = providerName,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Portfolio where
  toResourceProperties Portfolio {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::Portfolio",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName,
                            "ProviderName" JSON..= providerName]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Portfolio where
  toJSON Portfolio {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName,
               "ProviderName" JSON..= providerName]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AcceptLanguage" Portfolio where
  type PropertyType "AcceptLanguage" Portfolio = Value Prelude.Text
  set newValue Portfolio {..}
    = Portfolio {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" Portfolio where
  type PropertyType "Description" Portfolio = Value Prelude.Text
  set newValue Portfolio {..}
    = Portfolio {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Portfolio where
  type PropertyType "DisplayName" Portfolio = Value Prelude.Text
  set newValue Portfolio {..}
    = Portfolio {displayName = newValue, ..}
instance Property "ProviderName" Portfolio where
  type PropertyType "ProviderName" Portfolio = Value Prelude.Text
  set newValue Portfolio {..}
    = Portfolio {providerName = newValue, ..}
instance Property "Tags" Portfolio where
  type PropertyType "Tags" Portfolio = [Tag]
  set newValue Portfolio {..}
    = Portfolio {tags = Prelude.pure newValue, ..}