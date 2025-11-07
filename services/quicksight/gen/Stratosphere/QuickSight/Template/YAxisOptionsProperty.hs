module Stratosphere.QuickSight.Template.YAxisOptionsProperty (
        YAxisOptionsProperty(..), mkYAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data YAxisOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-yaxisoptions.html>
    YAxisOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-yaxisoptions.html#cfn-quicksight-template-yaxisoptions-yaxis>
                          yAxis :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkYAxisOptionsProperty ::
  Value Prelude.Text -> YAxisOptionsProperty
mkYAxisOptionsProperty yAxis
  = YAxisOptionsProperty {haddock_workaround_ = (), yAxis = yAxis}
instance ToResourceProperties YAxisOptionsProperty where
  toResourceProperties YAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.YAxisOptions",
         supportsTags = Prelude.False, properties = ["YAxis" JSON..= yAxis]}
instance JSON.ToJSON YAxisOptionsProperty where
  toJSON YAxisOptionsProperty {..}
    = JSON.object ["YAxis" JSON..= yAxis]
instance Property "YAxis" YAxisOptionsProperty where
  type PropertyType "YAxis" YAxisOptionsProperty = Value Prelude.Text
  set newValue YAxisOptionsProperty {..}
    = YAxisOptionsProperty {yAxis = newValue, ..}