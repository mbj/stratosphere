module Stratosphere.FraudDetector.Detector.ModelProperty (
        ModelProperty(..), mkModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelProperty
  = ModelProperty {arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelProperty :: ModelProperty
mkModelProperty = ModelProperty {arn = Prelude.Nothing}
instance ToResourceProperties ModelProperty where
  toResourceProperties ModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.Model",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON ModelProperty where
  toJSON ModelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" ModelProperty where
  type PropertyType "Arn" ModelProperty = Value Prelude.Text
  set newValue ModelProperty {}
    = ModelProperty {arn = Prelude.pure newValue, ..}