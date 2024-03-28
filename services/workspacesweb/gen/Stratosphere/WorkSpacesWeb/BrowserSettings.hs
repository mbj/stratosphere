module Stratosphere.WorkSpacesWeb.BrowserSettings (
        BrowserSettings(..), mkBrowserSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data BrowserSettings
  = BrowserSettings {additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     browserPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                     customerManagedKey :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBrowserSettings :: BrowserSettings
mkBrowserSettings
  = BrowserSettings
      {additionalEncryptionContext = Prelude.Nothing,
       browserPolicy = Prelude.Nothing,
       customerManagedKey = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties BrowserSettings where
  toResourceProperties BrowserSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::BrowserSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalEncryptionContext"
                              Prelude.<$> additionalEncryptionContext,
                            (JSON..=) "BrowserPolicy" Prelude.<$> browserPolicy,
                            (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON BrowserSettings where
  toJSON BrowserSettings {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalEncryptionContext"
                 Prelude.<$> additionalEncryptionContext,
               (JSON..=) "BrowserPolicy" Prelude.<$> browserPolicy,
               (JSON..=) "CustomerManagedKey" Prelude.<$> customerManagedKey,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AdditionalEncryptionContext" BrowserSettings where
  type PropertyType "AdditionalEncryptionContext" BrowserSettings = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BrowserSettings {..}
    = BrowserSettings
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "BrowserPolicy" BrowserSettings where
  type PropertyType "BrowserPolicy" BrowserSettings = Value Prelude.Text
  set newValue BrowserSettings {..}
    = BrowserSettings {browserPolicy = Prelude.pure newValue, ..}
instance Property "CustomerManagedKey" BrowserSettings where
  type PropertyType "CustomerManagedKey" BrowserSettings = Value Prelude.Text
  set newValue BrowserSettings {..}
    = BrowserSettings {customerManagedKey = Prelude.pure newValue, ..}
instance Property "Tags" BrowserSettings where
  type PropertyType "Tags" BrowserSettings = [Tag]
  set newValue BrowserSettings {..}
    = BrowserSettings {tags = Prelude.pure newValue, ..}