module Stratosphere.QuickSight.Analysis.SmallMultiplesAxisPropertiesProperty (
        SmallMultiplesAxisPropertiesProperty(..),
        mkSmallMultiplesAxisPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmallMultiplesAxisPropertiesProperty
  = SmallMultiplesAxisPropertiesProperty {placement :: (Prelude.Maybe (Value Prelude.Text)),
                                          scale :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmallMultiplesAxisPropertiesProperty ::
  SmallMultiplesAxisPropertiesProperty
mkSmallMultiplesAxisPropertiesProperty
  = SmallMultiplesAxisPropertiesProperty
      {placement = Prelude.Nothing, scale = Prelude.Nothing}
instance ToResourceProperties SmallMultiplesAxisPropertiesProperty where
  toResourceProperties SmallMultiplesAxisPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SmallMultiplesAxisProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "Scale" Prelude.<$> scale])}
instance JSON.ToJSON SmallMultiplesAxisPropertiesProperty where
  toJSON SmallMultiplesAxisPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "Scale" Prelude.<$> scale]))
instance Property "Placement" SmallMultiplesAxisPropertiesProperty where
  type PropertyType "Placement" SmallMultiplesAxisPropertiesProperty = Value Prelude.Text
  set newValue SmallMultiplesAxisPropertiesProperty {..}
    = SmallMultiplesAxisPropertiesProperty
        {placement = Prelude.pure newValue, ..}
instance Property "Scale" SmallMultiplesAxisPropertiesProperty where
  type PropertyType "Scale" SmallMultiplesAxisPropertiesProperty = Value Prelude.Text
  set newValue SmallMultiplesAxisPropertiesProperty {..}
    = SmallMultiplesAxisPropertiesProperty
        {scale = Prelude.pure newValue, ..}