module Stratosphere.MSK.BatchScramSecret (
        BatchScramSecret(..), mkBatchScramSecret
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchScramSecret
  = BatchScramSecret {clusterArn :: (Value Prelude.Text),
                      secretArnList :: (Prelude.Maybe (ValueList Prelude.Text))}
mkBatchScramSecret :: Value Prelude.Text -> BatchScramSecret
mkBatchScramSecret clusterArn
  = BatchScramSecret
      {clusterArn = clusterArn, secretArnList = Prelude.Nothing}
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