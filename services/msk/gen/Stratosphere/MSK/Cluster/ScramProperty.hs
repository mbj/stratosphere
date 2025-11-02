module Stratosphere.MSK.Cluster.ScramProperty (
        ScramProperty(..), mkScramProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScramProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-scram.html>
    ScramProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-scram.html#cfn-msk-cluster-scram-enabled>
                   enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScramProperty :: Value Prelude.Bool -> ScramProperty
mkScramProperty enabled
  = ScramProperty {haddock_workaround_ = (), enabled = enabled}
instance ToResourceProperties ScramProperty where
  toResourceProperties ScramProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Scram", supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON ScramProperty where
  toJSON ScramProperty {..} = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" ScramProperty where
  type PropertyType "Enabled" ScramProperty = Value Prelude.Bool
  set newValue ScramProperty {..}
    = ScramProperty {enabled = newValue, ..}