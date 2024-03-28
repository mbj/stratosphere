module Stratosphere.MSK.Replicator.AmazonMskClusterProperty (
        AmazonMskClusterProperty(..), mkAmazonMskClusterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonMskClusterProperty
  = AmazonMskClusterProperty {mskClusterArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonMskClusterProperty ::
  Value Prelude.Text -> AmazonMskClusterProperty
mkAmazonMskClusterProperty mskClusterArn
  = AmazonMskClusterProperty {mskClusterArn = mskClusterArn}
instance ToResourceProperties AmazonMskClusterProperty where
  toResourceProperties AmazonMskClusterProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.AmazonMskCluster",
         supportsTags = Prelude.False,
         properties = ["MskClusterArn" JSON..= mskClusterArn]}
instance JSON.ToJSON AmazonMskClusterProperty where
  toJSON AmazonMskClusterProperty {..}
    = JSON.object ["MskClusterArn" JSON..= mskClusterArn]
instance Property "MskClusterArn" AmazonMskClusterProperty where
  type PropertyType "MskClusterArn" AmazonMskClusterProperty = Value Prelude.Text
  set newValue AmazonMskClusterProperty {}
    = AmazonMskClusterProperty {mskClusterArn = newValue, ..}