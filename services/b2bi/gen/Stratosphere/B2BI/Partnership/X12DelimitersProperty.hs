module Stratosphere.B2BI.Partnership.X12DelimitersProperty (
        X12DelimitersProperty(..), mkX12DelimitersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12DelimitersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12delimiters.html>
    X12DelimitersProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12delimiters.html#cfn-b2bi-partnership-x12delimiters-componentseparator>
                           componentSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12delimiters.html#cfn-b2bi-partnership-x12delimiters-dataelementseparator>
                           dataElementSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12delimiters.html#cfn-b2bi-partnership-x12delimiters-segmentterminator>
                           segmentTerminator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12DelimitersProperty :: X12DelimitersProperty
mkX12DelimitersProperty
  = X12DelimitersProperty
      {haddock_workaround_ = (), componentSeparator = Prelude.Nothing,
       dataElementSeparator = Prelude.Nothing,
       segmentTerminator = Prelude.Nothing}
instance ToResourceProperties X12DelimitersProperty where
  toResourceProperties X12DelimitersProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12Delimiters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentSeparator" Prelude.<$> componentSeparator,
                            (JSON..=) "DataElementSeparator" Prelude.<$> dataElementSeparator,
                            (JSON..=) "SegmentTerminator" Prelude.<$> segmentTerminator])}
instance JSON.ToJSON X12DelimitersProperty where
  toJSON X12DelimitersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentSeparator" Prelude.<$> componentSeparator,
               (JSON..=) "DataElementSeparator" Prelude.<$> dataElementSeparator,
               (JSON..=) "SegmentTerminator" Prelude.<$> segmentTerminator]))
instance Property "ComponentSeparator" X12DelimitersProperty where
  type PropertyType "ComponentSeparator" X12DelimitersProperty = Value Prelude.Text
  set newValue X12DelimitersProperty {..}
    = X12DelimitersProperty
        {componentSeparator = Prelude.pure newValue, ..}
instance Property "DataElementSeparator" X12DelimitersProperty where
  type PropertyType "DataElementSeparator" X12DelimitersProperty = Value Prelude.Text
  set newValue X12DelimitersProperty {..}
    = X12DelimitersProperty
        {dataElementSeparator = Prelude.pure newValue, ..}
instance Property "SegmentTerminator" X12DelimitersProperty where
  type PropertyType "SegmentTerminator" X12DelimitersProperty = Value Prelude.Text
  set newValue X12DelimitersProperty {..}
    = X12DelimitersProperty
        {segmentTerminator = Prelude.pure newValue, ..}