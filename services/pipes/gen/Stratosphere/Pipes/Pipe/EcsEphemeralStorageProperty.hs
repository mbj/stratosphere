module Stratosphere.Pipes.Pipe.EcsEphemeralStorageProperty (
        EcsEphemeralStorageProperty(..), mkEcsEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEphemeralStorageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsephemeralstorage.html>
    EcsEphemeralStorageProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsephemeralstorage.html#cfn-pipes-pipe-ecsephemeralstorage-sizeingib>
                                 sizeInGiB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsEphemeralStorageProperty ::
  Value Prelude.Integer -> EcsEphemeralStorageProperty
mkEcsEphemeralStorageProperty sizeInGiB
  = EcsEphemeralStorageProperty
      {haddock_workaround_ = (), sizeInGiB = sizeInGiB}
instance ToResourceProperties EcsEphemeralStorageProperty where
  toResourceProperties EcsEphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEphemeralStorage",
         supportsTags = Prelude.False,
         properties = ["SizeInGiB" JSON..= sizeInGiB]}
instance JSON.ToJSON EcsEphemeralStorageProperty where
  toJSON EcsEphemeralStorageProperty {..}
    = JSON.object ["SizeInGiB" JSON..= sizeInGiB]
instance Property "SizeInGiB" EcsEphemeralStorageProperty where
  type PropertyType "SizeInGiB" EcsEphemeralStorageProperty = Value Prelude.Integer
  set newValue EcsEphemeralStorageProperty {..}
    = EcsEphemeralStorageProperty {sizeInGiB = newValue, ..}