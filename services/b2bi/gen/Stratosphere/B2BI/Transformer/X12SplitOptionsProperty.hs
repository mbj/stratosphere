module Stratosphere.B2BI.Transformer.X12SplitOptionsProperty (
        X12SplitOptionsProperty(..), mkX12SplitOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12SplitOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12splitoptions.html>
    X12SplitOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12splitoptions.html#cfn-b2bi-transformer-x12splitoptions-splitby>
                             splitBy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12SplitOptionsProperty :: X12SplitOptionsProperty
mkX12SplitOptionsProperty
  = X12SplitOptionsProperty
      {haddock_workaround_ = (), splitBy = Prelude.Nothing}
instance ToResourceProperties X12SplitOptionsProperty where
  toResourceProperties X12SplitOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12SplitOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SplitBy" Prelude.<$> splitBy])}
instance JSON.ToJSON X12SplitOptionsProperty where
  toJSON X12SplitOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SplitBy" Prelude.<$> splitBy]))
instance Property "SplitBy" X12SplitOptionsProperty where
  type PropertyType "SplitBy" X12SplitOptionsProperty = Value Prelude.Text
  set newValue X12SplitOptionsProperty {..}
    = X12SplitOptionsProperty {splitBy = Prelude.pure newValue, ..}