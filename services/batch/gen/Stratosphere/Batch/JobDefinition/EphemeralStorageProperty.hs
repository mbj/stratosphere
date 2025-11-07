module Stratosphere.Batch.JobDefinition.EphemeralStorageProperty (
        EphemeralStorageProperty(..), mkEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EphemeralStorageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ephemeralstorage.html>
    EphemeralStorageProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ephemeralstorage.html#cfn-batch-jobdefinition-ephemeralstorage-sizeingib>
                              sizeInGiB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEphemeralStorageProperty ::
  Value Prelude.Integer -> EphemeralStorageProperty
mkEphemeralStorageProperty sizeInGiB
  = EphemeralStorageProperty
      {haddock_workaround_ = (), sizeInGiB = sizeInGiB}
instance ToResourceProperties EphemeralStorageProperty where
  toResourceProperties EphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EphemeralStorage",
         supportsTags = Prelude.False,
         properties = ["SizeInGiB" JSON..= sizeInGiB]}
instance JSON.ToJSON EphemeralStorageProperty where
  toJSON EphemeralStorageProperty {..}
    = JSON.object ["SizeInGiB" JSON..= sizeInGiB]
instance Property "SizeInGiB" EphemeralStorageProperty where
  type PropertyType "SizeInGiB" EphemeralStorageProperty = Value Prelude.Integer
  set newValue EphemeralStorageProperty {..}
    = EphemeralStorageProperty {sizeInGiB = newValue, ..}