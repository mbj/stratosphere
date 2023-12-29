module Stratosphere.MediaLive.Channel.DvbTdtSettingsProperty (
        DvbTdtSettingsProperty(..), mkDvbTdtSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbTdtSettingsProperty
  = DvbTdtSettingsProperty {repInterval :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDvbTdtSettingsProperty :: DvbTdtSettingsProperty
mkDvbTdtSettingsProperty
  = DvbTdtSettingsProperty {repInterval = Prelude.Nothing}
instance ToResourceProperties DvbTdtSettingsProperty where
  toResourceProperties DvbTdtSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbTdtSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RepInterval" Prelude.<$> repInterval])}
instance JSON.ToJSON DvbTdtSettingsProperty where
  toJSON DvbTdtSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RepInterval" Prelude.<$> repInterval]))
instance Property "RepInterval" DvbTdtSettingsProperty where
  type PropertyType "RepInterval" DvbTdtSettingsProperty = Value Prelude.Integer
  set newValue DvbTdtSettingsProperty {}
    = DvbTdtSettingsProperty {repInterval = Prelude.pure newValue, ..}