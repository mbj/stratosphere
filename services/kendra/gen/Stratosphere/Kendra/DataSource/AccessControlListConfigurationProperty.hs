module Stratosphere.Kendra.DataSource.AccessControlListConfigurationProperty (
        AccessControlListConfigurationProperty(..),
        mkAccessControlListConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlListConfigurationProperty
  = AccessControlListConfigurationProperty {keyPath :: (Prelude.Maybe (Value Prelude.Text))}
mkAccessControlListConfigurationProperty ::
  AccessControlListConfigurationProperty
mkAccessControlListConfigurationProperty
  = AccessControlListConfigurationProperty
      {keyPath = Prelude.Nothing}
instance ToResourceProperties AccessControlListConfigurationProperty where
  toResourceProperties AccessControlListConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.AccessControlListConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KeyPath" Prelude.<$> keyPath])}
instance JSON.ToJSON AccessControlListConfigurationProperty where
  toJSON AccessControlListConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KeyPath" Prelude.<$> keyPath]))
instance Property "KeyPath" AccessControlListConfigurationProperty where
  type PropertyType "KeyPath" AccessControlListConfigurationProperty = Value Prelude.Text
  set newValue AccessControlListConfigurationProperty {}
    = AccessControlListConfigurationProperty
        {keyPath = Prelude.pure newValue, ..}