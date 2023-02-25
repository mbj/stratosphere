module Stratosphere.Batch.SchedulingPolicy.ShareAttributesProperty (
        ShareAttributesProperty(..), mkShareAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShareAttributesProperty
  = ShareAttributesProperty {shareIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                             weightFactor :: (Prelude.Maybe (Value Prelude.Double))}
mkShareAttributesProperty :: ShareAttributesProperty
mkShareAttributesProperty
  = ShareAttributesProperty
      {shareIdentifier = Prelude.Nothing, weightFactor = Prelude.Nothing}
instance ToResourceProperties ShareAttributesProperty where
  toResourceProperties ShareAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::SchedulingPolicy.ShareAttributes",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ShareIdentifier" Prelude.<$> shareIdentifier,
                            (JSON..=) "WeightFactor" Prelude.<$> weightFactor])}
instance JSON.ToJSON ShareAttributesProperty where
  toJSON ShareAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ShareIdentifier" Prelude.<$> shareIdentifier,
               (JSON..=) "WeightFactor" Prelude.<$> weightFactor]))
instance Property "ShareIdentifier" ShareAttributesProperty where
  type PropertyType "ShareIdentifier" ShareAttributesProperty = Value Prelude.Text
  set newValue ShareAttributesProperty {..}
    = ShareAttributesProperty
        {shareIdentifier = Prelude.pure newValue, ..}
instance Property "WeightFactor" ShareAttributesProperty where
  type PropertyType "WeightFactor" ShareAttributesProperty = Value Prelude.Double
  set newValue ShareAttributesProperty {..}
    = ShareAttributesProperty
        {weightFactor = Prelude.pure newValue, ..}