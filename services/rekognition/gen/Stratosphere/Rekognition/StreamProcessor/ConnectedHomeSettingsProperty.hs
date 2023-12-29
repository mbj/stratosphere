module Stratosphere.Rekognition.StreamProcessor.ConnectedHomeSettingsProperty (
        ConnectedHomeSettingsProperty(..), mkConnectedHomeSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectedHomeSettingsProperty
  = ConnectedHomeSettingsProperty {labels :: (ValueList Prelude.Text),
                                   minConfidence :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectedHomeSettingsProperty ::
  ValueList Prelude.Text -> ConnectedHomeSettingsProperty
mkConnectedHomeSettingsProperty labels
  = ConnectedHomeSettingsProperty
      {labels = labels, minConfidence = Prelude.Nothing}
instance ToResourceProperties ConnectedHomeSettingsProperty where
  toResourceProperties ConnectedHomeSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.ConnectedHomeSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Labels" JSON..= labels]
                           (Prelude.catMaybes
                              [(JSON..=) "MinConfidence" Prelude.<$> minConfidence]))}
instance JSON.ToJSON ConnectedHomeSettingsProperty where
  toJSON ConnectedHomeSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Labels" JSON..= labels]
              (Prelude.catMaybes
                 [(JSON..=) "MinConfidence" Prelude.<$> minConfidence])))
instance Property "Labels" ConnectedHomeSettingsProperty where
  type PropertyType "Labels" ConnectedHomeSettingsProperty = ValueList Prelude.Text
  set newValue ConnectedHomeSettingsProperty {..}
    = ConnectedHomeSettingsProperty {labels = newValue, ..}
instance Property "MinConfidence" ConnectedHomeSettingsProperty where
  type PropertyType "MinConfidence" ConnectedHomeSettingsProperty = Value Prelude.Double
  set newValue ConnectedHomeSettingsProperty {..}
    = ConnectedHomeSettingsProperty
        {minConfidence = Prelude.pure newValue, ..}