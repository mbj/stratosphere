module Stratosphere.QuickSight.Template.QueryExecutionOptionsProperty (
        QueryExecutionOptionsProperty(..), mkQueryExecutionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryExecutionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-queryexecutionoptions.html>
    QueryExecutionOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-queryexecutionoptions.html#cfn-quicksight-template-queryexecutionoptions-queryexecutionmode>
                                   queryExecutionMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryExecutionOptionsProperty :: QueryExecutionOptionsProperty
mkQueryExecutionOptionsProperty
  = QueryExecutionOptionsProperty
      {haddock_workaround_ = (), queryExecutionMode = Prelude.Nothing}
instance ToResourceProperties QueryExecutionOptionsProperty where
  toResourceProperties QueryExecutionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.QueryExecutionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "QueryExecutionMode" Prelude.<$> queryExecutionMode])}
instance JSON.ToJSON QueryExecutionOptionsProperty where
  toJSON QueryExecutionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "QueryExecutionMode" Prelude.<$> queryExecutionMode]))
instance Property "QueryExecutionMode" QueryExecutionOptionsProperty where
  type PropertyType "QueryExecutionMode" QueryExecutionOptionsProperty = Value Prelude.Text
  set newValue QueryExecutionOptionsProperty {..}
    = QueryExecutionOptionsProperty
        {queryExecutionMode = Prelude.pure newValue, ..}