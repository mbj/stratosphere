module Stratosphere.QuickSight.Analysis.ArcConfigurationProperty (
        ArcConfigurationProperty(..), mkArcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcConfigurationProperty
  = ArcConfigurationProperty {arcAngle :: (Prelude.Maybe (Value Prelude.Double)),
                              arcThickness :: (Prelude.Maybe (Value Prelude.Text))}
mkArcConfigurationProperty :: ArcConfigurationProperty
mkArcConfigurationProperty
  = ArcConfigurationProperty
      {arcAngle = Prelude.Nothing, arcThickness = Prelude.Nothing}
instance ToResourceProperties ArcConfigurationProperty where
  toResourceProperties ArcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ArcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArcAngle" Prelude.<$> arcAngle,
                            (JSON..=) "ArcThickness" Prelude.<$> arcThickness])}
instance JSON.ToJSON ArcConfigurationProperty where
  toJSON ArcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArcAngle" Prelude.<$> arcAngle,
               (JSON..=) "ArcThickness" Prelude.<$> arcThickness]))
instance Property "ArcAngle" ArcConfigurationProperty where
  type PropertyType "ArcAngle" ArcConfigurationProperty = Value Prelude.Double
  set newValue ArcConfigurationProperty {..}
    = ArcConfigurationProperty {arcAngle = Prelude.pure newValue, ..}
instance Property "ArcThickness" ArcConfigurationProperty where
  type PropertyType "ArcThickness" ArcConfigurationProperty = Value Prelude.Text
  set newValue ArcConfigurationProperty {..}
    = ArcConfigurationProperty
        {arcThickness = Prelude.pure newValue, ..}