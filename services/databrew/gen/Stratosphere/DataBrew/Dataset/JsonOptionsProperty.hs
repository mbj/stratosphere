module Stratosphere.DataBrew.Dataset.JsonOptionsProperty (
        JsonOptionsProperty(..), mkJsonOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-jsonoptions.html>
    JsonOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-jsonoptions.html#cfn-databrew-dataset-jsonoptions-multiline>
                         multiLine :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonOptionsProperty :: JsonOptionsProperty
mkJsonOptionsProperty
  = JsonOptionsProperty
      {haddock_workaround_ = (), multiLine = Prelude.Nothing}
instance ToResourceProperties JsonOptionsProperty where
  toResourceProperties JsonOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.JsonOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "MultiLine" Prelude.<$> multiLine])}
instance JSON.ToJSON JsonOptionsProperty where
  toJSON JsonOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "MultiLine" Prelude.<$> multiLine]))
instance Property "MultiLine" JsonOptionsProperty where
  type PropertyType "MultiLine" JsonOptionsProperty = Value Prelude.Bool
  set newValue JsonOptionsProperty {..}
    = JsonOptionsProperty {multiLine = Prelude.pure newValue, ..}