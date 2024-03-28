module Stratosphere.IVS.RecordingConfiguration.RenditionConfigurationProperty (
        RenditionConfigurationProperty(..),
        mkRenditionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenditionConfigurationProperty
  = RenditionConfigurationProperty {renditionSelection :: (Prelude.Maybe (Value Prelude.Text)),
                                    renditions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenditionConfigurationProperty :: RenditionConfigurationProperty
mkRenditionConfigurationProperty
  = RenditionConfigurationProperty
      {renditionSelection = Prelude.Nothing,
       renditions = Prelude.Nothing}
instance ToResourceProperties RenditionConfigurationProperty where
  toResourceProperties RenditionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.RenditionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RenditionSelection" Prelude.<$> renditionSelection,
                            (JSON..=) "Renditions" Prelude.<$> renditions])}
instance JSON.ToJSON RenditionConfigurationProperty where
  toJSON RenditionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RenditionSelection" Prelude.<$> renditionSelection,
               (JSON..=) "Renditions" Prelude.<$> renditions]))
instance Property "RenditionSelection" RenditionConfigurationProperty where
  type PropertyType "RenditionSelection" RenditionConfigurationProperty = Value Prelude.Text
  set newValue RenditionConfigurationProperty {..}
    = RenditionConfigurationProperty
        {renditionSelection = Prelude.pure newValue, ..}
instance Property "Renditions" RenditionConfigurationProperty where
  type PropertyType "Renditions" RenditionConfigurationProperty = ValueList Prelude.Text
  set newValue RenditionConfigurationProperty {..}
    = RenditionConfigurationProperty
        {renditions = Prelude.pure newValue, ..}