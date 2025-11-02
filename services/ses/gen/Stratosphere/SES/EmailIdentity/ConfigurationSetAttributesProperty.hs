module Stratosphere.SES.EmailIdentity.ConfigurationSetAttributesProperty (
        ConfigurationSetAttributesProperty(..),
        mkConfigurationSetAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSetAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-configurationsetattributes.html>
    ConfigurationSetAttributesProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-emailidentity-configurationsetattributes.html#cfn-ses-emailidentity-configurationsetattributes-configurationsetname>
                                        configurationSetName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationSetAttributesProperty ::
  ConfigurationSetAttributesProperty
mkConfigurationSetAttributesProperty
  = ConfigurationSetAttributesProperty
      {haddock_workaround_ = (), configurationSetName = Prelude.Nothing}
instance ToResourceProperties ConfigurationSetAttributesProperty where
  toResourceProperties ConfigurationSetAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.ConfigurationSetAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationSetName"
                              Prelude.<$> configurationSetName])}
instance JSON.ToJSON ConfigurationSetAttributesProperty where
  toJSON ConfigurationSetAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationSetName"
                 Prelude.<$> configurationSetName]))
instance Property "ConfigurationSetName" ConfigurationSetAttributesProperty where
  type PropertyType "ConfigurationSetName" ConfigurationSetAttributesProperty = Value Prelude.Text
  set newValue ConfigurationSetAttributesProperty {..}
    = ConfigurationSetAttributesProperty
        {configurationSetName = Prelude.pure newValue, ..}