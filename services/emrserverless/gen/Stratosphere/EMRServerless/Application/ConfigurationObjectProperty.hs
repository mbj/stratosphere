module Stratosphere.EMRServerless.Application.ConfigurationObjectProperty (
        ConfigurationObjectProperty(..), mkConfigurationObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html>
    ConfigurationObjectProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-classification>
                                 classification :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-configurations>
                                 configurations :: (Prelude.Maybe [ConfigurationObjectProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-configurationobject.html#cfn-emrserverless-application-configurationobject-properties>
                                 properties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationObjectProperty ::
  Value Prelude.Text -> ConfigurationObjectProperty
mkConfigurationObjectProperty classification
  = ConfigurationObjectProperty
      {haddock_workaround_ = (), classification = classification,
       configurations = Prelude.Nothing, properties = Prelude.Nothing}
instance ToResourceProperties ConfigurationObjectProperty where
  toResourceProperties ConfigurationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.ConfigurationObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Classification" JSON..= classification]
                           (Prelude.catMaybes
                              [(JSON..=) "Configurations" Prelude.<$> configurations,
                               (JSON..=) "Properties" Prelude.<$> properties]))}
instance JSON.ToJSON ConfigurationObjectProperty where
  toJSON ConfigurationObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Classification" JSON..= classification]
              (Prelude.catMaybes
                 [(JSON..=) "Configurations" Prelude.<$> configurations,
                  (JSON..=) "Properties" Prelude.<$> properties])))
instance Property "Classification" ConfigurationObjectProperty where
  type PropertyType "Classification" ConfigurationObjectProperty = Value Prelude.Text
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty {classification = newValue, ..}
instance Property "Configurations" ConfigurationObjectProperty where
  type PropertyType "Configurations" ConfigurationObjectProperty = [ConfigurationObjectProperty]
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {configurations = Prelude.pure newValue, ..}
instance Property "Properties" ConfigurationObjectProperty where
  type PropertyType "Properties" ConfigurationObjectProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConfigurationObjectProperty {..}
    = ConfigurationObjectProperty
        {properties = Prelude.pure newValue, ..}