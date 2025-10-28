module Stratosphere.CustomerProfiles.Integration.ZendeskSourcePropertiesProperty (
        ZendeskSourcePropertiesProperty(..),
        mkZendeskSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZendeskSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-zendesksourceproperties.html>
    ZendeskSourcePropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-zendesksourceproperties.html#cfn-customerprofiles-integration-zendesksourceproperties-object>
                                     object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZendeskSourcePropertiesProperty ::
  Value Prelude.Text -> ZendeskSourcePropertiesProperty
mkZendeskSourcePropertiesProperty object
  = ZendeskSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties ZendeskSourcePropertiesProperty where
  toResourceProperties ZendeskSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.ZendeskSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON ZendeskSourcePropertiesProperty where
  toJSON ZendeskSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" ZendeskSourcePropertiesProperty where
  type PropertyType "Object" ZendeskSourcePropertiesProperty = Value Prelude.Text
  set newValue ZendeskSourcePropertiesProperty {..}
    = ZendeskSourcePropertiesProperty {object = newValue, ..}