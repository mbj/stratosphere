module Stratosphere.SageMaker.Cluster.FSxLustreConfigProperty (
        FSxLustreConfigProperty(..), mkFSxLustreConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxLustreConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-fsxlustreconfig.html>
    FSxLustreConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-fsxlustreconfig.html#cfn-sagemaker-cluster-fsxlustreconfig-perunitstoragethroughput>
                             perUnitStorageThroughput :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-fsxlustreconfig.html#cfn-sagemaker-cluster-fsxlustreconfig-sizeingib>
                             sizeInGiB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxLustreConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> FSxLustreConfigProperty
mkFSxLustreConfigProperty perUnitStorageThroughput sizeInGiB
  = FSxLustreConfigProperty
      {haddock_workaround_ = (),
       perUnitStorageThroughput = perUnitStorageThroughput,
       sizeInGiB = sizeInGiB}
instance ToResourceProperties FSxLustreConfigProperty where
  toResourceProperties FSxLustreConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.FSxLustreConfig",
         supportsTags = Prelude.False,
         properties = ["PerUnitStorageThroughput"
                         JSON..= perUnitStorageThroughput,
                       "SizeInGiB" JSON..= sizeInGiB]}
instance JSON.ToJSON FSxLustreConfigProperty where
  toJSON FSxLustreConfigProperty {..}
    = JSON.object
        ["PerUnitStorageThroughput" JSON..= perUnitStorageThroughput,
         "SizeInGiB" JSON..= sizeInGiB]
instance Property "PerUnitStorageThroughput" FSxLustreConfigProperty where
  type PropertyType "PerUnitStorageThroughput" FSxLustreConfigProperty = Value Prelude.Integer
  set newValue FSxLustreConfigProperty {..}
    = FSxLustreConfigProperty {perUnitStorageThroughput = newValue, ..}
instance Property "SizeInGiB" FSxLustreConfigProperty where
  type PropertyType "SizeInGiB" FSxLustreConfigProperty = Value Prelude.Integer
  set newValue FSxLustreConfigProperty {..}
    = FSxLustreConfigProperty {sizeInGiB = newValue, ..}