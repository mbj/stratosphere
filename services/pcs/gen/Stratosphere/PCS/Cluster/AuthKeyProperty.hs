module Stratosphere.PCS.Cluster.AuthKeyProperty (
        AuthKeyProperty(..), mkAuthKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-authkey.html>
    AuthKeyProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-authkey.html#cfn-pcs-cluster-authkey-secretarn>
                     secretArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-authkey.html#cfn-pcs-cluster-authkey-secretversion>
                     secretVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthKeyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AuthKeyProperty
mkAuthKeyProperty secretArn secretVersion
  = AuthKeyProperty
      {haddock_workaround_ = (), secretArn = secretArn,
       secretVersion = secretVersion}
instance ToResourceProperties AuthKeyProperty where
  toResourceProperties AuthKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.AuthKey",
         supportsTags = Prelude.False,
         properties = ["SecretArn" JSON..= secretArn,
                       "SecretVersion" JSON..= secretVersion]}
instance JSON.ToJSON AuthKeyProperty where
  toJSON AuthKeyProperty {..}
    = JSON.object
        ["SecretArn" JSON..= secretArn,
         "SecretVersion" JSON..= secretVersion]
instance Property "SecretArn" AuthKeyProperty where
  type PropertyType "SecretArn" AuthKeyProperty = Value Prelude.Text
  set newValue AuthKeyProperty {..}
    = AuthKeyProperty {secretArn = newValue, ..}
instance Property "SecretVersion" AuthKeyProperty where
  type PropertyType "SecretVersion" AuthKeyProperty = Value Prelude.Text
  set newValue AuthKeyProperty {..}
    = AuthKeyProperty {secretVersion = newValue, ..}