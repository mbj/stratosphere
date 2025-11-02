module Stratosphere.Pipes.Pipe.BatchResourceRequirementProperty (
        BatchResourceRequirementProperty(..),
        mkBatchResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchResourceRequirementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchresourcerequirement.html>
    BatchResourceRequirementProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchresourcerequirement.html#cfn-pipes-pipe-batchresourcerequirement-type>
                                      type' :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-batchresourcerequirement.html#cfn-pipes-pipe-batchresourcerequirement-value>
                                      value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchResourceRequirementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BatchResourceRequirementProperty
mkBatchResourceRequirementProperty type' value
  = BatchResourceRequirementProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties BatchResourceRequirementProperty where
  toResourceProperties BatchResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.BatchResourceRequirement",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON BatchResourceRequirementProperty where
  toJSON BatchResourceRequirementProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" BatchResourceRequirementProperty where
  type PropertyType "Type" BatchResourceRequirementProperty = Value Prelude.Text
  set newValue BatchResourceRequirementProperty {..}
    = BatchResourceRequirementProperty {type' = newValue, ..}
instance Property "Value" BatchResourceRequirementProperty where
  type PropertyType "Value" BatchResourceRequirementProperty = Value Prelude.Text
  set newValue BatchResourceRequirementProperty {..}
    = BatchResourceRequirementProperty {value = newValue, ..}