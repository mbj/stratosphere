module Stratosphere.IoTSiteWise.AssetModel.PropertyTypeProperty (
        module Exports, PropertyTypeProperty(..), mkPropertyTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.AttributeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.MetricProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTSiteWise.AssetModel.TransformProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PropertyTypeProperty
  = PropertyTypeProperty {attribute :: (Prelude.Maybe AttributeProperty),
                          metric :: (Prelude.Maybe MetricProperty),
                          transform :: (Prelude.Maybe TransformProperty),
                          typeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyTypeProperty ::
  Value Prelude.Text -> PropertyTypeProperty
mkPropertyTypeProperty typeName
  = PropertyTypeProperty
      {typeName = typeName, attribute = Prelude.Nothing,
       metric = Prelude.Nothing, transform = Prelude.Nothing}
instance ToResourceProperties PropertyTypeProperty where
  toResourceProperties PropertyTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::AssetModel.PropertyType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TypeName" JSON..= typeName]
                           (Prelude.catMaybes
                              [(JSON..=) "Attribute" Prelude.<$> attribute,
                               (JSON..=) "Metric" Prelude.<$> metric,
                               (JSON..=) "Transform" Prelude.<$> transform]))}
instance JSON.ToJSON PropertyTypeProperty where
  toJSON PropertyTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TypeName" JSON..= typeName]
              (Prelude.catMaybes
                 [(JSON..=) "Attribute" Prelude.<$> attribute,
                  (JSON..=) "Metric" Prelude.<$> metric,
                  (JSON..=) "Transform" Prelude.<$> transform])))
instance Property "Attribute" PropertyTypeProperty where
  type PropertyType "Attribute" PropertyTypeProperty = AttributeProperty
  set newValue PropertyTypeProperty {..}
    = PropertyTypeProperty {attribute = Prelude.pure newValue, ..}
instance Property "Metric" PropertyTypeProperty where
  type PropertyType "Metric" PropertyTypeProperty = MetricProperty
  set newValue PropertyTypeProperty {..}
    = PropertyTypeProperty {metric = Prelude.pure newValue, ..}
instance Property "Transform" PropertyTypeProperty where
  type PropertyType "Transform" PropertyTypeProperty = TransformProperty
  set newValue PropertyTypeProperty {..}
    = PropertyTypeProperty {transform = Prelude.pure newValue, ..}
instance Property "TypeName" PropertyTypeProperty where
  type PropertyType "TypeName" PropertyTypeProperty = Value Prelude.Text
  set newValue PropertyTypeProperty {..}
    = PropertyTypeProperty {typeName = newValue, ..}