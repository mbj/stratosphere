module Stratosphere.Pinpoint.Campaign.SetDimensionProperty (
        SetDimensionProperty(..), mkSetDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SetDimensionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html>
    SetDimensionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-dimensiontype>
                          dimensionType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-values>
                          values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSetDimensionProperty :: SetDimensionProperty
mkSetDimensionProperty
  = SetDimensionProperty
      {dimensionType = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties SetDimensionProperty where
  toResourceProperties SetDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.SetDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DimensionType" Prelude.<$> dimensionType,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON SetDimensionProperty where
  toJSON SetDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DimensionType" Prelude.<$> dimensionType,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "DimensionType" SetDimensionProperty where
  type PropertyType "DimensionType" SetDimensionProperty = Value Prelude.Text
  set newValue SetDimensionProperty {..}
    = SetDimensionProperty {dimensionType = Prelude.pure newValue, ..}
instance Property "Values" SetDimensionProperty where
  type PropertyType "Values" SetDimensionProperty = ValueList Prelude.Text
  set newValue SetDimensionProperty {..}
    = SetDimensionProperty {values = Prelude.pure newValue, ..}