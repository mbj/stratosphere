module Stratosphere.QuickSight.Topic.CellValueSynonymProperty (
        CellValueSynonymProperty(..), mkCellValueSynonymProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CellValueSynonymProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-cellvaluesynonym.html>
    CellValueSynonymProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-cellvaluesynonym.html#cfn-quicksight-topic-cellvaluesynonym-cellvalue>
                              cellValue :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-cellvaluesynonym.html#cfn-quicksight-topic-cellvaluesynonym-synonyms>
                              synonyms :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCellValueSynonymProperty :: CellValueSynonymProperty
mkCellValueSynonymProperty
  = CellValueSynonymProperty
      {haddock_workaround_ = (), cellValue = Prelude.Nothing,
       synonyms = Prelude.Nothing}
instance ToResourceProperties CellValueSynonymProperty where
  toResourceProperties CellValueSynonymProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.CellValueSynonym",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CellValue" Prelude.<$> cellValue,
                            (JSON..=) "Synonyms" Prelude.<$> synonyms])}
instance JSON.ToJSON CellValueSynonymProperty where
  toJSON CellValueSynonymProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CellValue" Prelude.<$> cellValue,
               (JSON..=) "Synonyms" Prelude.<$> synonyms]))
instance Property "CellValue" CellValueSynonymProperty where
  type PropertyType "CellValue" CellValueSynonymProperty = Value Prelude.Text
  set newValue CellValueSynonymProperty {..}
    = CellValueSynonymProperty {cellValue = Prelude.pure newValue, ..}
instance Property "Synonyms" CellValueSynonymProperty where
  type PropertyType "Synonyms" CellValueSynonymProperty = ValueList Prelude.Text
  set newValue CellValueSynonymProperty {..}
    = CellValueSynonymProperty {synonyms = Prelude.pure newValue, ..}