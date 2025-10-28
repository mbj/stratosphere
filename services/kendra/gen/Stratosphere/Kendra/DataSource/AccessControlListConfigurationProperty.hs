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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-accesscontrollistconfiguration.html>
    AccessControlListConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-accesscontrollistconfiguration.html#cfn-kendra-datasource-accesscontrollistconfiguration-keypath>
                                            keyPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlListConfigurationProperty ::
  AccessControlListConfigurationProperty
mkAccessControlListConfigurationProperty
  = AccessControlListConfigurationProperty
      {haddock_workaround_ = (), keyPath = Prelude.Nothing}
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
  set newValue AccessControlListConfigurationProperty {..}
    = AccessControlListConfigurationProperty
        {keyPath = Prelude.pure newValue, ..}