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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html>
    PropertyTypeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-attribute>
                          attribute :: (Prelude.Maybe AttributeProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-metric>
                          metric :: (Prelude.Maybe MetricProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-transform>
                          transform :: (Prelude.Maybe TransformProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-propertytype.html#cfn-iotsitewise-assetmodel-propertytype-typename>
                          typeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertyTypeProperty ::
  Value Prelude.Text -> PropertyTypeProperty
mkPropertyTypeProperty typeName
  = PropertyTypeProperty
      {haddock_workaround_ = (), typeName = typeName,
       attribute = Prelude.Nothing, metric = Prelude.Nothing,
       transform = Prelude.Nothing}
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