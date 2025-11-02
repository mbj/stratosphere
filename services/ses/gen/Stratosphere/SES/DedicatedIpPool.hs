module Stratosphere.SES.DedicatedIpPool (
        DedicatedIpPool(..), mkDedicatedIpPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DedicatedIpPool
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-dedicatedippool.html>
    DedicatedIpPool {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-dedicatedippool.html#cfn-ses-dedicatedippool-poolname>
                     poolName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-dedicatedippool.html#cfn-ses-dedicatedippool-scalingmode>
                     scalingMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDedicatedIpPool :: DedicatedIpPool
mkDedicatedIpPool
  = DedicatedIpPool
      {haddock_workaround_ = (), poolName = Prelude.Nothing,
       scalingMode = Prelude.Nothing}
instance ToResourceProperties DedicatedIpPool where
  toResourceProperties DedicatedIpPool {..}
    = ResourceProperties
        {awsType = "AWS::SES::DedicatedIpPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PoolName" Prelude.<$> poolName,
                            (JSON..=) "ScalingMode" Prelude.<$> scalingMode])}
instance JSON.ToJSON DedicatedIpPool where
  toJSON DedicatedIpPool {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PoolName" Prelude.<$> poolName,
               (JSON..=) "ScalingMode" Prelude.<$> scalingMode]))
instance Property "PoolName" DedicatedIpPool where
  type PropertyType "PoolName" DedicatedIpPool = Value Prelude.Text
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {poolName = Prelude.pure newValue, ..}
instance Property "ScalingMode" DedicatedIpPool where
  type PropertyType "ScalingMode" DedicatedIpPool = Value Prelude.Text
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {scalingMode = Prelude.pure newValue, ..}