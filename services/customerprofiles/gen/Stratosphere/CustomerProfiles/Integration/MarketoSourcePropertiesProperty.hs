module Stratosphere.CustomerProfiles.Integration.MarketoSourcePropertiesProperty (
        MarketoSourcePropertiesProperty(..),
        mkMarketoSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MarketoSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-marketosourceproperties.html>
    MarketoSourcePropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-marketosourceproperties.html#cfn-customerprofiles-integration-marketosourceproperties-object>
                                     object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarketoSourcePropertiesProperty ::
  Value Prelude.Text -> MarketoSourcePropertiesProperty
mkMarketoSourcePropertiesProperty object
  = MarketoSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties MarketoSourcePropertiesProperty where
  toResourceProperties MarketoSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.MarketoSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON MarketoSourcePropertiesProperty where
  toJSON MarketoSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" MarketoSourcePropertiesProperty where
  type PropertyType "Object" MarketoSourcePropertiesProperty = Value Prelude.Text
  set newValue MarketoSourcePropertiesProperty {..}
    = MarketoSourcePropertiesProperty {object = newValue, ..}