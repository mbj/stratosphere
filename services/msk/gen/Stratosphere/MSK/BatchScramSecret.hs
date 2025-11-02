module Stratosphere.MSK.BatchScramSecret (
        BatchScramSecret(..), mkBatchScramSecret
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchScramSecret
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-batchscramsecret.html>
    BatchScramSecret {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-batchscramsecret.html#cfn-msk-batchscramsecret-clusterarn>
                      clusterArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-batchscramsecret.html#cfn-msk-batchscramsecret-secretarnlist>
                      secretArnList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchScramSecret :: Value Prelude.Text -> BatchScramSecret
mkBatchScramSecret clusterArn
  = BatchScramSecret
      {haddock_workaround_ = (), clusterArn = clusterArn,
       secretArnList = Prelude.Nothing}
instance ToResourceProperties BatchScramSecret where
  toResourceProperties BatchScramSecret {..}
    = ResourceProperties
        {awsType = "AWS::MSK::BatchScramSecret",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterArn" JSON..= clusterArn]
                           (Prelude.catMaybes
                              [(JSON..=) "SecretArnList" Prelude.<$> secretArnList]))}
instance JSON.ToJSON BatchScramSecret where
  toJSON BatchScramSecret {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterArn" JSON..= clusterArn]
              (Prelude.catMaybes
                 [(JSON..=) "SecretArnList" Prelude.<$> secretArnList])))
instance Property "ClusterArn" BatchScramSecret where
  type PropertyType "ClusterArn" BatchScramSecret = Value Prelude.Text
  set newValue BatchScramSecret {..}
    = BatchScramSecret {clusterArn = newValue, ..}
instance Property "SecretArnList" BatchScramSecret where
  type PropertyType "SecretArnList" BatchScramSecret = ValueList Prelude.Text
  set newValue BatchScramSecret {..}
    = BatchScramSecret {secretArnList = Prelude.pure newValue, ..}