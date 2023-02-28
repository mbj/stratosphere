module Stratosphere.KinesisAnalyticsV2.Application.PropertyGroupProperty (
        PropertyGroupProperty(..), mkPropertyGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyGroupProperty
  = PropertyGroupProperty {propertyGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                           propertyMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkPropertyGroupProperty :: PropertyGroupProperty
mkPropertyGroupProperty
  = PropertyGroupProperty
      {propertyGroupId = Prelude.Nothing, propertyMap = Prelude.Nothing}
instance ToResourceProperties PropertyGroupProperty where
  toResourceProperties PropertyGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.PropertyGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PropertyGroupId" Prelude.<$> propertyGroupId,
                            (JSON..=) "PropertyMap" Prelude.<$> propertyMap])}
instance JSON.ToJSON PropertyGroupProperty where
  toJSON PropertyGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PropertyGroupId" Prelude.<$> propertyGroupId,
               (JSON..=) "PropertyMap" Prelude.<$> propertyMap]))
instance Property "PropertyGroupId" PropertyGroupProperty where
  type PropertyType "PropertyGroupId" PropertyGroupProperty = Value Prelude.Text
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty
        {propertyGroupId = Prelude.pure newValue, ..}
instance Property "PropertyMap" PropertyGroupProperty where
  type PropertyType "PropertyMap" PropertyGroupProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue PropertyGroupProperty {..}
    = PropertyGroupProperty {propertyMap = Prelude.pure newValue, ..}