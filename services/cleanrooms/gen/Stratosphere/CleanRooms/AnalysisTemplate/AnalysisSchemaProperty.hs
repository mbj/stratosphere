module Stratosphere.CleanRooms.AnalysisTemplate.AnalysisSchemaProperty (
        AnalysisSchemaProperty(..), mkAnalysisSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisSchemaProperty
  = AnalysisSchemaProperty {referencedTables :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSchemaProperty ::
  ValueList Prelude.Text -> AnalysisSchemaProperty
mkAnalysisSchemaProperty referencedTables
  = AnalysisSchemaProperty {referencedTables = referencedTables}
instance ToResourceProperties AnalysisSchemaProperty where
  toResourceProperties AnalysisSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::AnalysisTemplate.AnalysisSchema",
         supportsTags = Prelude.False,
         properties = ["ReferencedTables" JSON..= referencedTables]}
instance JSON.ToJSON AnalysisSchemaProperty where
  toJSON AnalysisSchemaProperty {..}
    = JSON.object ["ReferencedTables" JSON..= referencedTables]
instance Property "ReferencedTables" AnalysisSchemaProperty where
  type PropertyType "ReferencedTables" AnalysisSchemaProperty = ValueList Prelude.Text
  set newValue AnalysisSchemaProperty {}
    = AnalysisSchemaProperty {referencedTables = newValue, ..}