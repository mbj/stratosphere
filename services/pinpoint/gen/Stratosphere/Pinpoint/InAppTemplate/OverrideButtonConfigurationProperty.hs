module Stratosphere.Pinpoint.InAppTemplate.OverrideButtonConfigurationProperty (
        OverrideButtonConfigurationProperty(..),
        mkOverrideButtonConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideButtonConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-overridebuttonconfiguration.html>
    OverrideButtonConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-overridebuttonconfiguration.html#cfn-pinpoint-inapptemplate-overridebuttonconfiguration-buttonaction>
                                         buttonAction :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-overridebuttonconfiguration.html#cfn-pinpoint-inapptemplate-overridebuttonconfiguration-link>
                                         link :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideButtonConfigurationProperty ::
  OverrideButtonConfigurationProperty
mkOverrideButtonConfigurationProperty
  = OverrideButtonConfigurationProperty
      {haddock_workaround_ = (), buttonAction = Prelude.Nothing,
       link = Prelude.Nothing}
instance ToResourceProperties OverrideButtonConfigurationProperty where
  toResourceProperties OverrideButtonConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.OverrideButtonConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ButtonAction" Prelude.<$> buttonAction,
                            (JSON..=) "Link" Prelude.<$> link])}
instance JSON.ToJSON OverrideButtonConfigurationProperty where
  toJSON OverrideButtonConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ButtonAction" Prelude.<$> buttonAction,
               (JSON..=) "Link" Prelude.<$> link]))
instance Property "ButtonAction" OverrideButtonConfigurationProperty where
  type PropertyType "ButtonAction" OverrideButtonConfigurationProperty = Value Prelude.Text
  set newValue OverrideButtonConfigurationProperty {..}
    = OverrideButtonConfigurationProperty
        {buttonAction = Prelude.pure newValue, ..}
instance Property "Link" OverrideButtonConfigurationProperty where
  type PropertyType "Link" OverrideButtonConfigurationProperty = Value Prelude.Text
  set newValue OverrideButtonConfigurationProperty {..}
    = OverrideButtonConfigurationProperty
        {link = Prelude.pure newValue, ..}