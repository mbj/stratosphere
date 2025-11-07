module Stratosphere.QuickSight.Dashboard.BinCountOptionsProperty (
        BinCountOptionsProperty(..), mkBinCountOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BinCountOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bincountoptions.html>
    BinCountOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bincountoptions.html#cfn-quicksight-dashboard-bincountoptions-value>
                             value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBinCountOptionsProperty :: BinCountOptionsProperty
mkBinCountOptionsProperty
  = BinCountOptionsProperty
      {haddock_workaround_ = (), value = Prelude.Nothing}
instance ToResourceProperties BinCountOptionsProperty where
  toResourceProperties BinCountOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BinCountOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON BinCountOptionsProperty where
  toJSON BinCountOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" BinCountOptionsProperty where
  type PropertyType "Value" BinCountOptionsProperty = Value Prelude.Double
  set newValue BinCountOptionsProperty {..}
    = BinCountOptionsProperty {value = Prelude.pure newValue, ..}