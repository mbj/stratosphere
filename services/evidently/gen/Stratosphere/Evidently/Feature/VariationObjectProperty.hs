module Stratosphere.Evidently.Feature.VariationObjectProperty (
        VariationObjectProperty(..), mkVariationObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariationObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html>
    VariationObjectProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html#cfn-evidently-feature-variationobject-booleanvalue>
                             booleanValue :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html#cfn-evidently-feature-variationobject-doublevalue>
                             doubleValue :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html#cfn-evidently-feature-variationobject-longvalue>
                             longValue :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html#cfn-evidently-feature-variationobject-stringvalue>
                             stringValue :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-feature-variationobject.html#cfn-evidently-feature-variationobject-variationname>
                             variationName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariationObjectProperty ::
  Value Prelude.Text -> VariationObjectProperty
mkVariationObjectProperty variationName
  = VariationObjectProperty
      {haddock_workaround_ = (), variationName = variationName,
       booleanValue = Prelude.Nothing, doubleValue = Prelude.Nothing,
       longValue = Prelude.Nothing, stringValue = Prelude.Nothing}
instance ToResourceProperties VariationObjectProperty where
  toResourceProperties VariationObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Feature.VariationObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VariationName" JSON..= variationName]
                           (Prelude.catMaybes
                              [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                               (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                               (JSON..=) "LongValue" Prelude.<$> longValue,
                               (JSON..=) "StringValue" Prelude.<$> stringValue]))}
instance JSON.ToJSON VariationObjectProperty where
  toJSON VariationObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VariationName" JSON..= variationName]
              (Prelude.catMaybes
                 [(JSON..=) "BooleanValue" Prelude.<$> booleanValue,
                  (JSON..=) "DoubleValue" Prelude.<$> doubleValue,
                  (JSON..=) "LongValue" Prelude.<$> longValue,
                  (JSON..=) "StringValue" Prelude.<$> stringValue])))
instance Property "BooleanValue" VariationObjectProperty where
  type PropertyType "BooleanValue" VariationObjectProperty = Value Prelude.Bool
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty
        {booleanValue = Prelude.pure newValue, ..}
instance Property "DoubleValue" VariationObjectProperty where
  type PropertyType "DoubleValue" VariationObjectProperty = Value Prelude.Double
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {doubleValue = Prelude.pure newValue, ..}
instance Property "LongValue" VariationObjectProperty where
  type PropertyType "LongValue" VariationObjectProperty = Value Prelude.Double
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {longValue = Prelude.pure newValue, ..}
instance Property "StringValue" VariationObjectProperty where
  type PropertyType "StringValue" VariationObjectProperty = Value Prelude.Text
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {stringValue = Prelude.pure newValue, ..}
instance Property "VariationName" VariationObjectProperty where
  type PropertyType "VariationName" VariationObjectProperty = Value Prelude.Text
  set newValue VariationObjectProperty {..}
    = VariationObjectProperty {variationName = newValue, ..}