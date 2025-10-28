module Stratosphere.ElasticLoadBalancing.LoadBalancer.ConnectionSettingsProperty (
        ConnectionSettingsProperty(..), mkConnectionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html>
    ConnectionSettingsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout>
                                idleTimeout :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionSettingsProperty ::
  Value Prelude.Integer -> ConnectionSettingsProperty
mkConnectionSettingsProperty idleTimeout
  = ConnectionSettingsProperty
      {haddock_workaround_ = (), idleTimeout = idleTimeout}
instance ToResourceProperties ConnectionSettingsProperty where
  toResourceProperties ConnectionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings",
         supportsTags = Prelude.False,
         properties = ["IdleTimeout" JSON..= idleTimeout]}
instance JSON.ToJSON ConnectionSettingsProperty where
  toJSON ConnectionSettingsProperty {..}
    = JSON.object ["IdleTimeout" JSON..= idleTimeout]
instance Property "IdleTimeout" ConnectionSettingsProperty where
  type PropertyType "IdleTimeout" ConnectionSettingsProperty = Value Prelude.Integer
  set newValue ConnectionSettingsProperty {..}
    = ConnectionSettingsProperty {idleTimeout = newValue, ..}