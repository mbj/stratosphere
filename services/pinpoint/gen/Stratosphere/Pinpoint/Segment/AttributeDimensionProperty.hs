module Stratosphere.Pinpoint.Segment.AttributeDimensionProperty (
        AttributeDimensionProperty(..), mkAttributeDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html>
    AttributeDimensionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-attributetype>
                                attributeType :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-attributedimension.html#cfn-pinpoint-segment-attributedimension-values>
                                values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeDimensionProperty :: AttributeDimensionProperty
mkAttributeDimensionProperty
  = AttributeDimensionProperty
      {haddock_workaround_ = (), attributeType = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties AttributeDimensionProperty where
  toResourceProperties AttributeDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.AttributeDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeType" Prelude.<$> attributeType,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON AttributeDimensionProperty where
  toJSON AttributeDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeType" Prelude.<$> attributeType,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "AttributeType" AttributeDimensionProperty where
  type PropertyType "AttributeType" AttributeDimensionProperty = Value Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty
        {attributeType = Prelude.pure newValue, ..}
instance Property "Values" AttributeDimensionProperty where
  type PropertyType "Values" AttributeDimensionProperty = ValueList Prelude.Text
  set newValue AttributeDimensionProperty {..}
    = AttributeDimensionProperty {values = Prelude.pure newValue, ..}