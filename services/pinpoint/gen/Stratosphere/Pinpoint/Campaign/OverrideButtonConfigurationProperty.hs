module Stratosphere.Pinpoint.Campaign.OverrideButtonConfigurationProperty (
        OverrideButtonConfigurationProperty(..),
        mkOverrideButtonConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideButtonConfigurationProperty
  = OverrideButtonConfigurationProperty {buttonAction :: (Prelude.Maybe (Value Prelude.Text)),
                                         link :: (Prelude.Maybe (Value Prelude.Text))}
mkOverrideButtonConfigurationProperty ::
  OverrideButtonConfigurationProperty
mkOverrideButtonConfigurationProperty
  = OverrideButtonConfigurationProperty
      {buttonAction = Prelude.Nothing, link = Prelude.Nothing}
instance ToResourceProperties OverrideButtonConfigurationProperty where
  toResourceProperties OverrideButtonConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.OverrideButtonConfiguration",
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