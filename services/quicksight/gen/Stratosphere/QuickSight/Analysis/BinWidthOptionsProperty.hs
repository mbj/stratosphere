module Stratosphere.QuickSight.Analysis.BinWidthOptionsProperty (
        BinWidthOptionsProperty(..), mkBinWidthOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BinWidthOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-binwidthoptions.html>
    BinWidthOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-binwidthoptions.html#cfn-quicksight-analysis-binwidthoptions-bincountlimit>
                             binCountLimit :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-binwidthoptions.html#cfn-quicksight-analysis-binwidthoptions-value>
                             value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBinWidthOptionsProperty :: BinWidthOptionsProperty
mkBinWidthOptionsProperty
  = BinWidthOptionsProperty
      {haddock_workaround_ = (), binCountLimit = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties BinWidthOptionsProperty where
  toResourceProperties BinWidthOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BinWidthOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BinCountLimit" Prelude.<$> binCountLimit,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON BinWidthOptionsProperty where
  toJSON BinWidthOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BinCountLimit" Prelude.<$> binCountLimit,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "BinCountLimit" BinWidthOptionsProperty where
  type PropertyType "BinCountLimit" BinWidthOptionsProperty = Value Prelude.Double
  set newValue BinWidthOptionsProperty {..}
    = BinWidthOptionsProperty
        {binCountLimit = Prelude.pure newValue, ..}
instance Property "Value" BinWidthOptionsProperty where
  type PropertyType "Value" BinWidthOptionsProperty = Value Prelude.Double
  set newValue BinWidthOptionsProperty {..}
    = BinWidthOptionsProperty {value = Prelude.pure newValue, ..}